COLOR_BREEZE_MESSAGE_START := bf1d1d
COLOR_BREEZE_MESSAGE_END := 400909
COLOR_BREEZE_INACTIVE_START := 787878
COLOR_BREEZE_INACTIVE_END := 474747
COLOR_BREEZE_CONNECT_RING := 4d4d4d
COLOR_BREEZE_CONNECT_GLOBE := 27ae60
COLOR_BREEZE_DISCONNECT_RING := 4d4d4d
COLOR_BREEZE_DISCONNECT_GLOBE := da4453
COLOR_BREEZE_TRAY_ACTIVE_INVERTED_RING := f2f2f2
COLOR_BREEZE_TRAY_ACTIVE_INVERTED_GLOBE := 27ae60
COLOR_BREEZE_TRAY_ACTIVE_RING := 4d4d4d
COLOR_BREEZE_TRAY_ACTIVE_GLOBE := 27ae60
COLOR_BREEZE_TRAY_INACTIVE_INVERTED_RING := 6c6c6c
COLOR_BREEZE_TRAY_INACTIVE_INVERTED_GLOBE := da4453
COLOR_BREEZE_TRAY_INACTIVE_RING := a6a6a6
COLOR_BREEZE_TRAY_INACTIVE_GLOBE := da4453
COLOR_BREEZE_TRAY_MESSAGE_INVERTED_RING := bf1d1d
COLOR_BREEZE_TRAY_MESSAGE_INVERTED_GLOBE := bf1d1d
COLOR_BREEZE_TRAY_MESSAGE_RING := ff0000
COLOR_BREEZE_TRAY_MESSAGE_GLOBE := ff0000

COLOR_BREEZEDARK_MESSAGE_START := bf1d1d
COLOR_BREEZEDARK_MESSAGE_END := 400909
COLOR_BREEZEDARK_INACTIVE_START := 2883f2
COLOR_BREEZEDARK_INACTIVE_END := 0b50a5
COLOR_BREEZEDARK_CONNECT_RING := f2f2f2
COLOR_BREEZEDARK_CONNECT_GLOBE := 27ae60
COLOR_BREEZEDARK_DISCONNECT_RING := f2f2f2
COLOR_BREEZEDARK_DISCONNECT_GLOBE := da4453
COLOR_BREEZEDARK_TRAY_ACTIVE_INVERTED_RING := 4d4d4d
COLOR_BREEZEDARK_TRAY_ACTIVE_INVERTED_GLOBE := 27ae60
COLOR_BREEZEDARK_TRAY_ACTIVE_RING := f2f2f2
COLOR_BREEZEDARK_TRAY_ACTIVE_GLOBE := 27ae60
COLOR_BREEZEDARK_TRAY_INACTIVE_INVERTED_RING := a6a6a6
COLOR_BREEZEDARK_TRAY_INACTIVE_INVERTED_GLOBE := da4453
COLOR_BREEZEDARK_TRAY_INACTIVE_RING := 6c6c6c
COLOR_BREEZEDARK_TRAY_INACTIVE_GLOBE := da4453
COLOR_BREEZEDARK_TRAY_MESSAGE_INVERTED_RING := ff0000
COLOR_BREEZEDARK_TRAY_MESSAGE_INVERTED_GLOBE := ff0000
COLOR_BREEZEDARK_TRAY_MESSAGE_RING := bf1d1d
COLOR_BREEZEDARK_TRAY_MESSAGE_GLOBE := bf1d1d

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
 android_legacy \
 android_splash \
 android_logo

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
 out/android/res/mipmap-nodpi/ic_launcher_foreground.png
out/android/res/mipmap-nodpi/ic_launcher_foreground.png: logo.android_fg.svg
	mkdir -p $(@D)
	inkscape $< -w 432 -e $@

# Recents icon
.PHONY: android_recents
android_recents: \
 out/android/res/mipmap-nodpi/ic_launcher_recents.png
