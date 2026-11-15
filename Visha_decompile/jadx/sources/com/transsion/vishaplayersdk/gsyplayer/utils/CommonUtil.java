package com.transsion.vishaplayersdk.gsyplayer.utils;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.net.ConnectivityManager;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.WindowManager;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.widget.TintContextWrapper;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.vishaplayersdk.base.config.PlayerConstant;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import java.io.File;
import java.util.Formatter;
import java.util.Locale;

public class CommonUtil {
    private static final String TAG = PlayerConstant.TAG_GLOBAL_PREFIX_PLAYER + CommonUtil.class.getSimpleName();

    public static void deleteFile(String str) {
        File file = new File(str);
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
                return;
            }
            for (String str2 : file.list()) {
                deleteFile(str + File.separator + str2);
            }
            file.delete();
        }
    }

    public static int dip2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int getActionBarHeight(Activity activity) {
        TypedValue typedValue = new TypedValue();
        if (activity.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true)) {
            return TypedValue.complexToDimensionPixelSize(typedValue.data, activity.getResources().getDisplayMetrics());
        }
        return 0;
    }

    public static Activity getActivityContext(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof TintContextWrapper) {
            return scanForActivity(((TintContextWrapper) context).getBaseContext());
        }
        if (context instanceof ContextWrapper) {
            return scanForActivity(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static AppCompatActivity getAppCompActivity(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof AppCompatActivity) {
            return (AppCompatActivity) context;
        }
        if (context instanceof ContextThemeWrapper) {
            return getAppCompActivity(((ContextThemeWrapper) context).getBaseContext());
        }
        return null;
    }

    public static boolean getCurrentScreenLand(Activity activity) {
        return activity.getWindowManager().getDefaultDisplay().getRotation() == 1 || activity.getWindowManager().getDefaultDisplay().getRotation() == 3;
    }

    public static int getScreenHeight(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static int getScreenWidth(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public static int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", ConstantDeviceInfo.APP_PLATFORM);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static String getTextSpeed(long j) {
        if (j >= 0 && j < 1024) {
            return j + " KB/s";
        }
        if (j >= 1024 && j < 1048576) {
            return Long.toString(j / 1024) + " KB/s";
        }
        if (j < 1048576 || j >= 1073741824) {
            return "";
        }
        return Long.toString(j / 1048576) + " MB/s";
    }

    public static void hideNavKey(Context context) {
        ((Activity) context).getWindow().getDecorView().setSystemUiVisibility(3074);
    }

    @SuppressLint({"RestrictedApi"})
    public static void hideSupportActionBar(Context context, boolean z, boolean z2) {
        AppCompatActivity appCompActivity;
        ActionBar supportActionBar;
        LogUtils.j(TAG, "hideSupportActionBar: " + z + " statusBar: " + z2);
        if (z && (appCompActivity = getAppCompActivity(context)) != null && (supportActionBar = appCompActivity.getSupportActionBar()) != null) {
            supportActionBar.setShowHideAnimationEnabled(false);
            supportActionBar.hide();
        }
        if (z2) {
            if (context instanceof FragmentActivity) {
                ((FragmentActivity) context).getWindow().setFlags(1024, 1024);
            } else if (context instanceof Activity) {
                ((Activity) context).getWindow().setFlags(1024, 1024);
            } else {
                getAppCompActivity(context).getWindow().setFlags(1024, 1024);
            }
        }
    }

    public static boolean isWifiConnected(Context context) {
        return ((ConnectivityManager) context.getSystemService("connectivity")).getNetworkInfo(1).isConnected();
    }

    public static boolean isZh(Context context) {
        return context.getResources().getConfiguration().locale.getLanguage().endsWith("zh");
    }

    public static int px2dip(Context context, float f) {
        return (int) ((f / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static Activity scanForActivity(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof TintContextWrapper) {
            return scanForActivity(((TintContextWrapper) context).getBaseContext());
        }
        if (context instanceof ContextWrapper) {
            return scanForActivity(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static void showNavKey(Context context, int i) {
        ((Activity) context).getWindow().getDecorView().setSystemUiVisibility(i);
    }

    @SuppressLint({"RestrictedApi"})
    public static void showSupportActionBar(Context context, boolean z, boolean z2) {
        AppCompatActivity appCompActivity;
        ActionBar supportActionBar;
        LogUtils.j(TAG, "showSupportActionBar: " + z + " statusBar: " + z2);
        if (z && (appCompActivity = getAppCompActivity(context)) != null && (supportActionBar = appCompActivity.getSupportActionBar()) != null) {
            supportActionBar.setShowHideAnimationEnabled(false);
            supportActionBar.show();
        }
        if (z2) {
            if (context instanceof FragmentActivity) {
                ((FragmentActivity) context).getWindow().clearFlags(1024);
            } else if (context instanceof Activity) {
                ((Activity) context).getWindow().clearFlags(1024);
            } else {
                getAppCompActivity(context).getWindow().clearFlags(1024);
            }
        }
    }

    public static String stringForTime(int i) {
        if (i <= 0 || i >= 86400000) {
            return "00:00";
        }
        int i2 = i / 1000;
        int i3 = i2 % 60;
        int i4 = (i2 / 60) % 60;
        int i5 = i2 / 3600;
        Formatter formatter = new Formatter(new StringBuilder(), Locale.getDefault());
        try {
            if (i5 > 0) {
                String string = formatter.format("%d:%02d:%02d", Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i3)).toString();
                formatter.close();
                return string;
            }
            String string2 = formatter.format("%02d:%02d", Integer.valueOf(i4), Integer.valueOf(i3)).toString();
            formatter.close();
            return string2;
        } catch (Throwable th) {
            try {
                formatter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
