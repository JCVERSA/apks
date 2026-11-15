package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import cn.mmachina.mobile.MGADSignUtils;
import com.mgmi.ads.api.c;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class na1 {
    public static String a(String str) {
        if (str == null) {
            return "";
        }
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (UnsupportedEncodingException unused) {
            return "";
        }
    }

    public static String b(String str, zf zfVar, va1 va1Var) {
        try {
            if (va1Var.f.c.containsKey(zfVar.a) && "md5".equalsIgnoreCase((String) va1Var.f.c.get(zfVar.a))) {
                str = j(str);
            }
            if (zfVar.c) {
                return str == null ? "" : URLEncoder.encode(str, "utf-8");
            }
            return str == null ? "" : str;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String c(String str) {
        try {
            Matcher matcher = Pattern.compile("^([\\w\\d]+):\\/\\/([\\w\\d\\-_]+(?:\\.[\\w\\d\\-_]+)*)").matcher(str);
            return matcher.find() ? matcher.group(0) : "";
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public static String d(Context context) {
        return "";
    }

    public static String e(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(str.getBytes());
                str = new BigInteger(1, messageDigest.digest()).toString(16);
                while (str.length() < 32) {
                    str = "0" + str;
                }
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
        }
        return str;
    }

    public static String f(String str) {
        String host = Uri.parse(str).getHost();
        return str.substring(str.indexOf(host) + host.length());
    }

    public static String g() {
        return Build.MODEL;
    }

    public static String h(String str, long j, String str2, String str3, String str4, String str5, boolean z) {
        try {
            return z ? k(str, j, str5, "1") : MGADSignUtils.mmaSdkSign(str, j, str2, str3, str4, str5);
        } catch (Exception unused) {
            return "";
        }
    }

    public static boolean i(Context context, int i) {
        NetworkInfo networkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null || (networkInfo = connectivityManager.getNetworkInfo(i)) == null) {
                return false;
            }
            return networkInfo.isAvailable();
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static String j(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(str.getBytes());
                str = new BigInteger(1, messageDigest.digest()).toString(16);
                while (str.length() < 32) {
                    str = "0" + str;
                }
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
        }
        return str;
    }

    public static String k(String str, long j, String str2, String str3) {
        String str4;
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        String host = Uri.parse(str2).getHost();
        int i = 0;
        int i2 = (!TextUtils.isEmpty(host) && str2.contains(host)) ? 1 : 0;
        String strF = f(str2);
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        String strValueOf = (jCurrentTimeMillis - j > 9 || jCurrentTimeMillis < j) ? String.valueOf(jCurrentTimeMillis) : String.valueOf(j);
        String str5 = "0";
        String strE = "";
        if (str3 != null) {
            String strD = d(c.a());
            if (!TextUtils.isEmpty(strD)) {
                if (strF.contains(strD) || strF.contains(e(strD))) {
                    strE = e(strD);
                    str5 = "1";
                } else {
                    str5 = "2";
                }
            }
        }
        String strG = g();
        if (TextUtils.isEmpty("com.hunantv.imgo.activity")) {
            i2 = 0;
        } else {
            strE = strE + e("com.hunantv.imgo.activity");
        }
        if (TextUtils.isEmpty(strG)) {
            i2 = 0;
        } else {
            strE = strE + e(strG);
        }
        if (!TextUtils.isEmpty(str)) {
            strE = strE + e(str);
            i = i2;
        }
        String strE2 = e(strE + e(strValueOf));
        if ((Long.parseLong(strValueOf) & 1) == 0) {
            str4 = e(strF) + strE2 + "be001211ca8a1e78749c03656a2bc07f4a6238eee08ced35edd6e9ff7e3b800a";
        } else {
            str4 = "be001211ca8a1e78749c03656a2bc07f4a6238eee08ced35edd6e9ff7e3b800a" + e(strF) + strE2;
        }
        return e(str4) + "00" + str5 + String.valueOf(i);
    }
}