out/android/res/mipmap-nodpi/ic_launcher_recents.png: icon.full.svg
	mkdir -p $(@D)
	inkscape $< -w 432 -e $@


# Splash icon
.PHONY: android_splash
android_splash: \
 out/android/res/drawable-xxxhdpi/ic_splash.png \
 out/android/res/drawable-xxhdpi/ic_splash.png \
 out/android/res/drawable-xhdpi/ic_splash.png \
 out/android/res/drawable-hdpi/ic_splash.png \
 out/android/res/drawable-mdpi/ic_splash.png
out/android/res/drawable-xxxhdpi/ic_splash.png: icon.full.svg
	mkdir -p $(@D)
	inkscape $< -w 384 -e $@
out/android/res/drawable-xxhdpi/ic_splash.png: icon.full.svg
	mkdir -p $(@D)
	inkscape $< -w 288 -e $@
out/android/res/drawable-xhdpi/ic_splash.png: icon.full.svg
	mkdir -p $(@D)
	inkscape $< -w 192 -e $@
out/android/res/drawable-hdpi/ic_splash.png: icon.full.svg
	mkdir -p $(@D)
	inkscape $< -w 144 -e $@
out/android/res/drawable-mdpi/ic_splash.png: icon.full.svg
	mkdir -p $(@D)
	inkscape $< -w 115 -e $@


# Legacy icon
.PHONY: android_logo
android_legacy: \
 out/android/res/mipmap-xxxhdpi/ic_logo.png \
 out/android/res/mipmap-xxhdpi/ic_logo.png \
 out/android/res/mipmap-xhdpi/ic_logo.png \
 out/android/res/mipmap-hdpi/ic_logo.png \
 out/android/res/mipmap-mdpi/ic_logo.png
out/android/res/mipmap-xxxhdpi/ic_logo.png: icon.mono.svg
	mkdir -p $(@D)
	inkscape $< -w 96 -e $@
out/android/res/mipmap-xxhdpi/ic_logo.png: icon.mono.svg
	mkdir -p $(@D)
	inkscape $< -w 72 -e $@
out/android/res/mipmap-xhdpi/ic_logo.png: icon.mono.svg
	mkdir -p $(@D)
	inkscape $< -w 48 -e $@
out/android/res/mipmap-hdpi/ic_logo.png: icon.mono.svg
	mkdir -p $(@D)
	inkscape $< -w 36 -e $@
out/android/res/mipmap-mdpi/ic_logo.png: icon.mono.svg
	mkdir -p $(@D)
	inkscape $< -w 24 -e $@


# Legacy icon
.PHONY: android_legacy
android_legacy: \
 out/android/res/mipmap-xxxhdpi/ic_launcher_legacy.png \
 out/android/res/mipmap-xxhdpi/ic_launcher_legacy.png \
 out/android/res/mipmap-xhdpi/ic_launcher_legacy.png \
 out/android/res/mipmap-hdpi/ic_launcher_legacy.png \
 out/android/res/mipmap-mdpi/ic_launcher_legacy.png
out/android/res/mipmap-xxxhdpi/ic_launcher_legacy.png: logo.android.svg
	mkdir -p $(@D)
	inkscape $< -w 192 -e $@
out/android/res/mipmap-xxhdpi/ic_launcher_legacy.png: logo.android.svg
	mkdir -p $(@D)
	inkscape $< -w 144 -e $@
out/android/res/mipmap-xhdpi/ic_launcher_legacy.png: logo.android.svg
	mkdir -p $(@D)
	inkscape $< -w 96 -e $@
out/android/res/mipmap-hdpi/ic_launcher_legacy.png: logo.android.svg
	mkdir -p $(@D)
	inkscape $< -w 72 -e $@
out/android/res/mipmap-mdpi/ic_launcher_legacy.png: logo.android.svg
	mkdir -p $(@D)
	inkscape $< -w 48 -e $@

