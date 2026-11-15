package defpackage;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import androidx.core.content.ContextCompat;
import com.transsion.playercommon.activities.BasePermissionActivity;

public abstract class t08 {
    public static void a(Activity activity) {
        Intent intent = new Intent(BasePermissionActivity.PERMISSION_ACTION_ALL);
        intent.setData(Uri.parse("package:" + activity.getPackageName()));
        try {
            activity.startActivityForResult(intent, 131);
        } catch (ActivityNotFoundException unused) {
        }
    }

    public static boolean b(Context context) {
        if (Build.VERSION.SDK_INT >= 33) {
            return context.checkSelfPermission("android.permission.READ_MEDIA_AUDIO") == 0;
        }
        return c(context);
    }

    public static boolean c(Context context) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Environment.isExternalStorageManager();
        }
        return context.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0 && context.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0;
    }

    public static boolean d(Context context) {
        if (Build.VERSION.SDK_INT >= 33) {
            return context.checkSelfPermission("android.permission.READ_MEDIA_VIDEO") == 0;
        }
        return c(context);
    }

    public static Intent e(Context context) {
        Intent intent = new Intent();
        intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
        intent.putExtra("android.provider.extra.APP_PACKAGE", context.getPackageName());
        return intent;
    }

    public static boolean f(Context context) {
        if (Build.VERSION.SDK_INT >= 33) {
            return ContextCompat.checkSelfPermission(context, "android.permission.NEARBY_WIFI_DEVICES") == 0;
        }
        return ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_FINE_LOCATION") == 0;
    }

    public static boolean g(Context context) {
        return ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_FINE_LOCATION") == 0;
    }

    public static boolean h(Context context) {
        return ContextCompat.checkSelfPermission(context, "android.permission.NEARBY_WIFI_DEVICES") == 0;
    }

    public static boolean i(Context context) {
        return ContextCompat.checkSelfPermission(context, "android.permission.POST_NOTIFICATIONS") == 0;
    }

    public static boolean j() {
        return ((NotificationManager) se.a().getSystemService("notification")).areNotificationsEnabled();
    }

    public static void k(Context context) {
        Intent intentE = e(context);
        intentE.addFlags(268435456);
        context.startActivity(intentE);
    }

    public static void l(Activity activity) {
        if (Build.VERSION.SDK_INT >= 30) {
            a(activity);
        } else {
            m(activity, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"}, 132);
        }
    }

    public static void m(Activity activity, String[] strArr, int i) {
        activity.requestPermissions(strArr, i);
    }

    public static boolean n(Activity activity) {
        return Build.VERSION.SDK_INT >= 30 ? !Environment.isExternalStorageManager() : activity.shouldShowRequestPermissionRationale("android.permission.WRITE_EXTERNAL_STORAGE");
    }
}
