.PHONY: all
all: android desktop web

#######################################
# Android icons                       #
#######################################
.PHONY: android
android: \
 android_web \
 android_adaptive_foreground \
 android_recents \
 android_legacy

# Play Store icon
.PHONY: android_web
android_web: \
 out/android/ic_launcher.web.png
out/android/ic_launcher.web.png: logo.android.svg
	mkdir -p $(@D)
	inkscape $< -w 512 -e $@

# Adaptive icon foreground
.PHONY: android_adaptive_foreground
android_adaptive_foreground: \
 out/android/res/mipmap-xxxhdpi/ic_launcher_foreground.png \
 out/android/res/mipmap-xxhdpi/ic_launcher_foreground.png \
 out/android/res/mipmap-xhdpi/ic_launcher_foreground.png \
 out/android/res/mipmap-hdpi/ic_launcher_foreground.png \
 out/android/res/mipmap-mdpi/ic_launcher_foreground.png
out/android/res/mipmap-xxxhdpi/ic_launcher_foreground.png: logo.android_fg.svg
	mkdir -p $(@D)
	inkscape $< -w 192 -e $@
out/android/res/mipmap-xxhdpi/ic_launcher_foreground.png: logo.android_fg.svg
	mkdir -p $(@D)
	inkscape $< -w 144 -e $@
out/android/res/mipmap-xhdpi/ic_launcher_foreground.png: logo.android_fg.svg
	mkdir -p $(@D)
	inkscape $< -w 96 -e $@
out/android/res/mipmap-hdpi/ic_launcher_foreground.png: logo.android_fg.svg
	mkdir -p $(@D)
	inkscape $< -w 72 -e $@
out/android/res/mipmap-mdpi/ic_launcher_foreground.png: logo.android_fg.svg
	mkdir -p $(@D)
	inkscape $< -w 48 -e $@

# Recents icon
.PHONY: android_recents
android_recents: \
 out/android/res/mipmap-xxxhdpi/ic_launcher_recents.png \
 out/android/res/mipmap-xxhdpi/ic_launcher_recents.png \
 out/android/res/mipmap-xhdpi/ic_launcher_recents.png \
 out/android/res/mipmap-hdpi/ic_launcher_recents.png \
 out/android/res/mipmap-mdpi/ic_launcher_recents.png
out/android/res/mipmap-xxxhdpi/ic_launcher_recents.png: icon.full.svg
	mkdir -p $(@D)
	inkscape $< -w 192 -e $@
out/android/res/mipmap-xxhdpi/ic_launcher_recents.png: icon.full.svg
	mkdir -p $(@D)
	inkscape $< -w 144 -e $@
out/android/res/mipmap-xhdpi/ic_launcher_recents.png: icon.full.svg
	mkdir -p $(@D)
	inkscape $< -w 96 -e $@
out/android/res/mipmap-hdpi/ic_launcher_recents.png: icon.full.svg
	mkdir -p $(@D)
	inkscape $< -w 72 -e $@
out/android/res/mipmap-mdpi/ic_launcher_recents.png: icon.full.svg
	mkdir -p $(@D)
	inkscape $< -w 48 -e $@


# Legacy icon
.PHONY: android_legacy
android_legacy: \
 out/android/res/mipmap-xxxhdpi/ic_launcher.png \
 out/android/res/mipmap-xxhdpi/ic_launcher.png \
 out/android/res/mipmap-xhdpi/ic_launcher.png \
 out/android/res/mipmap-hdpi/ic_launcher.png \
 out/android/res/mipmap-mdpi/ic_launcher.png
out/android/res/mipmap-xxxhdpi/ic_launcher.png: logo.android.svg
	mkdir -p $(@D)
	inkscape $< -w 192 -e $@
out/android/res/mipmap-xxhdpi/ic_launcher.png: logo.android.svg
	mkdir -p $(@D)
	inkscape $< -w 144 -e $@
out/android/res/mipmap-xhdpi/ic_launcher.png: logo.android.svg
	mkdir -p $(@D)
	inkscape $< -w 96 -e $@
out/android/res/mipmap-hdpi/ic_launcher.png: logo.android.svg
	mkdir -p $(@D)
	inkscape $< -w 72 -e $@
out/android/res/mipmap-mdpi/ic_launcher.png: logo.android.svg
	mkdir -p $(@D)
	inkscape $< -w 48 -e $@

#######################################
# Desktop icons                       #
#######################################
.PHONY: desktop
desktop: \
 breeze \
 breezedark \
 oxygen \
 hicolor \
 icons