#######################################
# Desktop icons                       #
#######################################
.PHONY: desktop
desktop: \
 breeze \
 breeze-dark \
 hicolor \
 icons

.PHONY: breeze
breeze: \
 out/desktop/icons/breeze/apps/32/quassel.svg \
 out/desktop/icons/breeze/apps/48/quassel.svg \
 out/desktop/icons/breeze/apps/64/quassel.svg \
 out/desktop/icons/breeze/scalable/apps/quassel.svg \
 out/desktop/icons/breeze/actions/24/connect-quassel.svg \
 out/desktop/icons/breeze/actions/24/disconnect-quassel.svg \
 out/desktop/icons/breeze/actions/32/connect-quassel.svg \
 out/desktop/icons/breeze/actions/32/disconnect-quassel.svg \
 out/desktop/icons/breeze/scalable/actions/connect-quassel.svg \
 out/desktop/icons/breeze/scalable/actions/disconnect-quassel.svg \
 out/desktop/icons/breeze/status/24/active-quassel-tray-inverted.svg \
 out/desktop/icons/breeze/status/24/active-quassel-tray.svg \
 out/desktop/icons/breeze/status/24/inactive-quassel-tray-inverted.svg \
 out/desktop/icons/breeze/status/24/inactive-quassel-tray.svg \
 out/desktop/icons/breeze/status/24/inactive-quassel.svg \
 out/desktop/icons/breeze/status/24/message-quassel-tray-inverted.svg \
 out/desktop/icons/breeze/status/24/message-quassel-tray.svg \
 out/desktop/icons/breeze/status/24/message-quassel.svg \
 out/desktop/icons/breeze/status/64/active-quassel-tray-inverted.svg \
 out/desktop/icons/breeze/status/64/active-quassel-tray.svg \
 out/desktop/icons/breeze/status/64/inactive-quassel-tray-inverted.svg \
 out/desktop/icons/breeze/status/64/inactive-quassel-tray.svg \
 out/desktop/icons/breeze/status/64/inactive-quassel.svg \
 out/desktop/icons/breeze/status/64/message-quassel-tray-inverted.svg \
 out/desktop/icons/breeze/status/64/message-quassel-tray.svg \
 out/desktop/icons/breeze/status/64/message-quassel.svg \
 out/desktop/icons/breeze/scalable/status/active-quassel-tray-inverted.svg \
 out/desktop/icons/breeze/scalable/status/active-quassel-tray.svg \
 out/desktop/icons/breeze/scalable/status/inactive-quassel-tray-inverted.svg \
 out/desktop/icons/breeze/scalable/status/inactive-quassel-tray.svg \
 out/desktop/icons/breeze/scalable/status/inactive-quassel.svg \
 out/desktop/icons/breeze/scalable/status/message-quassel-tray-inverted.svg \
 out/desktop/icons/breeze/scalable/status/message-quassel-tray.svg \
 out/desktop/icons/breeze/scalable/status/message-quassel.svg \
 out/desktop/icons/breeze/scalable/status/active-quassel-tray-inverted.svg \
 out/desktop/icons/breeze/scalable/status/active-quassel-tray.svg \
 out/desktop/icons/breeze/scalable/status/inactive-quassel-tray-inverted.svg \
 out/desktop/icons/breeze/scalable/status/inactive-quassel-tray.svg \
 out/desktop/icons/breeze/scalable/status/inactive-quassel.svg \
 out/desktop/icons/breeze/scalable/status/message-quassel-tray-inverted.svg \
 out/desktop/icons/breeze/scalable/status/message-quassel-tray.svg \
 out/desktop/icons/breeze/scalable/status/message-quassel.svg

# App icons
out/desktop/icons/breeze/apps/32/quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(<svg.*)(>)/\1 width="32px" height="32px"\2/' \
	> $@
out/desktop/icons/breeze/apps/48/quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(<svg.*)(>)/\1 width="48px" height="48px"\2/' \
	> $@
out/desktop/icons/breeze/apps/64/quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/breeze/scalable/apps/quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	> $@

