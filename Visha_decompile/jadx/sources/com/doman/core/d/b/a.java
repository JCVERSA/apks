package com.doman.core.d.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.doman.core.CoreMain;
import java.io.File;
import java.io.FileFilter;
import java.util.regex.Pattern;

public final class a {
    static String a = null;
    private static int b = 1;
    private static long c;
    private static long d;
    private static String e;

    public class C0059a implements FileFilter {
        @Override
        public final boolean accept(File file) {
            return Pattern.matches("cpu[0-9]", file.getName());
        }
    }

    public static String a() {
        return "";
    }

    @SuppressLint({"MissingPermission"})
    public static String b() {
        return "";
    }

    public static int c(Context context) {
        return context.getResources().getConfiguration().orientation;
    }

    public static String d() {
        return Build.BRAND;
    }

    public static int e(Context context) {
        if (context == null) {
            return 1;
        }
        try {
            if (context.getResources() == null) {
                return 1;
            }
            return context.getResources().getConfiguration().orientation;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static int f(Context context) {
        try {
            return context.getResources().getDisplayMetrics().densityDpi;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static int g() {
        int i = b;
        if (i > 1) {
            return i;
        }
        try {
            int length = new File("/sys/devices/system/cpu/").listFiles(new C0059a()).length;
            b = length;
            return length;
        } catch (Throwable unused) {
            return 1;
        }
    }

    public static long h() {
        long j = c;
        if (j > 0) {
            return j;
        }
        try {
            if ("mounted".equals(Environment.getExternalStorageState())) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                long blockSize = ((long) statFs.getBlockSize()) * ((long) statFs.getBlockCount());
                c = blockSize;
                return blockSize;
            }
        } catch (Throwable unused) {
        }
        return 0L;
    }

    public static long i() {
        long j = d;
        if (j > 0) {
            return j;
        }
        try {
            StatFs statFs = new StatFs(Environment.getRootDirectory().getPath());
            d = ((long) statFs.getBlockSize()) * ((long) statFs.getBlockCount());
        } catch (Throwable unused) {
        }
        return d;
    }

    public static String j() {
        return "";
    }

    public static String k() {
        try {
            return CoreMain.getInstance().getContext().getPackageManager().getPackageInfo(CoreMain.getInstance().getContext().getPackageName(), 0).versionName;
        } catch (Exception unused) {
            return "1.0.0";
        }
    }

    public static String a(Context context) {
        if (e == null) {
            e = j(context);
        }
        String str = e;
        return str == null ? "" : str;
    }

    public static String b(Context context) {
        String networkOperator = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperator();
        if ("46001".equals(networkOperator) || "46006".equals(networkOperator) || "46009".equals(networkOperator)) {
            return "2";
        }
        if ("46000".equals(networkOperator) || "46002".equals(networkOperator) || "46004".equals(networkOperator) || "46007".equals(networkOperator)) {
            return "1";
        }
        return ("46003".equals(networkOperator) || "46005".equals(networkOperator) || "46011".equals(networkOperator)) ? "3" : "0";
    }

    public static String c() {
        return Build.MODEL;
    }

    public static String d(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return String.valueOf(context.getResources().getDisplayMetrics().widthPixels) + "*" + String.valueOf(context.getResources().getDisplayMetrics().heightPixels);
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String e() {
        return Build.VERSION.RELEASE;
    }

    public static String f() {
        return Build.MANUFACTURER;
    }

    public static String g(Context context) {
        return a(context, "com.huawei.appmarket");
    }

    public static String h(Context context) {
        return a(context, "com.huawei.hwid");
    }

    public static String i(Context context) {
        String networkOperator;
        try {
            networkOperator = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperator();
        } catch (Throwable unused) {
            networkOperator = null;
        }
        return networkOperator == null ? "" : networkOperator;
    }

    private static String j(Context context) {
        try {
            String string = Settings.System.getString(context.getContentResolver(), "android_id");
            return string == null ? "" : string;
        } catch (Exception unused) {
            return null;
        }
    }

    private static String a(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 16384);
            return packageInfo == null ? "" : String.valueOf(packageInfo.versionCode);
        } catch (Throwable unused) {
            return "";
        }
    }

    public static void a(String str) {
        a = str;
    }
}
