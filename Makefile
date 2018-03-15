COLOR_MESSAGE_START := bf1d1d
COLOR_MESSAGE_END := 400909
COLOR_INACTIVE_START := 787878
COLOR_INACTIVE_END := 474747
COLOR_TRAY_ACTIVE_INVERTED_RING := f2f2f2
COLOR_TRAY_ACTIVE_INVERTED_GLOBE := 27ae60
COLOR_TRAY_ACTIVE_RING := 4d4d4d
COLOR_TRAY_ACTIVE_GLOBE := 27ae60
COLOR_TRAY_INACTIVE_INVERTED_RING := 6c6c6c
COLOR_TRAY_INACTIVE_INVERTED_GLOBE := da4453
COLOR_TRAY_INACTIVE_RING := a6a6a6
COLOR_TRAY_INACTIVE_GLOBE := da4453
COLOR_TRAY_MESSAGE_INVERTED_RING := bf1d1d
COLOR_TRAY_MESSAGE_INVERTED_GLOBE := bf1d1d
COLOR_TRAY_MESSAGE_RING := ff0000
COLOR_TRAY_MESSAGE_GLOBE := ff0000

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
 out/desktop/icons/extra-icons/breeze/apps/32/quassel.svg \
 out/desktop/icons/extra-icons/breeze/apps/48/quassel.svg \
 out/desktop/icons/extra-icons/breeze/apps/64/quassel.svg \
 out/desktop/icons/extra-icons/breeze/status/24/active-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breeze/status/24/active-quassel-tray.svg \
 out/desktop/icons/extra-icons/breeze/status/24/inactive-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breeze/status/24/inactive-quassel-tray.svg \
 out/desktop/icons/extra-icons/breeze/status/24/inactive-quassel.svg \
 out/desktop/icons/extra-icons/breeze/status/24/message-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breeze/status/24/message-quassel-tray.svg \
 out/desktop/icons/extra-icons/breeze/status/24/message-quassel.svg \
 out/desktop/icons/extra-icons/breeze/status/64/active-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breeze/status/64/active-quassel-tray.svg \
 out/desktop/icons/extra-icons/breeze/status/64/inactive-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breeze/status/64/inactive-quassel-tray.svg \
 out/desktop/icons/extra-icons/breeze/status/64/inactive-quassel.svg \
 out/desktop/icons/extra-icons/breeze/status/64/message-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breeze/status/64/message-quassel-tray.svg \
 out/desktop/icons/extra-icons/breeze/status/64/message-quassel.svg \
 out/desktop/icons/extra-icons/breeze/scalable/status/active-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breeze/scalable/status/active-quassel-tray.svg \
 out/desktop/icons/extra-icons/breeze/scalable/status/inactive-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breeze/scalable/status/inactive-quassel-tray.svg \
 out/desktop/icons/extra-icons/breeze/scalable/status/inactive-quassel.svg \
 out/desktop/icons/extra-icons/breeze/scalable/status/message-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breeze/scalable/status/message-quassel-tray.svg \
 out/desktop/icons/extra-icons/breeze/scalable/status/message-quassel.svg \
 out/desktop/icons/extra-icons/breeze/scalable/apps/quassel.svg \
 out/desktop/icons/extra-icons/breeze/scalable/status/active-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breeze/scalable/status/active-quassel-tray.svg \
 out/desktop/icons/extra-icons/breeze/scalable/status/inactive-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breeze/scalable/status/inactive-quassel-tray.svg \
 out/desktop/icons/extra-icons/breeze/scalable/status/inactive-quassel.svg \
 out/desktop/icons/extra-icons/breeze/scalable/status/message-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breeze/scalable/status/message-quassel-tray.svg \
 out/desktop/icons/extra-icons/breeze/scalable/status/message-quassel.svg