# Action icons
out/desktop/icons/breeze/actions/24/connect-quassel.svg: action.connect.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_CONNECT_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_CONNECT_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/breeze/actions/24/disconnect-quassel.svg: action.disconnect.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_DISCONNECT_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_DISCONNECT_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/breeze/actions/32/connect-quassel.svg: action.connect.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_CONNECT_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_CONNECT_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="32px" height="32px"\2/' \
	> $@
out/desktop/icons/breeze/actions/32/disconnect-quassel.svg: action.disconnect.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_DISCONNECT_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_DISCONNECT_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="32px" height="32px"\2/' \
	> $@
out/desktop/icons/breeze/scalable/actions/connect-quassel.svg: action.connect.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_CONNECT_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_CONNECT_GLOBE)"/' \
	> $@
out/desktop/icons/breeze/scalable/actions/disconnect-quassel.svg: action.disconnect.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_DISCONNECT_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_DISCONNECT_GLOBE)"/' \
	> $@

# Status icons
out/desktop/icons/breeze/status/24/active-quassel-tray-inverted.svg: status.active.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_TRAY_ACTIVE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_TRAY_ACTIVE_INVERTED_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/breeze/status/24/active-quassel-tray.svg: status.active.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_TRAY_ACTIVE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_TRAY_ACTIVE_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/breeze/status/24/inactive-quassel-tray-inverted.svg: status.inactive.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_TRAY_INACTIVE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_TRAY_INACTIVE_INVERTED_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/breeze/status/24/inactive-quassel-tray.svg: status.inactive.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_TRAY_INACTIVE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_TRAY_INACTIVE_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/breeze/status/24/inactive-quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="gradientBackgroundStart" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZE_INACTIVE_START)"/' \
	| sed -r 's/(id="gradientBackgroundEnd" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZE_INACTIVE_END)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/breeze/status/24/message-quassel-tray-inverted.svg: status.message.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_TRAY_MESSAGE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_TRAY_MESSAGE_INVERTED_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/breeze/status/24/message-quassel-tray.svg: status.message.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_TRAY_MESSAGE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_TRAY_MESSAGE_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/breeze/status/24/message-quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="gradientBackgroundStart" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZE_MESSAGE_START)"/' \
	| sed -r 's/(id="gradientBackgroundEnd" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZE_MESSAGE_END)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/breeze/status/64/active-quassel-tray-inverted.svg: status.active.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_TRAY_ACTIVE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_TRAY_ACTIVE_INVERTED_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/breeze/status/64/active-quassel-tray.svg: status.active.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_TRAY_ACTIVE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_TRAY_ACTIVE_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/breeze/status/64/inactive-quassel-tray-inverted.svg: status.inactive.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_TRAY_INACTIVE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_TRAY_INACTIVE_INVERTED_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/breeze/status/64/inactive-quassel-tray.svg: status.inactive.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_TRAY_INACTIVE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_TRAY_INACTIVE_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/breeze/status/64/inactive-quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="gradientBackgroundStart" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZE_INACTIVE_START)"/' \
	| sed -r 's/(id="gradientBackgroundEnd" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZE_INACTIVE_END)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/breeze/status/64/message-quassel-tray-inverted.svg: status.message.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_TRAY_MESSAGE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_TRAY_MESSAGE_INVERTED_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/breeze/status/64/message-quassel-tray.svg: status.message.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_TRAY_MESSAGE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_TRAY_MESSAGE_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/breeze/status/64/message-quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="gradientBackgroundStart" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZE_MESSAGE_START)"/' \
	| sed -r 's/(id="gradientBackgroundEnd" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZE_MESSAGE_END)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/breeze/scalable/status/active-quassel-tray-inverted.svg: status.active.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_TRAY_ACTIVE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_TRAY_ACTIVE_INVERTED_GLOBE)"/' \
	> $@
