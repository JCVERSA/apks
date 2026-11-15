package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.hisavana.common.tracking.TrackingKey;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.Random;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import mgtv.qt.c;
import mgtv.qt.e;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class y4d {
    public static String a;

    public static String a() {
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            return cls.getMethod("getOsBrand", null).invoke(cls, null).toString().trim();
        } catch (Throwable unused) {
            return "-";
        }
    }

    public static String b(byte[] bArr) throws IOException {
        GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(bArr));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr2 = new byte[1024];
        while (true) {
            int i = gZIPInputStream.read(bArr2);
            if (i == -1) {
                f(gZIPInputStream);
                byteArrayOutputStream.flush();
                return new String(byteArrayOutputStream.toByteArray(), "utf-8");
            }
            byteArrayOutputStream.write(bArr2, 0, i);
        }
    }

    public static JSONObject c(String str, JSONObject jSONObject) {
        String strValueOf = String.valueOf(System.currentTimeMillis() / 1000);
        String strA = p4d.a(dpd.a(strValueOf).substring(0, 8), str);
        if (!TextUtils.isEmpty(strA)) {
            try {
                jSONObject.put("data", strA);
                jSONObject.put(TrackingKey.TS, strValueOf);
                return jSONObject;
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return new JSONObject();
    }

    public static JSONObject d(JSONObject jSONObject) {
        return c(jSONObject.toString(), new JSONObject());
    }

    public static void e(Context context) {
        JSONObject jSONObjectA;
        try {
            String str = (String) sjd.f(context, "nd_sys_t", "");
            String strS = e.s();
            if (strS.equals(str)) {
                return;
            }
            e.j(context, x("TruthInfo"), s4d.b(context, "0").a());
            e8d e8dVar = new e8d("dipt");
            String strConcat = "off".concat("dipt");
            try {
                if (!strConcat.equalsIgnoreCase((String) sjd.f(context, "dipt", "")) && (jSONObjectA = e8dVar.a(context)) != null) {
                    jSONObjectA.put("tp", "dipt");
                    StringBuilder sb = new StringBuilder();
                    sb.append(System.currentTimeMillis() / 1000);
                    byte[] bytes = sb.toString().getBytes();
                    byte[] bArrM = e.m(jSONObjectA.toString().getBytes(), bytes);
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byteArrayOutputStream.write(bytes);
                    byteArrayOutputStream.write(bArrM);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    String strOptString = m4d.a.optString("teaUrl", "https://d.qchannel03.cn/aul?ct=dj&aultp=dj");
                    aqd.g();
                    String str2 = (String) aqd.d(strOptString, byteArray, new dtd()).e();
                    if (!TextUtils.isEmpty(str2) && str2.contains(strConcat)) {
                        sjd.c(context, "dipt", strConcat);
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            sjd.c(context, "nd_sys_t", strS);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void f(Closeable... closeableArr) {
        for (Closeable closeable : closeableArr) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static void g(HttpURLConnection... httpURLConnectionArr) {
        for (int i = 0; i <= 0; i++) {
            HttpURLConnection httpURLConnection = httpURLConnectionArr[0];
            if (httpURLConnection != null) {
                try {
                    httpURLConnection.disconnect();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static boolean h(Context context, String str, long j) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("arch", 0);
        long j2 = sharedPreferences.getLong(str, 0L);
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        boolean z = Math.abs(jCurrentTimeMillis - j2) > j;
        if (z) {
            sharedPreferences.edit().putLong(str, jCurrentTimeMillis).apply();
        }
        return z;
    }

    public static boolean i(String str) {
        return TextUtils.isEmpty(str);
    }

    public static byte[] j(File file) {
        FileInputStream fileInputStream = new FileInputStream(file);
        byte[] bArrL = e.l(fileInputStream);
        f(fileInputStream);
        return bArrL;
    }

    public static String k() {
        Random random = new Random();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 8; i++) {
            sb.append("abcdefghijklmnopqrstuvwxyz0123456789".charAt(random.nextInt(36)));
        }
        return sb.toString();
    }

    public static String l(Context context) {
        return 1 != m4d.a.optLong("location", 0L) ? "" : context.getSharedPreferences("arch", 0).getString("sadr", "emt");
    }

    public static String m(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            String strK = k();
            return strK + p4d.a(strK, str);
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] n(byte[] bArr) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        GZIPOutputStream gZIPOutputStream = null;
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(byteArrayOutputStream);
                    try {
                        gZIPOutputStream2.write(bArr);
                        f(gZIPOutputStream2);
                    } catch (IOException e) {
                        e = e;
                        gZIPOutputStream = gZIPOutputStream2;
                        e.printStackTrace();
                        f(gZIPOutputStream);
                    } catch (Throwable th) {
                        th = th;
                        gZIPOutputStream = gZIPOutputStream2;
                        f(gZIPOutputStream);
                        throw th;
                    }
                } catch (IOException e2) {
                    e = e2;
                }
            } catch (IOException e3) {
                e = e3;
                byteArrayOutputStream = null;
            }
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String o() {
        return "";
    }

    public static String p(Context context) {
        if (a == null) {
            a = (context.getPackageName() + "-" + hld.r(context)).replace(" ", "");
        }
        return a;
    }

    public static String q(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return p4d.d(str.substring(0, 8), str.substring(8, str.length()));
        } catch (Exception unused) {
            return null;
        }
    }

    public static String r() {
        return c.g;
    }

    public static JSONObject s(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appkey", p(context));
            jSONObject.put("qid", tid.c(context));
            jSONObject.put("osver", Build.VERSION.RELEASE);
            jSONObject.put("sdk_int", Build.VERSION.SDK_INT);
            jSONObject.put("sdkver", 20250401);
            jSONObject.put("brand", Build.BRAND);
            jSONObject.put(CommonUrlParts.MODEL, Build.MODEL);
            String str = c.g;
            if (str == null) {
                str = "";
            }
            jSONObject.put("channel", str);
            jSONObject.put("NF7", "y");
            jSONObject.put("NCPN", "y");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public static JSONObject t(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new JSONObject(q(str));
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] v(String str) {
        return n(str.getBytes());
    }

    public static String w(Context context) {
        try {
            String string = Settings.Secure.getString(context.getContentResolver(), "default_input_method");
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            return string.split("/")[0];
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String x(String str) {
        return str + ".csv-" + e.t();
    }

    public static boolean y(String str) {
        if (str == null) {
            return true;
        }
        for (byte b : str.getBytes()) {
            if ((b >= 0 && b <= 31) || b >= 127) {
                return true;
            }
        }
        return false;
    }
}
