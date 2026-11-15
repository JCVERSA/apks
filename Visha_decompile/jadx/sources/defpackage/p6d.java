package defpackage;

import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.PowerManager;
import android.system.Os;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.core.log.ObjectLogUtils;
import com.transsion.push.PushConstants;
import com.transsion.sdk.oneid.data.IdChangeInfo;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import org.json.JSONObject;

public abstract class p6d {
    public static ObjectLogUtils a;

    public static String a() {
        try {
            return UUID.nameUUIDFromBytes(String.valueOf(Os.statvfs(Environment.getExternalStorageDirectory().getPath()).f_fsid).getBytes()).toString();
        } catch (Exception e) {
            m(Log.getStackTraceString(e));
            return "";
        }
    }

    public static String b(long j) {
        try {
            if (j >= 1073741824) {
                return String.format(Locale.ENGLISH, "%.1fGB", Float.valueOf(j / 1073741824));
            }
            if (j >= 1048576) {
                float f = j / 1048576;
                return String.format(Locale.ENGLISH, f > 100.0f ? "%.0fMB" : "%.1fMB", Float.valueOf(f));
            }
            if (j < 1024) {
                return String.format(Locale.ENGLISH, "%dB", Long.valueOf(j));
            }
            float f2 = j / 1024;
            return String.format(Locale.ENGLISH, f2 > 100.0f ? "%.0fKB" : "%.1fKB", Float.valueOf(f2));
        } catch (Throwable unused) {
            return "0";
        }
    }

    public static String c(Context context) {
        double dDoubleValue;
        try {
            dDoubleValue = ((Double) Class.forName("com.android.internal.os.PowerProfile").getMethod("getBatteryCapacity", null).invoke(Class.forName("com.android.internal.os.PowerProfile").getConstructor(Context.class).newInstance(context), null)).doubleValue();
        } catch (Throwable unused) {
            dDoubleValue = 0.0d;
        }
        return String.valueOf(dDoubleValue);
    }