out/desktop/icons/breeze/scalable/status/active-quassel-tray.svg: status.active.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_TRAY_ACTIVE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_TRAY_ACTIVE_GLOBE)"/' \
	> $@
out/desktop/icons/breeze/scalable/status/inactive-quassel-tray-inverted.svg: status.inactive.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_TRAY_INACTIVE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_TRAY_INACTIVE_INVERTED_GLOBE)"/' \
	> $@
out/desktop/icons/breeze/scalable/status/inactive-quassel-tray.svg: status.inactive.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_TRAY_INACTIVE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_TRAY_INACTIVE_GLOBE)"/' \
	> $@
out/desktop/icons/breeze/scalable/status/inactive-quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="gradientBackgroundStart" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZE_INACTIVE_START)"/' \
	| sed -r 's/(id="gradientBackgroundEnd" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZE_INACTIVE_END)"/' \
	> $@
out/desktop/icons/breeze/scalable/status/message-quassel-tray-inverted.svg: status.message.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_TRAY_MESSAGE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_TRAY_MESSAGE_INVERTED_GLOBE)"/' \
	> $@
out/desktop/icons/breeze/scalable/status/message-quassel-tray.svg: status.message.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZE_TRAY_MESSAGE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZE_TRAY_MESSAGE_GLOBE)"/' \
	> $@
out/desktop/icons/breeze/scalable/status/message-quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="gradientBackgroundStart" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZE_MESSAGE_START)"/' \
	| sed -r 's/(id="gradientBackgroundEnd" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZE_MESSAGE_END)"/' \
	> $@

.PHONY: breeze-dark
breeze-dark: \
 out/desktop/icons/breeze-dark/apps/32/quassel.svg \
 out/desktop/icons/breeze-dark/apps/48/quassel.svg \
 out/desktop/icons/breeze-dark/apps/64/quassel.svg \
 out/desktop/icons/breeze-dark/scalable/apps/quassel.svg \
 out/desktop/icons/breeze-dark/actions/24/connect-quassel.svg \
 out/desktop/icons/breeze-dark/actions/24/disconnect-quassel.svg \
 out/desktop/icons/breeze-dark/actions/32/connect-quassel.svg \
 out/desktop/icons/breeze-dark/actions/32/disconnect-quassel.svg \
 out/desktop/icons/breeze-dark/scalable/actions/connect-quassel.svg \
 out/desktop/icons/breeze-dark/scalable/actions/disconnect-quassel.svg \
 out/desktop/icons/breeze-dark/status/24/active-quassel-tray-inverted.svg \
 out/desktop/icons/breeze-dark/status/24/active-quassel-tray.svg \
 out/desktop/icons/breeze-dark/status/24/inactive-quassel-tray-inverted.svg \
 out/desktop/icons/breeze-dark/status/24/inactive-quassel-tray.svg \
 out/desktop/icons/breeze-dark/status/24/inactive-quassel.svg \
 out/desktop/icons/breeze-dark/status/24/message-quassel-tray-inverted.svg \
 out/desktop/icons/breeze-dark/status/24/message-quassel-tray.svg \
 out/desktop/icons/breeze-dark/status/24/message-quassel.svg \
 out/desktop/icons/breeze-dark/status/64/active-quassel-tray-inverted.svg \
 out/desktop/icons/breeze-dark/status/64/active-quassel-tray.svg \
 out/desktop/icons/breeze-dark/status/64/inactive-quassel-tray-inverted.svg \
 out/desktop/icons/breeze-dark/status/64/inactive-quassel-tray.svg \
 out/desktop/icons/breeze-dark/status/64/inactive-quassel.svg \
 out/desktop/icons/breeze-dark/status/64/message-quassel-tray-inverted.svg \
 out/desktop/icons/breeze-dark/status/64/message-quassel-tray.svg \
 out/desktop/icons/breeze-dark/status/64/message-quassel.svg \
 out/desktop/icons/breeze-dark/scalable/status/active-quassel-tray-inverted.svg \
 out/desktop/icons/breeze-dark/scalable/status/active-quassel-tray.svg \
 out/desktop/icons/breeze-dark/scalable/status/inactive-quassel-tray-inverted.svg \
 out/desktop/icons/breeze-dark/scalable/status/inactive-quassel-tray.svg \
 out/desktop/icons/breeze-dark/scalable/status/inactive-quassel.svg \
 out/desktop/icons/breeze-dark/scalable/status/message-quassel-tray-inverted.svg \
 out/desktop/icons/breeze-dark/scalable/status/message-quassel-tray.svg \
 out/desktop/icons/breeze-dark/scalable/status/message-quassel.svg \
 out/desktop/icons/breeze-dark/scalable/status/active-quassel-tray-inverted.svg \
 out/desktop/icons/breeze-dark/scalable/status/active-quassel-tray.svg \
 out/desktop/icons/breeze-dark/scalable/status/inactive-quassel-tray-inverted.svg \
 out/desktop/icons/breeze-dark/scalable/status/inactive-quassel-tray.svg \
 out/desktop/icons/breeze-dark/scalable/status/inactive-quassel.svg \
 out/desktop/icons/breeze-dark/scalable/status/message-quassel-tray-inverted.svg \
 out/desktop/icons/breeze-dark/scalable/status/message-quassel-tray.svg \
 out/desktop/icons/breeze-dark/scalable/status/message-quassel.svg