.PHONY: breeze
breeze: \
 out/desktop/extra-icons/breeze/apps/32/quassel.svg \
 out/desktop/extra-icons/breeze/apps/48/quassel.svg \
 out/desktop/extra-icons/breeze/apps/64/quassel.svg \
 out/desktop/extra-icons/breeze/scalable/apps/quassel.svg \
 out/desktop/extra-icons/breeze/scalable/status/message-quassel.svg

.PHONY: breezedark
breezedark: \
 out/desktop/extra-icons/breezedark/apps/32/quassel.svg \
 out/desktop/extra-icons/breezedark/apps/48/quassel.svg \
 out/desktop/extra-icons/breezedark/apps/64/quassel.svg \
 out/desktop/extra-icons/breezedark/scalable/apps/quassel.svg \
 out/desktop/extra-icons/breezedark/scalable/status/message-quassel.svg

.PHONY: oxygen
oxygen: \
 out/desktop/extra-icons/oxygen/apps/32/quassel.svg \
 out/desktop/extra-icons/oxygen/apps/48/quassel.svg \
 out/desktop/extra-icons/oxygen/apps/64/quassel.svg \
 out/desktop/extra-icons/oxygen/scalable/apps/quassel.svg \
 out/desktop/extra-icons/oxygen/scalable/status/message-quassel.svg

out/desktop/extra-icons/%/apps/32/quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(<svg.*)(>)/\1 width="32px" height="32px"\2/' \
	> $@
out/desktop/extra-icons/%/apps/48/quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(<svg.*)(>)/\1 width="48px" height="48px"\2/' \
	> $@
out/desktop/extra-icons/%/apps/64/quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/extra-icons/%/scalable/apps/quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	> $@

out/desktop/extra-icons/%/status/24/message-quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="gradientBackgroundStart" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#bf1d1d"/' \
	| sed -r 's/(id="gradientBackgroundEnd" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#400909"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/extra-icons/%/status/64/message-quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="gradientBackgroundStart" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#bf1d1d"/' \
	| sed -r 's/(id="gradientBackgroundEnd" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#400909"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/extra-icons/%/scalable/status/message-quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="gradientBackgroundStart" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#bf1d1d"/' \
	| sed -r 's/(id="gradientBackgroundEnd" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#400909"/' \
	> $@

.PHONY: hicolor
hicolor: \
 out/desktop/hicolor/128x128/apps/quassel.png \
 out/desktop/hicolor/64x64/apps/quassel.png \
 out/desktop/hicolor/48x48/apps/quassel.png \
 out/desktop/hicolor/32x32/apps/quassel.png \
 out/desktop/hicolor/22x22/apps/quassel.png \
 out/desktop/hicolor/16x16/apps/quassel.png

out/desktop/hicolor/128x128/apps/quassel.png: logo.kde.svg
	mkdir -p $(@D)
	inkscape $< -w 128 -e $@
out/desktop/hicolor/64x64/apps/quassel.png: logo.kde.svg
	mkdir -p $(@D)
	inkscape $< -w 64 -e $@
out/desktop/hicolor/48x48/apps/quassel.png: logo.kde.svg
	mkdir -p $(@D)
	inkscape $< -w 48 -e $@
out/desktop/hicolor/32x32/apps/quassel.png: logo.kde.svg
	mkdir -p $(@D)
	inkscape $< -w 32 -e $@
out/desktop/hicolor/22x22/apps/quassel.png: logo.kde.svg
	mkdir -p $(@D)
	inkscape $< -w 22 -e $@
out/desktop/hicolor/16x16/apps/quassel.png: logo.kde.svg
	mkdir -p $(@D)
	inkscape $< -w 16 -e $@

.PHONY: icons
icons: \
 out/desktop/pics/quassel.ico \
 out/desktop/pics/quassel.icns

out/desktop/pics/quassel.png: logo.kde.svg
	mkdir -p $(@D)
	inkscape $< -w 256 -e $@
out/desktop/pics/quassel.ico: out/desktop/pics/quassel.png
	mkdir -p $(@D)
	convert $< $@
out/desktop/pics/quassel.icns: out/desktop/pics/quassel.png
	mkdir -p $(@D)
	convert $< $@

#######################################
# Web icons                           #
#######################################

.PHONY: web
web: \
 out/web/favicon.ico \
 out/web/favicon.png \
 out/web/favicon.svg

out/web/favicon.ico: out/web/favicon.png
	mkdir -p $(@D)
	convert $< $@
out/web/favicon.png: out/web/favicon.svg
	mkdir -p $(@D)
	inkscape $< -w 256 -e $@
out/web/favicon.svg: logo.full.svg
	mkdir -p $(@D)
	cp $< $@
