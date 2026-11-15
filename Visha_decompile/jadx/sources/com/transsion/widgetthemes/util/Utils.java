package com.transsion.widgetthemes.util;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Insets;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import androidx.core.content.ContextCompat;
import com.transsion.widgetsThemes.R;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import java.util.Locale;

public class Utils {
    public static final int APPCOMPAT = 1;
    public static final int GESTURE_ON = 2;
    public static final int HIOS = 0;
    public static final int ITE = 2;
    private static final String KEY_OLED = "ro.transsion.lcd.type";
    public static final int METERIAL = 0;
    private static final int OLED_SCREEN_STATE_NO = 0;
    private static final int OLED_SCREEN_STATE_NO_INIT = -1;
    private static final int OLED_SCREEN_STATE_YES = 1;
    public static final int PLATFORM_MTK = 1;
    public static final int PLATFORM_SPRD = 2;
    private static final String TAG = "widgetslib.Utils";
    private static final String VALUE_OLED = "1";
    private static final int WATERFALL_SCREEN_STATE_NO = 0;
    private static final int WATERFALL_SCREEN_STATE_NO_INIT = -1;
    private static final int WATERFALL_SCREEN_STATE_YES = 1;
    public static final int XOS = 1;
    public static final String[] mOsType = {"hios", "xos", "itel"};
    private static int WATERFALL_SCREEN_STATE = -1;
    private static int OLED_SCREEN_STATE = -1;
    public static String OS_TYPE = getSystemProperties("ro.tranos.type");

