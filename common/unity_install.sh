# This script will be executed in post-fs-data mode
# More info in the main Magisk thread

ui_print "  "
ui_print "  "
ui_print "# #  #  #    #  # #  #  #    #  # #"
ui_print "### # # #   # # # # # # #   # # ###"
ui_print "### ### #   ###  #  ### #   ### ###"
ui_print "# # # # #   # #  #  # # #   # # # #"
ui_print "# # # # ### # #  #  # # ### # # # #"
ui_print "..................................."
ui_print " "
ui_print "  *******************************"
ui_print "  *        Fonts inlcude        *"
ui_print "  *******************************"
ui_print "  *                             *"
ui_print "  *      Manjari                *"
ui_print "  *      Gayathri               *"
ui_print "  *      Rachana                *"
ui_print "  *      Meera                  *"
ui_print "  *      Anjali Old Lipi        *"
ui_print "  *      Suruma                 *"
ui_print "  *      Raghu Malayalam        *"
ui_print "  *      Dyuthi                 *"
ui_print "  *      Keraleeyam             *"
ui_print "  *      Uroob                  *"
ui_print "  *      Chilanka               *"
ui_print "  *      Karumbi                *"
ui_print "  *                             *"
ui_print "  *******************************"
ui_print "  "
ui_print "  "
ui_print "  Use the Volume keys to select "
ui_print "    what you want to install    "
ui_print " "
ui_print "+ Which font do you want ? -"
ui_print " "

FONTS=(
  "Manjari"
  "Gayathri + Manjari"
  "Gayathri"
  "Rachana"
  "Meera"
  "Anjali Old Lipi"
  "Suruma"
  "Raghu Malayalam"
  "Dyuthi"
  "Keraleeyam"
  "Uroob"
  "Chilanka"
  "Karumbi" )

SELECTION=""
FONT_BOLD=""
FONT_REGULAR=""
FONT_UI_BOLD=""
FONT_UI_REGULAR=""
mkdir -p $TMPDIR/system/fonts

for i in "${FONTS[@]}"
do
  ui_print "- Install $i ?"
  ui_print "  Vol up = Yes, Vol Down = No"
  ui_print " "

  if $VKSEL; then
    SELECTION=$i
    break
  fi
done

ui_print " "
ui_print "+ Installing $SELECTION..."

case $SELECTION in
  "Anjali Old Lipi")
    FONT_BOLD="AnjaliOldLipi-Regular"
    FONT_REGULAR="AnjaliOldLipi-Regular"
    FONT_UI_BOLD="AnjaliOldLipi-Regular"
    FONT_UI_REGULAR="AnjaliOldLipi-Regular"
  ;;
  "Chilanka")
    FONT_BOLD="Chilanka-Regular"
    FONT_REGULAR="Chilanka-Regular"
    FONT_UI_BOLD="Chilanka-Regular"
    FONT_UI_REGULAR="Chilanka-Regular"
  ;;
  "Dyuthi")
    FONT_BOLD="Dyuthi-Regular"
    FONT_REGULAR="Dyuthi-Regular"
    FONT_UI_BOLD="Dyuthi-Regular"
    FONT_UI_REGULAR="Dyuthi-Regular"
  ;;
  "Gayathri")
    FONT_BOLD="Gayathri-Bold"
    FONT_REGULAR="Gayathri-Regular"
    FONT_UI_BOLD="Gayathri-Bold"
    FONT_UI_REGULAR="Gayathri-Regular"
  ;;
  "Gayathri + Manjari")
    FONT_BOLD="Manjari-Bold"
    FONT_REGULAR="Manjari-Regular"
    FONT_UI_BOLD="Gayathri-Bold"
    FONT_UI_REGULAR="Gayathri-Regular"
  ;;
  "Karumbi")
    FONT_BOLD="Karumbi-Regular"
    FONT_REGULAR="Karumbi-Regular"
    FONT_UI_BOLD="Karumbi-Regular"
    FONT_UI_REGULAR="Karumbi-Regular"
  ;;
  "Keraleeyam")
    FONT_BOLD="Keraleeyam-Regular"
    FONT_REGULAR="Keraleeyam-Regular"
    FONT_UI_BOLD="Keraleeyam-Regular"
    FONT_UI_REGULAR="Keraleeyam-Regular"
  ;;
  "Manjari")
    FONT_BOLD="Manjari-Bold"
    FONT_REGULAR="Manjari-Regular"
    FONT_UI_BOLD="Manjari-Bold"
    FONT_UI_REGULAR="Manjari-Regular"
  ;;
  "Meera")
    FONT_BOLD="Meera-Regular"
    FONT_REGULAR="Meera-Regular"
    FONT_UI_BOLD="Meera-Regular"
    FONT_UI_REGULAR="Meera-Regular"
  ;;
  "Rachana")
    FONT_BOLD="Rachana-Regular"
    FONT_REGULAR="Rachana-Regular"
    FONT_UI_BOLD="Rachana-Regular"
    FONT_UI_REGULAR="Rachana-Regular"
  ;;
  "Raghu Malayalam")
    FONT_BOLD="aRaghuMalayalamSans-Regular"
    FONT_REGULAR="RaghuMalayalamSans-Regular"
    FONT_UI_BOLD="RaghuMalayalamSans-Regular"
    FONT_UI_REGULAR="RaghuMalayalamSans-Regular"
  ;;
  "Suruma")
    FONT_BOLD="Suruma-Regular"
    FONT_REGULAR="Suruma-Regular"
    FONT_UI_BOLD="Suruma-Regular"
    FONT_UI_REGULAR="Suruma-Regular"
  ;;
  "Uroob")
    FONT_BOLD="Uroob-Regular"
    FONT_REGULAR="Uroob-Regular"
    FONT_UI_BOLD="Uroob-Regular"
    FONT_UI_REGULAR="Uroob-Regular"
  ;;
  *)
    ui_print " "
    ui_print " None Selected..."
  ;;
esac

if [ ! -z $SELECTION ]; then
  cp -rf $TMPDIR/fonts/$FONT_BOLD.ttf $TMPDIR/system/fonts/NotoSansMalayalam-Bold.ttf
  cp -rf $TMPDIR/fonts/$FONT_REGULAR.ttf $TMPDIR/system/fonts/NotoSansMalayalam-Regular.ttf
  cp -rf $TMPDIR/fonts/$FONT_UI_BOLD.ttf $TMPDIR/system/fonts/NotoSansMalayalamUI-Bold.ttf
  cp -rf $TMPDIR/fonts/$FONT_UI_REGULAR.ttf $TMPDIR/system/fonts/NotoSansMalayalamUI-Regular.ttf
  ui_print "  Done!"
else
  ui_print "  Nothing to Install!"
fi


ui_print " "
