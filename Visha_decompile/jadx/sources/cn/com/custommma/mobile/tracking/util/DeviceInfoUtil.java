package cn.com.custommma.mobile.tracking.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Process;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.mgmi.ssp.MGTVAdFactory;
import defpackage.i4d;
import defpackage.ng9;
import defpackage.qx8;
import defpackage.rq5;
import defpackage.t3d;
import defpackage.ub7;
import defpackage.va1;
import defpackage.zq8;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONArray;

public abstract class DeviceInfoUtil {
    public static boolean a = false;
    public static String b = ".mzcookie.text";
    public static String c = t3d.d();
    public static String[] d = {"/.aaa/ddd/", "/.bbb/ddd", "/.ccc/ddd"};
    public static String e = "";
    public static String f = null;
    public static String g = null;
    public static String h = null;
    public static Map i = null;
    public static Map j = null;

    public static boolean b(Context context) {
        int i2 = 0;
        while (true) {
            try {
                String[] strArr = d;
                if (i2 >= strArr.length) {
                    break;
                }
                String str = c + strArr[i2];
                if (new File(str).exists() && new File(str, b).exists()) {
                    return true;
                }
                i2++;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return false;
    }

    public static int c() {
        String[] strArr = {"/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su"};
        for (int i2 = 0; i2 < 8; i2++) {
            if (new File(strArr[i2]).exists()) {
                return 1;
            }
        }
        return 0;
    }

    public static String d(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static String e(Context context) {
        try {
            CharSequence applicationLabel = context.getPackageManager().getApplicationLabel(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo);
            return applicationLabel != null ? applicationLabel.toString() : "";
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static JSONArray f(Context context) {
        return new JSONArray();
    }

    public static int g(Context context) {
        return Settings.Secure.getInt(context.getContentResolver(), "adb_enabled", 0) > 0 ? 1 : 0;
    }

    public static String h(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                if (activeNetworkInfo.getType() == 1) {
                    return "wifi";
                }
                if (activeNetworkInfo.getType() != 0) {
                    return "";
                }
                int subtype = activeNetworkInfo.getSubtype();
                if (subtype != 4 && subtype != 1 && subtype != 2) {
                    if (subtype != 3 && subtype != 8 && subtype != 6 && subtype != 5 && subtype != 12 && subtype != 10 && subtype != 9 && subtype != 14 && subtype != 15) {
                        return subtype == 13 ? "4g" : "";
                    }
                    return "3g";
                }
                return "2g";
            }
            return "";
        } catch (Exception unused) {
            return "";
        }
    }

    public static String i() {
        try {
            return Build.MODEL;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String j(final Context context, qx8 qx8Var) {
        if (a) {
            return "";
        }
        if ((zq8.a(context, "android.permission.READ_EXTERNAL_STORAGE") || zq8.b(context, "android.permission.READ_EXTERNAL_STORAGE")) && b(context)) {
            String strY = y(context);
            e = strY;
            if (!TextUtils.isEmpty(strY)) {
                return e;
            }
        }
        String strC = ng9.c(context);
        e = strC;
        if (TextUtils.isEmpty(strC)) {
            final String strU = u(qx8Var);
            if (TextUtils.isEmpty(strU)) {
                return e;
            }
            a = true;
            if (w(context)) {
                i4d.a().b(new Runnable() {

                    public class a implements cn.com.custommma.mobile.tracking.util.a.InterfaceC0019a {
                        public a() {
                        }

                        @Override
                        public void a(String str) {
                            ng9.f(context, str);
                            if (zq8.a(context, "android.permission.WRITE_EXTERNAL_STORAGE") || zq8.b(context, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                                DeviceInfoUtil.z(context, DeviceInfoUtil.e);
                            }
                        }
                    }

                    @Override
                    public void run() {
                        try {
                            DeviceInfoUtil.e = cn.com.custommma.mobile.tracking.util.a.b().f(context, strU, new a());
                        } catch (Throwable unused) {
                        }
                        boolean unused2 = DeviceInfoUtil.a = false;
                    }
                });
            }
            return e;
        }
        if ((zq8.a(context, "android.permission.READ_EXTERNAL_STORAGE") || zq8.b(context, "android.permission.READ_EXTERNAL_STORAGE")) && !b(context) && (zq8.a(context, "android.permission.WRITE_EXTERNAL_STORAGE") || zq8.b(context, "android.permission.WRITE_EXTERNAL_STORAGE"))) {
            z(context, e);
        }
        return e;
    }

    public static Map k(Context context) {
        if (i == null) {
            i = new HashMap();
            try {
                i.put("MAC", m(context).replace(StringUtils.PROCESS_POSTFIX_DELIMITER, "").toUpperCase());
                i.put("ANDROIDID", d(context));
                i.put("OSVS", n());
                i.put("TERM", i());
                i.put("ANAME", e(context));
                i.put("AKEY", o(context));
                i.put("SCWH", p(context));
                i.put("OS", "0");
                i.put("SDKVS", "V2.2.4");
                i.put("AAID", zq8.h(context));
            } catch (Exception unused) {
            }
        }
        i.put("WIFIBSSID", r(context).replace(StringUtils.PROCESS_POSTFIX_DELIMITER, "").toUpperCase());
        i.put("WIFISSID", s(context));
        i.put("WIFI", x(context));
        i.put("ADID", e);
        String oaid = MGTVAdFactory.getInstance().getOaid();
        if (TextUtils.isEmpty(oaid)) {
            oaid = ub7.a(context);
        }
        i.put("OAID", oaid);
        return i;
    }

    public static String l(Context context) {
        String str = h;
        if (str != null) {
            return str;
        }
        if (str == null) {
            h = "";
        }
        return h;
    }

    public static String m(Context context) {
        return "";
    }

    public static String n() {
        try {
            return Build.VERSION.RELEASE;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String o(Context context) {
        try {
            return context.getPackageName();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String p(Context context) {
        try {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            return displayMetrics.widthPixels + "x" + displayMetrics.heightPixels;
        } catch (Exception unused) {
            return "";
        }
    }

    public static HashMap q(String str, String str2, String str3) {
        HashMap map = new HashMap();
        try {
            for (String str4 : str.split(str2)) {
                String[] strArrSplit = str4.split(str3);
                if (strArrSplit.length == 1) {
                    map.put(strArrSplit[0], "");
                }
                if (strArrSplit.length == 2) {
                    map.put(strArrSplit[0], strArrSplit[1]);
                }
            }
        } catch (Exception unused) {
        }
        return map;
    }

    public static String r(Context context) {
        NetworkInfo activeNetworkInfo;
        WifiInfo connectionInfo;
        String str = f;
        if (str != null) {
            return str;
        }
        try {
            if ((zq8.a(context, "android.permission.ACCESS_WIFI_STATE") || zq8.b(context, "android.permission.ACCESS_WIFI_STATE")) && (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) != null && activeNetworkInfo.getType() == 1 && (connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo()) != null) {
                if (TextUtils.isEmpty(connectionInfo.getBSSID())) {
                    f = "";
                } else {
                    f = connectionInfo.getBSSID();
                }
            }
        } catch (Exception unused) {
            f = "";
        }
        String str2 = f;
        return str2 == null ? "" : str2;
    }

    public static String s(Context context) {
        NetworkInfo activeNetworkInfo;
        WifiInfo connectionInfo;
        String str = g;
        if (str != null) {
            return str;
        }
        try {
            if ((zq8.a(context, "android.permission.ACCESS_WIFI_STATE") || zq8.b(context, "android.permission.ACCESS_WIFI_STATE")) && (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) != null && activeNetworkInfo.getType() == 1 && (connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo()) != null) {
                if (TextUtils.isEmpty(connectionInfo.getSSID())) {
                    g = "";
                } else {
                    String strTrim = connectionInfo.getSSID().trim();
                    if (strTrim.startsWith("\"")) {
                        strTrim = strTrim.substring(1);
                    }
                    if (strTrim.endsWith("\"")) {
                        strTrim = strTrim.substring(0, strTrim.length() - 1);
                    }
                    g = strTrim;
                }
            }
        } catch (Exception unused) {
            g = "";
        }
        String str2 = g;
        return str2 == null ? "" : str2;
    }

    public static int t() {
        try {
            HashSet<String> hashSet = new HashSet();
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/" + Process.myPid() + "/maps"));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                if (line.endsWith(".so") || line.endsWith(".jar")) {
                    hashSet.add(line.substring(line.lastIndexOf(" ") + 1));
                }
            }
            int i2 = 0;
            for (String str : hashSet) {
                if (str.contains("com.saurik.substrate")) {
                    rq5.c("Substrate shared object found: " + str);
                    i2 = 1;
                }
                if (str.contains("XposedBridge.jar")) {
                    i2 = 1;
                }
            }
            bufferedReader.close();
            return i2;
        } catch (Exception e2) {
            rq5.c(e2.toString());
            return 0;
        }
    }

    public static String u(qx8 qx8Var) {
        if (qx8Var == null) {
            return "";
        }
        try {
            List<va1> list = qx8Var.b;
            if (list == null) {
                return "";
            }
            for (va1 va1Var : list) {
                if ("miaozhen".equals(va1Var.a)) {
                    return va1Var.l;
                }
            }
            return "";
        } catch (Exception unused) {
            return "";
        }
    }

    public static int v(Context context) {
        String str = Build.SERIAL;
        String str2 = Build.FINGERPRINT;
        if (!str2.startsWith("generic") && !str2.toLowerCase().contains("vbox") && !str2.toLowerCase().contains("test-keys")) {
            String str3 = Build.MODEL;
            if (!str3.contains("google_sdk") && !str3.contains("Emulator") && !str.equalsIgnoreCase(ConstantDeviceInfo.APP_PLATFORM) && !str3.contains("Android SDK built for x86") && !Build.MANUFACTURER.contains("Genymotion") && ((!Build.BRAND.startsWith("generic") || !Build.DEVICE.startsWith("generic")) && !"google_sdk".equals(Build.PRODUCT) && !((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName().toLowerCase().equals(ConstantDeviceInfo.APP_PLATFORM))) {
                return 0;
            }
        }
        return 1;
    }

    public static boolean w(Context context) {
        NetworkInfo[] allNetworkInfo;
        if (context != null) {
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager != null && (allNetworkInfo = connectivityManager.getAllNetworkInfo()) != null) {
                    for (NetworkInfo networkInfo : allNetworkInfo) {
                        if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                            return true;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public static String x(Context context) {
        try {
            String strH = h(context);
            if (TextUtils.isEmpty(strH)) {
                return "2";
            }
            return strH.equals("wifi") ? "1" : "0";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "2";
        }
    }

    public static String y(Context context) {
        int i2 = 0;
        String strTrim = "";
        while (true) {
            try {
                String[] strArr = d;
                if (i2 >= strArr.length) {
                    break;
                }
                File file = new File(c + strArr[i2], b);
                if (file.exists()) {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    byte[] bArr = new byte[1024];
                    StringBuilder sb = new StringBuilder("");
                    while (true) {
                        int i3 = fileInputStream.read(bArr);
                        if (i3 <= 0) {
                            break;
                        }
                        sb.append(new String(bArr, 0, i3));
                    }
                    fileInputStream.close();
                    strTrim = sb.toString().trim();
                    if (strTrim != null && strTrim != "" && (strTrim = Pattern.compile("\\s*|\t|\r|\n").matcher(strTrim).replaceAll("")) != null && strTrim.length() > 0) {
                        return strTrim;
                    }
                }
                i2++;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return strTrim;
    }

    public static boolean z(Context context, String str) {
        int i2 = 0;
        boolean z = false;
        while (true) {
            try {
                String[] strArr = d;
                if (i2 >= strArr.length) {
                    break;
                }
                String str2 = c + strArr[i2];
                File file = new File(str2);
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(str2, b);
                if (!file2.exists()) {
                    file2.createNewFile();
                }
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                fileOutputStream.write(str.getBytes());
                fileOutputStream.close();
                i2++;
                z = true;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return z;
    }
}
