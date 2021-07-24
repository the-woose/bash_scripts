#!/bin/bash
select option in Nexus4-XL VM2 VM3 VM4 list-available-VM-names; do

    case $option in
        Nexus4-XL)
            #cd ~/Android/Sdk/tools/
            nohup ~/Android/Sdk/tools/emulator -avd Pixel_4_XL_API_30 >/dev/null 2>&1 &
            exit
            ;;
        VM2)
            nohup ~/Android/Sdk/tools/emulator -avd "<your second VM name here>" >/dev/null 2>&1 &
            exit
            ;;
        VM3)
            nohup ~/Android/Sdk/tools/emulator -avd Nexus_4_API_30 >/dev/null 2>&1 &
            exit
            ;;
        VM4)
            nohup ~/Android/Sdk/tools/emulator -avd Pixel_4_XL_API_30 >/dev/null 2>&1 &
            exit
            ;;
        list-available-VM-names)
            ~/Android/Sdk/tools/emulator -list-avds
            ;;
        *)
            echo "Invalid option $REPLY"
            exit
            ;;
    esac
done
