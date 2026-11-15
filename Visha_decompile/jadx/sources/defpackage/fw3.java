package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.text.format.Formatter;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Locale;

public class fw3 {
    public static FirebaseAnalytics b;
    public static Context c;
    public static String d;
    public static String e;
    public static String f;
    public static long g;
    public static long h;
    public boolean a;

    public fw3(Context context, String str) {
        c = context;
        b = FirebaseAnalytics.getInstance(context);
        h(str);
    }

    public static String a(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception unused) {
            return "";
        }
    }

    public static long b() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getBlockCountLong() * statFs.getBlockSizeLong();
    }

    public static long c(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }

    public static void h(String str) {
        String str2;
        try {
            str2 = c.getPackageManager().getPackageInfo(c.getPackageName(), 0).versionName;
        } catch (Exception e2) {
            Log.e("FirebaseImpl", "Failed to get version name", e2);
            str2 = "";
        }
        e = a(c);
        f = Build.MODEL;
        g = b();
        h = c(c);
        d = Locale.getDefault().getLanguage();
        b.setUserProperty("Channel", str);
        b.setUserProperty("countryLanguage", d);
        b.setUserProperty(ExifInterface.TAG_MODEL, f);
        b.setUserProperty("gaid", e);
        b.setUserProperty("emmcsize", Formatter.formatFileSize(c, h));
        b.setUserProperty("memsize", Formatter.formatFileSize(c, g));
        b.setUserProperty("versionName", str2);
    }

    public boolean d(Context context) {
        return (context.getApplicationInfo() == null || (context.getApplicationInfo().flags & 2) == 0) ? false : true;
    }

    public final boolean e() {
        if (this.a) {
            return false;
        }
        return d(c) || ActivityManager.isUserAMonkey();
    }

    public void f() {
        FirebaseAnalytics firebaseAnalytics = b;
        if (firebaseAnalytics != null) {
            firebaseAnalytics.resetAnalyticsData();
        }
    }

    public void g(boolean z) {
        this.a = z;
    }

    public void i(boolean z) {
        FirebaseAnalytics firebaseAnalytics = b;
        if (firebaseAnalytics != null) {
            firebaseAnalytics.setAnalyticsCollectionEnabled(z);
        }
    }

    public void j(String str, Bundle bundle, long j) {
        if (b == null || e()) {
            return;
        }
        if (bundle == null) {
            b.logEvent(str, new Bundle());
        } else {
            b.logEvent(str, bundle);
        }
    }
}
