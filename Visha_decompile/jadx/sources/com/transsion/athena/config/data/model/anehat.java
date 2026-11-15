package com.transsion.athena.config.data.model;

import android.content.Context;
import android.os.Build;
import android.os.PowerManager;
import android.util.Log;
import androidx.core.util.Predicate;
import com.transsion.athena.taaneh.a;
import com.transsion.core.log.ObjectLogUtils;
import defpackage.c4d;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class anehat {
    public static String a(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : bArrDigest) {
                int i = b & 255;
                if (Integer.toHexString(i).length() == 1) {
                    sb.append("0");
                    sb.append(Integer.toHexString(i));
                } else {
                    sb.append(Integer.toHexString(i));
                }
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException unused) {
            return "";
        }
    }

    public static boolean b(Collection<?> collection) {
        return (collection == null || collection.isEmpty()) ? false : true;
    }

    public static boolean c(Context context) {
        try {
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            return powerManager != null && powerManager.isScreenOn();
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0065 A[Catch: Exception -> 0x0069, TRY_LEAVE, TryCatch #2 {Exception -> 0x0069, blocks: (B:36:0x0060, B:38:0x0065), top: B:45:0x0060 }] */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0027: MOVE (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:15:0x0027 */
    public static byte[] d(byte[] bArr) throws Throwable {
        GZIPInputStream gZIPInputStream;
        GZIPInputStream gZIPInputStream2;
        GZIPInputStream gZIPInputStream3 = null;
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(bArr));
                try {
                    byte[] bArr2 = new byte[1024];
                    while (true) {
                        int i = gZIPInputStream.read(bArr2);
                        if (i < 0) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr2, 0, i);
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    try {
                        byteArrayOutputStream.close();
                        gZIPInputStream.close();
                    } catch (Exception e) {
                        ObjectLogUtils objectLogUtils = c4d.a;
                        c4d.d(Log.getStackTraceString(e));
                    }
                    return byteArray;
                } catch (Exception e2) {
                    e = e2;
                    ObjectLogUtils objectLogUtils2 = c4d.a;
                    c4d.d(Log.getStackTraceString(e));
                    try {
                        byteArrayOutputStream.close();
                        if (gZIPInputStream != null) {
                            gZIPInputStream.close();
                        }
                    } catch (Exception e3) {
                        c4d.d(Log.getStackTraceString(e3));
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                gZIPInputStream3 = gZIPInputStream2;
                try {
                    byteArrayOutputStream.close();
                    if (gZIPInputStream3 != null) {
                        gZIPInputStream3.close();
                    }
                } catch (Exception e4) {
                    ObjectLogUtils objectLogUtils3 = c4d.a;
                    c4d.d(Log.getStackTraceString(e4));
                }
                throw th;
            }
        } catch (Exception e5) {
            e = e5;
            gZIPInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream.close();
            if (gZIPInputStream3 != null) {
                gZIPInputStream3.close();
            }
            throw th;
        }
    }

    public static byte[] b(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            byteArrayOutputStream.reset();
            return byteArray;
        } catch (Exception e) {
            ObjectLogUtils objectLogUtils = c4d.a;
            c4d.d(Log.getStackTraceString(e));
            return null;
        }
    }

    public static String c(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            stringBuffer.append(hexString.toUpperCase());
        }
        return stringBuffer.toString();
    }

    public static boolean a(Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    public static void a(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        if (jSONObject == null || jSONObject2 == null) {
            return;
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object obj = jSONObject.get(next);
            if (next.contains("&")) {
                if (!jSONObject2.has(next)) {
                    jSONObject2.put(next, obj);
                } else if (next.endsWith("&add")) {
                    jSONObject2.put(next, Long.parseLong(obj.toString()) + jSONObject2.getLong(next));
                } else if (next.endsWith("&append")) {
                    Object objPut = jSONObject2.get(next);
                    if (objPut instanceof JSONArray) {
                        ((JSONArray) objPut).put(obj);
                    } else {
                        objPut = new JSONArray().put(objPut).put(obj);
                    }
                    jSONObject2.put(next, objPut);
                }
            } else {
                jSONObject2.put(next, obj);
            }
        }
    }

    public static int b(Context context) {
        StringBuilder sb = new StringBuilder();
        try {
            String strU = com.transsion.athena.taaneh.athena.u(context);
            sb.append(Build.MODEL);
            sb.append(Build.BRAND);
            sb.append(com.transsion.athena.taaneh.athena.y(context));
            sb.append(Build.VERSION.RELEASE);
            sb.append(com.transsion.athena.taaneh.athena.x(context));
            sb.append(com.transsion.athena.taaneh.athena.v(context));
            sb.append(Locale.getDefault().getLanguage());
            if (strU == null) {
                strU = "";
            }
            sb.append(strU);
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
        }
        return sb.toString().hashCode();
    }

    public static JSONObject a(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(CommonUrlParts.MODEL, Build.MODEL);
            jSONObject.put("brand", Build.BRAND);
            jSONObject.put("appver", String.valueOf(com.transsion.athena.taaneh.athena.y(context)));
            jSONObject.put("anver", Build.VERSION.RELEASE);
            jSONObject.put("apppkg", com.transsion.athena.taaneh.athena.x(context));
            jSONObject.put("gaid", a.b());
            jSONObject.put("mcc", com.transsion.athena.taaneh.athena.v(context));
            jSONObject.put("lang", Locale.getDefault().getLanguage());
            jSONObject.put("installer", com.transsion.athena.taaneh.athena.u(context));
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
        }
        return jSONObject;
    }

    public static String a(Collection<? extends Object> collection, String str) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Object obj : collection) {
            if (z) {
                z = false;
            } else {
                sb.append(str);
            }
            sb.append(obj.toString());
        }
        return sb.toString();
    }

    public static byte[] a(String str) {
        if (str.length() < 1) {
            return null;
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < str.length() / 2; i++) {
            int i2 = i * 2;
            int i3 = i2 + 1;
            bArr[i] = (byte) ((Integer.parseInt(str.substring(i2, i3), 16) * 16) + Integer.parseInt(str.substring(i3, i2 + 2), 16));
        }
        return bArr;
    }

    public static void a(StringBuilder sb, Object obj) {
        if (sb.length() == 0) {
            sb.append(obj);
        } else {
            sb.append(StringUtils.COMMA);
            sb.append(obj);
        }
    }

    public static <E> int a(Collection<E> collection, Predicate<E> predicate) {
        int i = 0;
        if (a((Collection<?>) collection)) {
            return 0;
        }
        Iterator<E> it = collection.iterator();
        while (it.hasNext()) {
            if (predicate.test(it.next())) {
                i++;
            }
        }
        return i;
    }

    public static String a(InputStream inputStream) {
        try {
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    sb.append(line);
                } else {
                    bufferedReader.close();
                    inputStream.close();
                    return sb.toString();
                }
            }
        } catch (IOException e) {
            ObjectLogUtils objectLogUtils = c4d.a;
            c4d.d(Log.getStackTraceString(e));
            return null;
        }
    }

    public static Long a(Context context, String str, long j) throws IllegalArgumentException {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("android.os.SystemProperties");
            return (Long) clsLoadClass.getMethod("getLong", String.class, Long.TYPE).invoke(clsLoadClass, str, Long.valueOf(j));
        } catch (IllegalArgumentException e) {
            throw e;
        } catch (Exception unused) {
            return Long.valueOf(j);
        }
    }

    public static Boolean a(Context context, String str, boolean z) throws IllegalArgumentException {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("android.os.SystemProperties");
            return (Boolean) clsLoadClass.getMethod("getBoolean", String.class, Boolean.TYPE).invoke(clsLoadClass, str, Boolean.valueOf(z));
        } catch (IllegalArgumentException e) {
            throw e;
        } catch (Exception unused) {
            return Boolean.valueOf(z);
        }
    }
}
