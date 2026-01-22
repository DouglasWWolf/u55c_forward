#==============================================================================
#  Date       Vers  Who  Description
# -----------------------------------------------------------------------------
#  22-Jan-26  1.0.0 DWW  Initial creation
#==============================================================================
PACKET_FWD_API_VERSION=1.0.0


#==============================================================================
# AXI register definitions
#==============================================================================
PACKET_FWD_BASE=0x1000
       REG_ETH_STATUS=$((PACKET_FWD_BASE + 16*4))
            REG_RESET=$((PACKET_FWD_BASE + 18*4))

#==============================================================================
# This reads a PCI register and displays its value in decimal
#==============================================================================
read_reg()
{
    pcireg -dec $1
}
#==============================================================================



#==============================================================================
# reads a 64-bit register
#==============================================================================
read_reg64()
{
    pcireg -wide -dec $1
}
#==============================================================================


#==============================================================================
# Displays the version of the RTL bitstream
#==============================================================================
get_rtl_version()
{
    local major=$(read_reg 0)
    local minor=$(read_reg 4)
    local revis=$(read_reg 8)
    echo ${major}.${minor}.${revis}
}
#==============================================================================

#==============================================================================
# Displays 1 if bitstream is loaded, otherwise displays "0"
#==============================================================================
is_bitstream_loaded()
{
    reg=$(read_reg 0x14)
    test $reg -ne $((0xFFFFFFFF)) && echo "1" || echo "0"
}
#==============================================================================



#==============================================================================
# This resets all of the packet-producing and receiving logic
#==============================================================================
reset()
{
    pcireg $REG_RESET 1
    while [ $(read_reg $REG_RESET) -ne 0 ]; do
        sleep .01
    done

    # Ensure everything has had time to come out of reset 
    sleep .01
}
#==============================================================================



#==============================================================================
# Displays the PCS-lock status of an Ethernet port
#
# $1 = 0, 1 or blank (blank = both)
#
# Displays "1" if the selected Ethernet port has PCS-lock, else displays 0
#==============================================================================
get_pcs_status()
{
    local eth0_pcs_lock=0
    local eth1_pcs_lock=0

    # Fetch the ethernet status bits
    local status=$(read_reg $REG_ETH_STATUS)

    # Fetch the PCS lock status of the two ports
    test $((status & 0x00001)) -ne 0 && eth0_pcs_lock=1
    test $((status & 0x10000)) -ne 0 && eth1_pcs_lock=1

    # Display the requested status
    if [ "$1" == "0" ]; then
        echo $eth0_pcs_lock
    elif [ "$1" == "1" ]; then
        echo $eth1_pcs_lock
    else
        echo $((eth0_pcs_lock & eth1_pcs_lock))
    fi
}
#==============================================================================