.PHONY: breezedark
breezedark: \
 out/desktop/icons/extra-icons/breezedark/apps/32/quassel.svg \
 out/desktop/icons/extra-icons/breezedark/apps/48/quassel.svg \
 out/desktop/icons/extra-icons/breezedark/apps/64/quassel.svg \
 out/desktop/icons/extra-icons/breezedark/status/24/active-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breezedark/status/24/active-quassel-tray.svg \
 out/desktop/icons/extra-icons/breezedark/status/24/inactive-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breezedark/status/24/inactive-quassel-tray.svg \
 out/desktop/icons/extra-icons/breezedark/status/24/inactive-quassel.svg \
 out/desktop/icons/extra-icons/breezedark/status/24/message-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breezedark/status/24/message-quassel-tray.svg \
 out/desktop/icons/extra-icons/breezedark/status/24/message-quassel.svg \
 out/desktop/icons/extra-icons/breezedark/status/64/active-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breezedark/status/64/active-quassel-tray.svg \
 out/desktop/icons/extra-icons/breezedark/status/64/inactive-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breezedark/status/64/inactive-quassel-tray.svg \
 out/desktop/icons/extra-icons/breezedark/status/64/inactive-quassel.svg \
 out/desktop/icons/extra-icons/breezedark/status/64/message-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breezedark/status/64/message-quassel-tray.svg \
 out/desktop/icons/extra-icons/breezedark/status/64/message-quassel.svg \
 out/desktop/icons/extra-icons/breezedark/scalable/status/active-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breezedark/scalable/status/active-quassel-tray.svg \
 out/desktop/icons/extra-icons/breezedark/scalable/status/inactive-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breezedark/scalable/status/inactive-quassel-tray.svg \
 out/desktop/icons/extra-icons/breezedark/scalable/status/inactive-quassel.svg \
 out/desktop/icons/extra-icons/breezedark/scalable/status/message-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breezedark/scalable/status/message-quassel-tray.svg \
 out/desktop/icons/extra-icons/breezedark/scalable/status/message-quassel.svg \
 out/desktop/icons/extra-icons/breezedark/scalable/apps/quassel.svg \
 out/desktop/icons/extra-icons/breezedark/scalable/status/active-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breezedark/scalable/status/active-quassel-tray.svg \
 out/desktop/icons/extra-icons/breezedark/scalable/status/inactive-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breezedark/scalable/status/inactive-quassel-tray.svg \
 out/desktop/icons/extra-icons/breezedark/scalable/status/inactive-quassel.svg \
 out/desktop/icons/extra-icons/breezedark/scalable/status/message-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/breezedark/scalable/status/message-quassel-tray.svg \
 out/desktop/icons/extra-icons/breezedark/scalable/status/message-quassel.svg