# App icons
out/desktop/icons/breeze-dark/apps/32/quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(<svg.*)(>)/\1 width="32px" height="32px"\2/' \
	> $@
out/desktop/icons/breeze-dark/apps/48/quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(<svg.*)(>)/\1 width="48px" height="48px"\2/' \
	> $@
out/desktop/icons/breeze-dark/apps/64/quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/breeze-dark/scalable/apps/quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	> $@

# Action icons
out/desktop/icons/breeze-dark/actions/24/connect-quassel.svg: action.connect.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_CONNECT_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_CONNECT_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/breeze-dark/actions/24/disconnect-quassel.svg: action.disconnect.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_DISCONNECT_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_DISCONNECT_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/breeze-dark/actions/32/connect-quassel.svg: action.connect.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_CONNECT_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_CONNECT_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="32px" height="32px"\2/' \
	> $@
out/desktop/icons/breeze-dark/actions/32/disconnect-quassel.svg: action.disconnect.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_DISCONNECT_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_DISCONNECT_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="32px" height="32px"\2/' \
	> $@
out/desktop/icons/breeze-dark/scalable/actions/connect-quassel.svg: action.connect.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_CONNECT_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_CONNECT_GLOBE)"/' \
	> $@
out/desktop/icons/breeze-dark/scalable/actions/disconnect-quassel.svg: action.disconnect.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_DISCONNECT_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_DISCONNECT_GLOBE)"/' \
	> $@

# Status icons
out/desktop/icons/breeze-dark/status/24/active-quassel-tray-inverted.svg: status.active.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_ACTIVE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_ACTIVE_INVERTED_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/breeze-dark/status/24/active-quassel-tray.svg: status.active.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_ACTIVE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_ACTIVE_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/breeze-dark/status/24/inactive-quassel-tray-inverted.svg: status.inactive.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_INACTIVE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_INACTIVE_INVERTED_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/breeze-dark/status/24/inactive-quassel-tray.svg: status.inactive.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_INACTIVE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_INACTIVE_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/breeze-dark/status/24/inactive-quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="gradientBackgroundStart" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZEDARK_INACTIVE_START)"/' \
	| sed -r 's/(id="gradientBackgroundEnd" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZEDARK_INACTIVE_END)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/breeze-dark/status/24/message-quassel-tray-inverted.svg: status.message.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_MESSAGE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_MESSAGE_INVERTED_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/breeze-dark/status/24/message-quassel-tray.svg: status.message.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_MESSAGE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_MESSAGE_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/breeze-dark/status/24/message-quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="gradientBackgroundStart" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZEDARK_MESSAGE_START)"/' \
	| sed -r 's/(id="gradientBackgroundEnd" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZEDARK_MESSAGE_END)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="24px" height="24px"\2/' \
	> $@
