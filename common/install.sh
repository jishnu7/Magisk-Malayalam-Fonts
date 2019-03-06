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
ui_print "- Which font do you want ? -"
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
mkdir -p $INSTALLER/system/fonts

for i in "${FONTS[@]}"
do
  ui_print "  Install $i ?"
  ui_print "  Vol up = Yes, Vol Down = No"
  ui_print " "

  if $VKSEL; then
    GAYATHRI=true
    break
  else
    GAYATHRI=false
  fi
done


if $GAYATHRI; then
  ui_print " "
  ui_print "+ Installing $SELECTION..."
  FONT_BOLD=$INSTALLER/fonts/Gayathri-Bold.ttf
  FONT_REGULAR=$INSTALLER/fonts/Gayathri-Regular.ttf
  FONT_UI_BOLD=$INSTALLER/fonts/Gayathri-Bold.ttf
  FONT_UI_REGULAR=$INSTALLER/fonts/Gayathri-Regular.ttf
fi

if [ ! -z $FONT_BOLD ]; then
  ui_print "+ Installing 1/4..."
  cp -rf $FONT_BOLD $INSTALLER/system/fonts/NotoSansMalayalam-Bold.ttf
fi

if [ ! -z $FONT_REGULAR ]; then
  ui_print "+ Installing 2/4..."
  cp -rf $FONT_REGULAR $INSTALLER/system/fonts/NotoSansMalayalam-Regular.ttf
fi

if [ ! -z $FONT_UI_BOLD ]; then
  ui_print "+ Installing 3/4..."
  cp -rf $FONT_UI_BOLD $INSTALLER/system/fonts/NotoSansMalayalamUI-Bold.ttf
fi

if [ ! -z $FONT_UI_REGULAR ]; then
  ui_print "+ Installing 4/4..."
  cp -rf $FONT_UI_REGULAR $INSTALLER/system/fonts/NotoSansMalayalamUI-Regular.ttf
fi

ui_print "  Done!"

ui_print " "