.PHONY: oxygen
oxygen: \
 out/desktop/icons/extra-icons/oxygen/apps/32/quassel.svg \
 out/desktop/icons/extra-icons/oxygen/apps/48/quassel.svg \
 out/desktop/icons/extra-icons/oxygen/apps/64/quassel.svg \
 out/desktop/icons/extra-icons/oxygen/status/24/active-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/oxygen/status/24/active-quassel-tray.svg \
 out/desktop/icons/extra-icons/oxygen/status/24/inactive-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/oxygen/status/24/inactive-quassel-tray.svg \
 out/desktop/icons/extra-icons/oxygen/status/24/inactive-quassel.svg \
 out/desktop/icons/extra-icons/oxygen/status/24/message-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/oxygen/status/24/message-quassel-tray.svg \
 out/desktop/icons/extra-icons/oxygen/status/24/message-quassel.svg \
 out/desktop/icons/extra-icons/oxygen/status/64/active-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/oxygen/status/64/active-quassel-tray.svg \
 out/desktop/icons/extra-icons/oxygen/status/64/inactive-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/oxygen/status/64/inactive-quassel-tray.svg \
 out/desktop/icons/extra-icons/oxygen/status/64/inactive-quassel.svg \
 out/desktop/icons/extra-icons/oxygen/status/64/message-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/oxygen/status/64/message-quassel-tray.svg \
 out/desktop/icons/extra-icons/oxygen/status/64/message-quassel.svg \
 out/desktop/icons/extra-icons/oxygen/scalable/status/active-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/oxygen/scalable/status/active-quassel-tray.svg \
 out/desktop/icons/extra-icons/oxygen/scalable/status/inactive-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/oxygen/scalable/status/inactive-quassel-tray.svg \
 out/desktop/icons/extra-icons/oxygen/scalable/status/inactive-quassel.svg \
 out/desktop/icons/extra-icons/oxygen/scalable/status/message-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/oxygen/scalable/status/message-quassel-tray.svg \
 out/desktop/icons/extra-icons/oxygen/scalable/status/message-quassel.svg \
 out/desktop/icons/extra-icons/oxygen/scalable/apps/quassel.svg \
 out/desktop/icons/extra-icons/oxygen/scalable/status/active-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/oxygen/scalable/status/active-quassel-tray.svg \
 out/desktop/icons/extra-icons/oxygen/scalable/status/inactive-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/oxygen/scalable/status/inactive-quassel-tray.svg \
 out/desktop/icons/extra-icons/oxygen/scalable/status/inactive-quassel.svg \
 out/desktop/icons/extra-icons/oxygen/scalable/status/message-quassel-tray-inverted.svg \
 out/desktop/icons/extra-icons/oxygen/scalable/status/message-quassel-tray.svg \
 out/desktop/icons/extra-icons/oxygen/scalable/status/message-quassel.svg

out/desktop/icons/extra-icons/%/apps/32/quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(<svg.*)(>)/\1 width="32px" height="32px"\2/' \
	> $@
out/desktop/icons/extra-icons/%/apps/48/quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(<svg.*)(>)/\1 width="48px" height="48px"\2/' \
	> $@
out/desktop/icons/extra-icons/%/apps/64/quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/extra-icons/%/scalable/apps/quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	> $@
out/desktop/icons/extra-icons/%/status/24/active-quassel-tray-inverted.svg: status.active.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_TRAY_ACTIVE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_TRAY_ACTIVE_INVERTED_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/extra-icons/%/status/24/active-quassel-tray.svg: status.active.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_TRAY_ACTIVE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_TRAY_ACTIVE_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/extra-icons/%/status/24/inactive-quassel-tray-inverted.svg: status.inactive.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_TRAY_INACTIVE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_TRAY_INACTIVE_INVERTED_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/extra-icons/%/status/24/inactive-quassel-tray.svg: status.inactive.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_TRAY_INACTIVE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_TRAY_INACTIVE_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/extra-icons/%/status/24/inactive-quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="gradientBackgroundStart" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_INACTIVE_START)"/' \
	| sed -r 's/(id="gradientBackgroundEnd" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_INACTIVE_END)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/extra-icons/%/status/24/message-quassel-tray-inverted.svg: status.inactive.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_TRAY_MESSAGE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_TRAY_MESSAGE_INVERTED_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/extra-icons/%/status/24/message-quassel-tray.svg: status.message.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_TRAY_MESSAGE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_TRAY_MESSAGE_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/extra-icons/%/status/24/message-quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="gradientBackgroundStart" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_MESSAGE_START)"/' \
	| sed -r 's/(id="gradientBackgroundEnd" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_MESSAGE_END)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/extra-icons/%/status/64/active-quassel-tray-inverted.svg: status.active.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_TRAY_ACTIVE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_TRAY_ACTIVE_INVERTED_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/extra-icons/%/status/64/active-quassel-tray.svg: status.active.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_TRAY_ACTIVE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_TRAY_ACTIVE_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/extra-icons/%/status/64/inactive-quassel-tray-inverted.svg: status.inactive.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_TRAY_INACTIVE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_TRAY_INACTIVE_INVERTED_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/extra-icons/%/status/64/inactive-quassel-tray.svg: status.inactive.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_TRAY_INACTIVE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_TRAY_INACTIVE_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/extra-icons/%/status/64/inactive-quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="gradientBackgroundStart" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_INACTIVE_START)"/' \
	| sed -r 's/(id="gradientBackgroundEnd" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_INACTIVE_END)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/extra-icons/%/status/64/message-quassel-tray-inverted.svg: status.inactive.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_TRAY_MESSAGE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_TRAY_MESSAGE_INVERTED_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/extra-icons/%/status/64/message-quassel-tray.svg: status.message.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_TRAY_MESSAGE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_TRAY_MESSAGE_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/extra-icons/%/status/64/message-quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="gradientBackgroundStart" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_MESSAGE_START)"/' \
	| sed -r 's/(id="gradientBackgroundEnd" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_MESSAGE_END)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/extra-icons/%/scalable/status/active-quassel-tray-inverted.svg: status.active.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_TRAY_ACTIVE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_TRAY_ACTIVE_INVERTED_GLOBE)"/' \
	> $@