    public static void cancelViewShadowStyle(View view) {
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            Object tag = view.getTag(R.id.os_list_item_shadow_id);
            if (tag instanceof Boolean) {
                viewGroup.setClipToPadding(((Boolean) tag).booleanValue());
                view.setElevation(0.0f);
                view.setOutlineSpotShadowColor(0);
            }
        }
    }

    public static void executeViewShadowStyle(View view) {
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            Context context = view.getContext();
            view.setTag(R.id.os_list_item_shadow_id, Boolean.valueOf(viewGroup.getClipToPadding()));
            viewGroup.setClipToPadding(false);
            view.setElevation(context.getResources().getDimension(R.dimen.os_list_item_shadow_elevation));
            view.setOutlineSpotShadowColor(ContextCompat.getColor(context, R.color.os_list_item_shadow_color));
        }
    }

    private static int getAppTheme(boolean z, int i) {
        String osType = getOsType();
        if (TextUtils.isEmpty(osType)) {
            return R.style.OS_Theme_Material_hios;
        }
        String[] strArr = mOsType;
        if (osType.equalsIgnoreCase(strArr[0])) {
            if (z) {
                return i == 0 ? R.style.OS_Theme_Material_hios : R.style.OS_Theme_AppCompat_hios;
            }
            return i == 0 ? R.style.OS_Theme_Material_hios_NoActionBar : R.style.OS_Theme_AppCompat_hios_NoActionBar;
        }
        if (osType.equalsIgnoreCase(strArr[1])) {
            if (z) {
                return i == 0 ? R.style.OS_Theme_Material_xos : R.style.OS_Theme_AppCompat_xos;
            }
            return i == 0 ? R.style.OS_Theme_Material_xos_NoActionBar : R.style.OS_Theme_AppCompat_xos_NoActionBar;
        }
        if (z) {
            return i == 0 ? R.style.OS_Theme_Material_itel : R.style.OS_Theme_AppCompat_itel;
        }
        return i == 0 ? R.style.OS_Theme_Material_itel_NoActionBar : R.style.OS_Theme_AppCompat_itel_NoActionBar;
    }

    public static String getOsType() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, "ro.tranos.type");
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getSystemProperties(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e) {
            e.printStackTrace();
            Log.e(TAG, "getSystemProperties Exception " + e.getMessage());
            return "";
        }
    }

    public static boolean isGestureNavigationBarOn(Context context) {
        return Settings.Secure.getInt(context.getContentResolver(), "navigation_mode", 0) == 2;
    }

    public static boolean isOLED() {
        int i = OLED_SCREEN_STATE;
        if (i != -1) {
            return i == 1;
        }
        if ("1".equals(getSystemProperties(KEY_OLED))) {
            OLED_SCREEN_STATE = 1;
            return true;
        }
        OLED_SCREEN_STATE = 0;
        return false;
    }

    public static boolean isRtl() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }

    public static boolean isWaterfallScreen(Context context) {
        try {
            int i = WATERFALL_SCREEN_STATE;
            if (i != -1) {
                return i == 1;
            }
            int identifier = context.getResources().getIdentifier("waterfall_display_left_edge_size", "dimen", ConstantDeviceInfo.APP_PLATFORM);
            if ((identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0) > 0) {
                WATERFALL_SCREEN_STATE = 1;
                return true;
            }
            WATERFALL_SCREEN_STATE = 0;
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Deprecated
    public static void setAppTheme(Context context, boolean z, int i) {
        context.setTheme(getAppTheme(z, i));
    }

    private static void setCustomStylesValues(Context context, Resources.Theme theme, boolean z) {
        if (!(context instanceof Activity) || Build.VERSION.SDK_INT < 30 || ((Activity) context).getWindow() == null) {
            return;
        }
        int rotation = context.getDisplay().getRotation();
        if (rotation == 1) {
            if (z) {
                theme.applyStyle(R.style.OSThemeCurve_90_no_force_padding, true);
            } else {
                theme.applyStyle(isRtl() ? R.style.OSThemeCurve_90_RTL : R.style.OSThemeCurve_90, true);
            }
            theme.applyStyle(R.style.popup_menu_curse_90, true);
            return;
        }
        if (rotation != 3) {
            if (z) {
                theme.applyStyle(R.style.OSThemeCurve_0_180_no_force_padding, true);
            } else {
                theme.applyStyle(R.style.OSThemeCurve_0_180, true);
            }
            theme.applyStyle(R.style.popup_menu_curse, true);
            return;
        }
        if (z) {
            theme.applyStyle(R.style.OSThemeCurve_270_no_force_padding, true);
        } else {
            theme.applyStyle(isRtl() ? R.style.OSThemeCurve_270_RTL : R.style.OSThemeCurve_270, true);
        }
        theme.applyStyle(R.style.popup_menu_curse_270, true);
    }

    public static void setWindowInset(final Context context) {
        if (!(context instanceof Activity) || Build.VERSION.SDK_INT < 30) {
            return;
        }
        ((Activity) context).getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() {
            @Override
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                if (context == null) {
                    return windowInsets;
                }
                Insets insets = windowInsets.getInsets(WindowInsets.Side.all());
                Display display = context.getDisplay();
                boolean zIsGestureNavigationBarOn = Utils.isGestureNavigationBarOn(context);
                if (display != null) {
                    if (display.getRotation() == 1) {
                        windowInsets = new WindowInsets.Builder(windowInsets).setInsets(WindowInsets.Type.systemBars() | WindowInsets.Type.displayCutout(), Insets.of(0, insets.top, zIsGestureNavigationBarOn ? 0 : insets.right, 0)).build();
                    } else if (display.getRotation() == 3) {
                        windowInsets = new WindowInsets.Builder(windowInsets).setInsets(WindowInsets.Type.systemBars() | WindowInsets.Type.displayCutout(), Insets.of(zIsGestureNavigationBarOn ? 0 : insets.left, insets.top, 0, 0)).build();
                    } else {
                        windowInsets = new WindowInsets.Builder(windowInsets).setInsets(WindowInsets.Side.all(), Insets.of(0, insets.top, 0, insets.bottom)).build();
                    }
                }
                return view.onApplyWindowInsets(windowInsets);
            }
        });
    }

    public static void setAppTheme(Context context, int i, int i2, int i3) {
        setAppTheme(context, i, i2, i3, true);
    }

    public static void setAppTheme(Context context, int i, int i2, int i3, boolean z) {
        setAppTheme(context, i, i2, i3, z, true);
    }

    public static void setAppTheme(Context context, int i, int i2, int i3, boolean z, boolean z2) {
        context.setTheme(getAppTheme(i, i2, i3));
        if (!(context instanceof ContextThemeWrapper) || Build.VERSION.SDK_INT < 30) {
            return;
        }
        Resources.Theme theme = context.getTheme();
        boolean zIsWaterfallScreen = isWaterfallScreen(context);
        if (isOLED()) {
            theme.applyStyle(R.style.OSThemOled, true);
        }
        if (zIsWaterfallScreen) {
            theme.applyStyle(R.style.OsCurseSupport, true);
            if (z) {
                theme.applyStyle(R.style.actionbar_no_force_padding, true);
            }
            setCustomStylesValues(context, theme, z);
            if (z2) {
                setWindowInset(context);
            }
        }
    }

    private static int getAppTheme(int i, int i2, int i3) {
        String osType = getOsType();
        if (TextUtils.isEmpty(osType)) {
            return i;
        }
        String[] strArr = mOsType;
        if (osType.equalsIgnoreCase(strArr[2])) {
            return i3;
        }
        return osType.equalsIgnoreCase(strArr[1]) ? i2 : i;
    }
}