    public static String d(Context context, Handler.Callback callback) {
        Cursor cursorQuery = null;
        try {
            try {
                if (callback == null) {
                    cursorQuery = context.getContentResolver().query(Uri.parse("content://com.transsion.dataservice.provider/property"), null, "prop_key = ?", new String[]{"oneid"}, null);
                    if (cursorQuery != null && cursorQuery.moveToNext()) {
                        String string = cursorQuery.getString(0);
                        cursorQuery.close();
                        return string;
                    }
                } else {
                    new o9d(context, callback).b();
                }
                if (cursorQuery == null) {
                    return "";
                }
                cursorQuery.close();
                return "";
            } catch (Exception e) {
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public static String e(Context context, String str) {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("android.os.SystemProperties");
            return (String) clsLoadClass.getMethod("get", String.class).invoke(clsLoadClass, new String(str));
        } catch (IllegalArgumentException e) {
            throw e;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String f(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            byte[] bArr = new byte[1024];
            int i = fileInputStream.read(bArr);
            String str = i > 0 ? new String(bArr, 0, i) : null;
            fileInputStream.close();
            return str;
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static String g(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : bArrDigest) {
                String hexString = Integer.toHexString(b & 255);
                if (hexString.length() == 1) {
                    sb.append('0');
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException unused) {
            return String.valueOf(str.hashCode());
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x005e  */
    public static void h(Context context, List list) {
        byte b;
        try {
            Iterator it = list.iterator();
            JSONObject jSONObject = null;
            String str = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            while (it.hasNext()) {
                IdChangeInfo idChangeInfo = (IdChangeInfo) it.next();
                String str5 = idChangeInfo.id_type;
                int iHashCode = str5.hashCode();
                if (iHashCode != 3403373) {
                    if (iHashCode != 3417788) {
                        if (iHashCode != 3569626) {
                            if (iHashCode == 3611910 && str5.equals(PushConstants.PROVIDER_VAID)) {
                                b = 2;
                            } else {
                                b = -1;
                            }
                        } else if (str5.equals("tsid")) {
                            b = 0;
                        } else {
                            b = -1;
                        }
                    } else if (str5.equals("opid")) {
                        b = 3;
                    } else {
                        b = -1;
                    }
                } else if (str5.equals(CommonUrlParts.HUAWEI_OAID)) {
                    b = 1;
                } else {
                    b = -1;
                }
                if (b == 0) {
                    str = idChangeInfo.new_id;
                } else if (b == 1) {
                    str2 = idChangeInfo.new_id;
                } else if (b == 2) {
                    str3 = idChangeInfo.new_id;
                } else if (b == 3) {
                    str4 = idChangeInfo.new_id;
                }
            }
            r6d r6dVarB = r6d.b(context);
            if (!TextUtils.isEmpty(str)) {
                int iIntValue = Long.valueOf(System.currentTimeMillis() / 1000).intValue();
                try {
                    r6dVarB.d("oneid", str);
                    r6dVarB.c("oneid_time", iIntValue);
                    i("sync tsid success");
                } catch (Exception unused) {
                }
            }
            if (!TextUtils.isEmpty(str2)) {
                try {
                    r6dVarB.g(CommonUrlParts.HUAWEI_OAID, str2);
                    i("sync oaid success");
                } catch (Exception unused2) {
                }
            }
            if (TextUtils.isEmpty(str4) && TextUtils.isEmpty(str3)) {
                return;
            }
            File file = new File(x2d.a());
            if (context.checkCallingOrSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0 && context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                if (file.exists()) {
                    String strF = f(file);
                    if (strF != null && strF.length() > 0) {
                        jSONObject = new JSONObject(strF);
                    }
                } else {
                    File file2 = new File(Environment.getExternalStorageDirectory(), Environment.DIRECTORY_DOCUMENTS);
                    if ((file2.exists() || file2.mkdirs()) && file.createNewFile()) {
                        i("createNewFile success");
                    }
                }
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                String strOptString = jSONObject.optString("opid", "");
                if (TextUtils.isEmpty(strOptString)) {
                    jSONObject.put("opid", str4);
                    i("sync opid success");
                } else if (!TextUtils.equals(strOptString, str4)) {
                    r6d.b(context).d("opid", strOptString);
                    i("cover opid success");
                }
                if (!TextUtils.isEmpty(str3)) {
                    jSONObject.put(context.getPackageName(), str3);
                    i("sync vaid success");
                }
                String string = jSONObject.toString();
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    try {
                        fileOutputStream.write(string.getBytes());
                        fileOutputStream.close();
                    } catch (Throwable th) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Exception e) {
                    throw e;
                }
            }
        } catch (Exception e2) {
            m(e2.getMessage());
        }
    }

    public static void i(Object obj) {
        ObjectLogUtils objectLogUtils = a;
        if (objectLogUtils != null) {
            objectLogUtils.g(obj);
        }
    }

    public static String j() {
        try {
            long totalSpace = Environment.getDataDirectory().getTotalSpace() + Environment.getRootDirectory().getTotalSpace();
            long j = 1;
            long j2 = 1;
            while (true) {
                long j3 = j * j2;
                if (j3 >= totalSpace) {
                    return b(j3);
                }
                j <<= 1;
                if (j > 512) {
                    j2 *= 1000;
                    j = 1;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "0";
        }
    }

    public static String k(Context context) {
        String processName;
        try {
            processName = Application.getProcessName();
        } catch (Exception e) {
            e.printStackTrace();
            processName = null;
        }
        return TextUtils.isEmpty(processName) ? context.getPackageName() : processName;
    }

    public static String l(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            Signature[] signatureArr = packageInfo.signatures;
            if (signatureArr == null || signatureArr.length <= 0) {
                return "";
            }
            byte[] bArrDigest = messageDigest.digest(signatureArr[0].toByteArray());
            StringBuilder sb = new StringBuilder();
            for (byte b : bArrDigest) {
                sb.append(Integer.toHexString((b & 255) | 256).substring(1, 3));
            }
            return sb.toString().toLowerCase();
        } catch (Exception unused) {
            return "";
        }
    }

    public static void m(Object obj) {
        ObjectLogUtils objectLogUtils = a;
        if (objectLogUtils != null) {
            objectLogUtils.i(obj);
        }
    }

    public static String n(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return b(memoryInfo.totalMem);
        } catch (Throwable unused) {
            return "0";
        }
    }

    public static void o() {
        a = new ObjectLogUtils.a().p("OneID").q(true).n(false).m();
    }

    public static boolean p(Context context) {
        NetworkCapabilities networkCapabilities;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        try {
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null) {
                return networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static boolean q(Context context) {
        try {
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            return powerManager != null && powerManager.isScreenOn();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean r(Context context) {
        Bundle bundle;
        String string;
        try {
            ProviderInfo providerInfo = context.getPackageManager().getProviderInfo(new ComponentName("com.hoffnung", "com.transsion.dataservice.provider.DCSProvider"), 128);
            return (providerInfo == null || (bundle = providerInfo.metaData) == null || (string = bundle.getString("tran_dcs_version")) == null || string.compareTo("1.0.2.1") < 0) ? false : true;
        } catch (Exception unused) {
            return false;
        }
    }
}