out/desktop/icons/extra-icons/%/scalable/status/active-quassel-tray.svg: status.active.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_TRAY_ACTIVE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_TRAY_ACTIVE_GLOBE)"/' \
	> $@
out/desktop/icons/extra-icons/%/scalable/status/inactive-quassel-tray-inverted.svg: status.inactive.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_TRAY_INACTIVE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_TRAY_INACTIVE_INVERTED_GLOBE)"/' \
	> $@
out/desktop/icons/extra-icons/%/scalable/status/inactive-quassel-tray.svg: status.inactive.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_TRAY_INACTIVE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_TRAY_INACTIVE_GLOBE)"/' \
	> $@
out/desktop/icons/extra-icons/%/scalable/status/inactive-quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="gradientBackgroundStart" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_INACTIVE_START)"/' \
	| sed -r 's/(id="gradientBackgroundEnd" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_INACTIVE_END)"/' \
	> $@
out/desktop/icons/extra-icons/%/scalable/status/message-quassel-tray-inverted.svg: status.inactive.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_TRAY_MESSAGE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_TRAY_MESSAGE_INVERTED_GLOBE)"/' \
	> $@
out/desktop/icons/extra-icons/%/scalable/status/message-quassel-tray.svg: status.message.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_TRAY_MESSAGE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_TRAY_MESSAGE_GLOBE)"/' \
	> $@
out/desktop/icons/extra-icons/%/scalable/status/message-quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="gradientBackgroundStart" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_MESSAGE_START)"/' \
	| sed -r 's/(id="gradientBackgroundEnd" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_MESSAGE_END)"/' \
	> $@

.PHONY: hicolor
hicolor: \
 out/desktop/icons/hicolor/128x128/apps/quassel.png \
 out/desktop/icons/hicolor/64x64/apps/quassel.png \
 out/desktop/icons/hicolor/48x48/apps/quassel.png \
 out/desktop/icons/hicolor/32x32/apps/quassel.png \
 out/desktop/icons/hicolor/22x22/apps/quassel.png \
 out/desktop/icons/hicolor/16x16/apps/quassel.png

out/desktop/icons/hicolor/128x128/apps/quassel.png: logo.kde.svg
	mkdir -p $(@D)
	inkscape $< -w 128 -e $@
out/desktop/icons/hicolor/64x64/apps/quassel.png: logo.kde.svg
	mkdir -p $(@D)
	inkscape $< -w 64 -e $@
out/desktop/icons/hicolor/48x48/apps/quassel.png: logo.kde.svg
	mkdir -p $(@D)
	inkscape $< -w 48 -e $@
out/desktop/icons/hicolor/32x32/apps/quassel.png: logo.kde.svg
	mkdir -p $(@D)
	inkscape $< -w 32 -e $@
out/desktop/icons/hicolor/22x22/apps/quassel.png: logo.kde.svg
	mkdir -p $(@D)
	inkscape $< -w 22 -e $@
out/desktop/icons/hicolor/16x16/apps/quassel.png: logo.kde.svg
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
