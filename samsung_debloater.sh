#Second version with more specificity
echo "Uninstall Bixby?"
read -p "[y/n]: " bfv
if [ $bfv = "y" ] || [ $bfv = "Y" ]; then
 adb devices
 adb uninstall --user 0 com.samsung.android.bixby.wakeup
 adb uninstall --user 0 com.samsung.android.app.spage
 adb uninstall --user 0 com.samsung.android.app.routines
 adb uninstall --user 0 com.samsung.android.bixby.service
 adb uninstall --user 0 com.samsung.android.visionintelligence
 adb uninstall --user 0 com.samsung.android.bixby.agent
 adb uninstall --user 0 com.samsung.android.bixby.agent.dummy
 adb uninstall --user 0 com.samsung.android.bixbyvision.framework
fi
sleep 1
echo "Uninstall Facebook?"
read -p "[y/n]: " fbv
if [ $fbv = "y" ] || [ $fbv = "Y" ]; then
 adb uninstall --user 0 com.facebook.katana
 adb uninstall --user 0 com.facebook.system
 adb uninstall --user 0 com.facebook.appmanager
 adb uninstall --user 0 com.facebook.services
 adb uninstall --user 0 com.samsung.android.hmt.vrsvc
 adb uninstall --user 0 com.samsung.android.app.vrsetupwizardstub
 adb uninstall --user 0 com.samsung.android.hmt.vrshell
 adb uninstall --user 0 com.google.vr.vrcore
 echo "Removed Facebook"
else
 echo "Did not remove Facebook"
fi
echo "Uninstall Samsung Pay?"
read -p "[y/n]: " spsp
if [ $spsp = "y" ] || [ $spsp = "Y" ]; then
 adb uninstall --user 0 com.samsung.android.spay
 echo "Removed Samsung Pay"
else
 echo "Did not remove Samsung Pay"
fi
echo "Uninstall Samsung LED Cover?"
read -p "[y/n]: " slc
if [ $slc = "y" ] || [ $slc = "Y" ]; then
 adb uninstall --user 0 com.samsung.android.app.ledbackcover
 adb uninstall --user 0 com.sec.android.cover.ledcover
 echo "Removed Samsung LED Cover"
else
 echo "Did not remove Samsung LED Cover"
fi
echo "Uninstall Samsung Browser & Samsung Edge?"
read -p "[y/n]: " besek
if [ $besek = "y" ] || [ $besek = "Y"]; then
 adb uninstall --user 0 com.sec.android.app.sbrowser
 adb uninstall --user 0 com.samsung.android.app.sbrowseredge
 echo "Removed Samsung Browser & Samsung Edge"
else
 echo "Did not remove Samsung Browser & Samsung Edge"
 echo "Use `adb uninstall --user 0 com.samsung.android.app.sbrowseredge` for just Edge"
 echo "Use `adb uninstall --user 0 com.sec.android.app.sbrowser` for just Browser"
fi
echo "Uninstall Samsung Email (plus that fucking com.wsomacp thing)?"
read -p "[y/n]: " bes
if [ $bes = "y" ] || [ $bes = "Y"]; then
 adb uninstall --user 0 com.samsung.android.email.provider
 adb uninstall --user 0 com.wsomacp
 echo "Removed Samsung Email"
else
 echo "Did not remove Samsung Email and the other thing"
fi
echo "Uninstall Printing Services?"
read -p "[y/n]: " psu
if [ $psu = "y" ] || [ $psu = "Y" ]; then
 adb uninstall --user 0 com.android.bips
 adb uninstall --user 0 com.google.android.printservice.recommendation
 adb uninstall --user 0 com.android.printspooler
 echo "Removed Printing Services"
else
 echo "Did not remove Printing Services"
fi
echo "Uninstall Samsung Kids?"
read -p "[y/n]: " sku
if [ $sku = "y" ] || [ $sku = "Y" ]; then
 adb uninstall --user 0 com.samsung.android.service.peoplestripe
 adb uninstall --user 0 com.samsung.android.kidsinstaller
 adb uninstall --user 0 com.samsung.android.app.camera.sticker.facearavatar.preload
 echo "Removed Samsung Kids"
else
 echo "Did not remove Samsung Kids"
fi
echo "Uninstall Youtube?"
read -p "[y/n]: " yt
if [ $yt = "y" ]; then
 adb uninstall --user 0 com.google.android.youtube
 echo "Removed Youtube"
else
 echo "Did not remove Youtube"
fi
echo "Uninstall Experimental Packages (choose `n` to cancel and get package list)?"
read -p "[y/n]: " epk
if [ $epk = "y" ]; then
 adb uninstall --user 0 com.dsi.ant.sample.acquirechannels
 adb uninstall --user 0 com.dsi.ant.service.socket
 adb uninstall --user 0 com.dsi.ant.server
 adb uninstall --user 0 com.dsi.ant.plugins.antplus
 adb uninstall --user 0 com.android.egg
 adb uninstall --user 0 com.sec.android.easyonehand
 adb uninstall --user 0 com.sec.android.widgetapp.samsungapps
 adb uninstall --user 0 com.sec.android.app.launcher
 adb uninstall --user 0 com.samsung.android.mateagent
 adb uninstall --user 0 com.sec.android.easyMover.Agent
 adb uninstall --user 0 com.samsung.android.app.watchmanagerstub
 adb uninstall --user 0 com.sec.android.daemonapp
 adb uninstall --user 0 com.samsung.android.app.social
 adb uninstall --user 0 com.samsung.android.aremoji
 adb uninstall --user 0 com.google.ar.core
 adb uninstall --user 0 flipboard.boxer.app
 adb uninstall --user 0 com.samsung.android.wellbeing
 adb uninstall --user 0 com.samsung.android.da.daagent
 adb uninstall --user 0 com.samsung.android.service.livedrawing
 adb uninstall --user 0 com.sec.android.mimage.avatarstickers
 echo "Removed Experimental Packages"
else
 echo "Did not remove experimental packages"
 echo "Packages to be removed:"
 echo "com.dsi.ant.sample.acquirechannels"
 echo "com.dsi.ant.service.socket"
 echo "com.dsi.ant.server"
 echo "com.dsi.ant.plugins.antplus"
 echo "com.android.egg"
 echo "com.sec.android.easyonehand"
 echo "com.sec.android.widgetapp.samsungapps"
 echo "com.sec.android.app.launcher"
 echo "com.samsung.android.mateagent"
 echo "com.sec.android.easyMover.Agent"
 echo "com.samsung.android.app.watchmanagerstub"
 echo "com.sec.android.daemonapp"
 echo "com.samsung.android.app.social"
 echo "com.samsung.android.aremoji"
 echo "com.google.ar.core"
 echo "flipboard.boxer.app"
 echo "com.samsung.android.wellbeing"
 #Remember the one above if someone with access to your phone fucks you over
 echo "com.samsung.android.da.daagent"
fi
