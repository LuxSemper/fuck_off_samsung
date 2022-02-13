echo "Uninstall Bixby, Facebook, and VR?"
read -p "[y/n]: " bfv
if [ $bfv = "y" ]; then
 adb devices
 adb uninstall --user 0 com.samsung.android.bixby.wakeup
 adb uninstall --user 0 com.samsung.android.app.spage
 adb uninstall --user 0 com.samsung.android.app.routines
 adb uninstall --user 0 com.samsung.android.bixby.service
 adb uninstall --user 0 com.samsung.android.visionintelligence
 adb uninstall --user 0 com.samsung.android.bixby.agent
 adb uninstall --user 0 com.samsung.android.bixby.agent.dummy
 adb uninstall --user 0 com.samsung.android.bixbyvision.framework
 adb uninstall --user 0 com.facebook.katana
 adb uninstall --user 0 com.facebook.system
 adb uninstall --user 0 com.facebook.appmanager
 adb uninstall --user 0 com.facebook.services
 adb uninstall --user 0 com.samsung.android.hmt.vrsvc
 adb uninstall --user 0 com.samsung.android.app.vrsetupwizardstub
 adb uninstall --user 0 com.samsung.android.hmt.vrshell
 adb uninstall --user 0 com.google.vr.vrcore
 sleep 1
 echo "Uninstall Samsung Pay?"
 read -p "[y/n]: " spsp
 if [ $spsp = "y" ]; then
  adb uninstall --user 0 com.samsung.android.spay
 else
  echo "ok lol"
 fi
 echo "Uninstall Samsung LED Cover?"
 read -p "[y/n]: " slc
 if [ $slc = "y" ]; then
  adb uninstall --user 0 com.samsung.android.app.ledbackcover
  adb uninstall --user 0 com.sec.android.cover.ledcover
 else
  echo "roger that T~T"
 fi
  echo "Uninstall Samsung Browser, Samsung Email, Printing Services, Samsung Edge, and Samsung Kids?"
 read -p "[y/n]: " besek
 if [ $besek = "y" ]; then
  adb uninstall --user 0 com.sec.android.app.sbrowser
  adb uninstall --user 0 com.samsung.android.app.sbrowseredge
  adb uninstall --user 0 com.samsung.android.email.provider
  adb uninstall --user 0 com.wsomacp
  adb uninstall --user 0 com.android.bips
  adb uninstall --user 0 com.google.android.printservice.recommendation
  adb uninstall --user 0 com.android.printspooler
  adb uninstall --user 0 com.samsung.android.service.peoplestripe
  adb uninstall --user 0 com.samsung.android.kidsinstaller
  adb uninstall --user 0 com.samsung.android.app.camera.sticker.facearavatar.preload
 else
  echo "kk u~u"
 fi
 echo "Uninstall Youtube?"
 read -p "[y/n]: " yt
 if [ $yt = "y" ]; then
  adb uninstall --user 0 com.google.android.youtube
 else
  echo "guess you want to watch those furry animations, huh?"
 fi
 echo "Uninstall Experimental Packages?"
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
 else
  echo "dogwater~ :3"
 fi
else
 echo "Well you're screwed lmfao, you either delete them all or none of them."
 echo "Restart funni script :3"
fi
