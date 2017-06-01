# XVC_PCIe_KCU105_PR
ChipScope / ILA using XVC (XIlinx Virtual Cable Over PCIe) with a PR (Partial Reconfiguration) design Example.

To build run make (Makefile)

- Design updated to Vivado 2017.1 release.
- Linux drivers are in the xvc_pcie.zip
- Build and install Linux drivers:
    - unzip xvc_pcie.zip
    - cd driver_v**
    - edit xvc_pcie_user_config.h to add edit Bar Index Bar Address etc.
    - sudo make
    - insmod xil_pcie_driver.ko
    - dmesg (to ensure Driver is installed ) or lspci -vvv sould show the xvc_xilix driver.
- Build and install  
    - cd xvcserver
    - make
    - cd bin
    - xvc_pcie -s TCP::3121 (starts the xvc server. You can use any port number but ensure it is not blocked by the firewall)
- Running HW debug session from remote Vivado
    - Open VIvado HW manager on any system on the network with acces to the host running xvc_pcie hwserver above
    - From TCL consol :
        - open hw_server
        - connect_hw_target -xvc_url <ip_address>:3121
        - update the ltx file for the session 