out/desktop/icons/breeze-dark/status/64/active-quassel-tray-inverted.svg: status.active.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_ACTIVE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_ACTIVE_INVERTED_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/breeze-dark/status/64/active-quassel-tray.svg: status.active.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_ACTIVE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_ACTIVE_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/breeze-dark/status/64/inactive-quassel-tray-inverted.svg: status.inactive.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_INACTIVE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_INACTIVE_INVERTED_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/breeze-dark/status/64/inactive-quassel-tray.svg: status.inactive.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_INACTIVE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_INACTIVE_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/breeze-dark/status/64/inactive-quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="gradientBackgroundStart" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZEDARK_INACTIVE_START)"/' \
	| sed -r 's/(id="gradientBackgroundEnd" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZEDARK_INACTIVE_END)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/breeze-dark/status/64/message-quassel-tray-inverted.svg: status.message.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_MESSAGE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_MESSAGE_INVERTED_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/breeze-dark/status/64/message-quassel-tray.svg: status.message.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_MESSAGE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_MESSAGE_GLOBE)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/breeze-dark/status/64/message-quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="gradientBackgroundStart" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZEDARK_MESSAGE_START)"/' \
	| sed -r 's/(id="gradientBackgroundEnd" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZEDARK_MESSAGE_END)"/' \
	| sed -r 's/(<svg.*)(>)/\1 width="64px" height="64px"\2/' \
	> $@
out/desktop/icons/breeze-dark/scalable/status/active-quassel-tray-inverted.svg: status.active.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_ACTIVE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_ACTIVE_INVERTED_GLOBE)"/' \
	> $@
out/desktop/icons/breeze-dark/scalable/status/active-quassel-tray.svg: status.active.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_ACTIVE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_ACTIVE_GLOBE)"/' \
	> $@
out/desktop/icons/breeze-dark/scalable/status/inactive-quassel-tray-inverted.svg: status.inactive.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_INACTIVE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_INACTIVE_INVERTED_GLOBE)"/' \
	> $@
out/desktop/icons/breeze-dark/scalable/status/inactive-quassel-tray.svg: status.inactive.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_INACTIVE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_INACTIVE_GLOBE)"/' \
	> $@
out/desktop/icons/breeze-dark/scalable/status/inactive-quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="gradientBackgroundStart" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZEDARK_INACTIVE_START)"/' \
	| sed -r 's/(id="gradientBackgroundEnd" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZEDARK_INACTIVE_END)"/' \
	> $@
out/desktop/icons/breeze-dark/scalable/status/message-quassel-tray-inverted.svg: status.message.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_MESSAGE_INVERTED_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_MESSAGE_INVERTED_GLOBE)"/' \
	> $@
out/desktop/icons/breeze-dark/scalable/status/message-quassel-tray.svg: status.message.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="ring")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_MESSAGE_RING)"/' \
	| sed -r 's/(id="globe")/\1 fill="#$(COLOR_BREEZEDARK_TRAY_MESSAGE_GLOBE)"/' \
	> $@
out/desktop/icons/breeze-dark/scalable/status/message-quassel.svg: logo.kde.svg
	mkdir -p $(@D)
	cat $< \
	| sed -r 's/(id="gradientBackgroundStart" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZEDARK_MESSAGE_START)"/' \
	| sed -r 's/(id="gradientBackgroundEnd" stop-color=)"#[0-9a-fA-F]{0,6}"/\1"#$(COLOR_BREEZEDARK_MESSAGE_END)"/' \
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
	convert $< -define icon:auto-resize=256,128,64,48,32,22,16 $@
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
