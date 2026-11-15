package com.pgl.ssdk;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.pgl.ssdk.ces.out.DungeonFlag;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import org.json.JSONException;
import org.json.JSONObject;

public class t {

    private static volatile String f39366a = null;

    private static volatile String f39367b = null;

    private static volatile boolean f39368c = false;

    private static String f39369d = null;

    private static String f39370e = null;

    private static String f39371f = null;

    private static int f39372g = -1;

    private static long f39373h = 0;

    private static long f39374i = 0;

    private static volatile long f39375j = -1;

    public static void a(File file, boolean z10) throws Throwable {
        e eVarA;
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, CampaignEx.JSON_KEY_AD_R);
                try {
                    if (TextUtils.isEmpty(f39366a) && (eVarA = a(file)) != null) {
                        f39366a = a(eVarA.a());
                        f39369d = eVarA.b();
                        if (z10) {
                            a();
                            try {
                                randomAccessFile2.close();
                                return;
                            } catch (IOException unused) {
                                return;
                            }
                        }
                    }
                    if (TextUtils.isEmpty(f39370e)) {
                        f39370e = a(randomAccessFile2);
                    }
                    if (f39373h == 0) {
                        f39373h = randomAccessFile2.length() / 1024;
                    }
                    if (f39374i == 0) {
                        f39374i = b(file);
                    }
                    randomAccessFile2.close();
                } catch (FileNotFoundException unused2) {
                    randomAccessFile = randomAccessFile2;
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                } catch (IOException unused3) {
                    randomAccessFile = randomAccessFile2;
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    randomAccessFile = randomAccessFile2;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException unused4) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused5) {
            }
        } catch (FileNotFoundException unused6) {
        } catch (IOException unused7) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String b() throws Throwable {
        String string;
        String string2;
        String string3;
        String string4;
        int i10;
        long j10;
        long j11;
        if (TextUtils.isEmpty(f39366a) || TextUtils.isEmpty(f39370e) || f39372g == -1) {
            SharedPreferences sharedPreferencesA = u0.a(x.b());
            long j12 = -1;
            if (sharedPreferencesA != null) {
                j12 = sharedPreferencesA.getLong("mt", -1L);
                string2 = sharedPreferencesA.getString("sa", null);
                string3 = sharedPreferencesA.getString("sj", null);
                string4 = sharedPreferencesA.getString("md5", null);
                j10 = sharedPreferencesA.getLong("as", 0L);
                j11 = sharedPreferencesA.getLong("ds", 0L);
                i10 = sharedPreferencesA.getInt("cpc", -1);
                string = sharedPreferencesA.getString("ap", null);
            } else {
                string = null;
                string2 = null;
                string3 = null;
                string4 = null;
                i10 = 0;
                j10 = 0;
                j11 = 0;
            }
            String strC = c();
            if (strC == null) {
                return null;
            }
            File file = new File(strC);
            Object[] objArr = (Object[]) com.pgl.ssdk.ces.a.meta(158, x.b(), strC);
            Integer num = (Integer) objArr[0];
            String str = (String) objArr[1];
            long jLastModified = file.lastModified();
            if (jLastModified != j12 || string2 == null || i10 == -1) {
                f39375j = jLastModified;
                if (str != null) {
                    f39371f = str;
                }
                if (num != null) {
                    f39372g = num.intValue();
                }
                a(file, false);
                a();
            } else {
                f39366a = string2;
                f39369d = string3;
                f39373h = j10;
                f39374i = j11;
                f39370e = string4;
                f39372g = i10;
                f39371f = string;
            }
        }
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(f39366a)) {
                jSONObject.put(TmcConstants.EXTRA_APP_DEV_TOKEN, f39366a);
            }
            if (!TextUtils.isEmpty(f39369d)) {
                jSONObject.put("subject", f39369d);
            }
            if (!TextUtils.isEmpty(f39370e)) {
                jSONObject.put("md5", f39370e);
            }
            if (!TextUtils.isEmpty(f39371f)) {
                jSONObject.put("path", f39371f);
            }
            long j13 = f39373h;
            if (j13 != 0) {
                jSONObject.put("apkSize", j13);
            }
            long j14 = f39374i;
            if (j14 != 0) {
                jSONObject.put("dexSize", j14);
            }
            int i11 = f39372g;
            if (i11 != -1) {
                jSONObject.put("code", i11);
            }
            f();
            jSONObject.put("signpm", f39367b);
            if (!TextUtils.isEmpty(f39367b) && !TextUtils.isEmpty(f39366a)) {
                if (!f39367b.equals(f39366a)) {
                    f39368c = true;
                }
                jSONObject.put("rebud", f39368c);
            }
            return jSONObject.toString();
        } catch (JSONException unused) {
            return null;
        }
    }

    public static String c() {
        if (x.b() == null) {
            return null;
        }
        String packageCodePath = x.b().getPackageCodePath();
        if (TextUtils.isEmpty(packageCodePath)) {
            return null;
        }
        File file = new File(packageCodePath);
        if (file.exists() && file.canRead()) {
            return packageCodePath;
        }
        return null;
    }

    public static void d() throws Throwable {
        if (TextUtils.isEmpty(f39366a)) {
            SharedPreferences sharedPreferencesA = u0.a(x.b());
            String string = null;
            long j10 = -1;
            if (sharedPreferencesA != null) {
                j10 = sharedPreferencesA.getLong("mt", -1L);
                string = sharedPreferencesA.getString("sa", null);
            }
            String strC = c();
            if (TextUtils.isEmpty(strC)) {
                return;
            }
            File file = new File(strC);
            long jLastModified = file.lastModified();
            if (jLastModified != j10 || string == null) {
                f39375j = jLastModified;
                a(file, true);
                a();
            } else {
                f39366a = string;
            }
        }
        f();
        if (TextUtils.isEmpty(f39367b) || TextUtils.isEmpty(f39366a) || f39367b.equals(f39366a)) {
            return;
        }
        f39368c = true;
    }

    public static String e() throws Throwable {
        d();
        return f39366a;
    }

    public static String f() {
        if (!TextUtils.isEmpty(f39367b)) {
            return f39367b;
        }
        try {
            String strA = a(x.b().getPackageManager().getPackageInfo(x.b().getPackageName(), 64).signatures[0].toByteArray());
            f39367b = strA;
            return strA;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean g() throws Throwable {
        d();
        return f39368c;
    }

    public static void a() {
        SharedPreferences sharedPreferencesA = u0.a(x.b());
        if (sharedPreferencesA != null) {
            if (!TextUtils.isEmpty(f39366a)) {
                sharedPreferencesA.edit().putString("sa", f39366a).apply();
            }
            if (!TextUtils.isEmpty(f39370e)) {
                sharedPreferencesA.edit().putString("md5", f39370e).apply();
            }
            if (!TextUtils.isEmpty(f39369d)) {
                sharedPreferencesA.edit().putString("sj", f39369d).apply();
            }
            if (f39373h != 0) {
                sharedPreferencesA.edit().putLong("as", f39373h).apply();
            }
            if (f39374i != 0) {
                sharedPreferencesA.edit().putLong("ds", f39374i).apply();
            }
            if (f39375j != -1) {
                sharedPreferencesA.edit().putLong("mt", f39375j).apply();
            }
            if (f39372g != -1) {
                sharedPreferencesA.edit().putInt("cpc", f39372g).apply();
            }
            if (TextUtils.isEmpty(f39371f)) {
                return;
            }
            sharedPreferencesA.edit().putString("ap", f39371f).apply();
        }
    }

    public static String a(byte[] bArr) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(bArr);
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : bArrDigest) {
                sb2.append(Integer.toHexString((b10 & 255) | 256).substring(1, 3).toUpperCase());
                sb2.append(":");
            }
            return sb2.substring(0, sb2.length() - 1);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    @DungeonFlag
    private static e a(File file) throws Throwable {
        RandomAccessFile randomAccessFile;
        List<e> listA;
        try {
            try {
                randomAccessFile = new RandomAccessFile(file, CampaignEx.JSON_KEY_AD_R);
                try {
                    o oVarA = p.a(randomAccessFile, 0L, randomAccessFile.length());
                    listA = k.a(oVarA, c.a(oVarA));
                    try {
                        randomAccessFile.close();
                    } catch (IOException unused) {
                    }
                } catch (f.a unused2) {
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    listA = null;
                } catch (Throwable unused3) {
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    listA = null;
                }
            } catch (IOException unused4) {
                listA = null;
            }
        } catch (f.a unused5) {
            randomAccessFile = null;
        } catch (Throwable unused6) {
            randomAccessFile = null;
        }
        if (listA == null || listA.isEmpty()) {
            listA = j.a(file);
        }
        if (listA == null || listA.isEmpty()) {
            return null;
        }
        return listA.get(0);
    }

    public static long b(File file) throws Throwable {
        String str;
        ZipFile zipFile = null;
        try {
            try {
                ZipFile zipFile2 = new ZipFile(file);
                int i10 = 0;
                int size = 0;
                while (true) {
                    if (i10 == 0) {
                        str = "classes.dex";
                    } else {
                        str = String.format(Locale.getDefault(), "classes%d.dex", Integer.valueOf(i10));
                    }
                    try {
                        ZipEntry entry = zipFile2.getEntry(str);
                        if (entry == null) {
                            break;
                        }
                        size = (int) (((long) size) + entry.getSize());
                        i10++;
                    } catch (ZipException unused) {
                        zipFile = zipFile2;
                        if (zipFile == null) {
                            return 0L;
                        }
                        zipFile.close();
                        return 0L;
                    } catch (IOException unused2) {
                        zipFile = zipFile2;
                        if (zipFile == null) {
                            return 0L;
                        }
                        zipFile.close();
                        return 0L;
                    } catch (Throwable th2) {
                        th = th2;
                        zipFile = zipFile2;
                        if (zipFile != null) {
                            try {
                                zipFile.close();
                            } catch (IOException unused3) {
                            }
                        }
                        throw th;
                    }
                }
                long j10 = size / 1000;
                try {
                    zipFile2.close();
                } catch (IOException unused4) {
                }
                return j10;
            } catch (IOException unused5) {
                return 0L;
            }
        } catch (ZipException unused6) {
        } catch (IOException unused7) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String a(RandomAccessFile randomAccessFile) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bArr = new byte[1048576];
            while (true) {
                int i10 = randomAccessFile.read(bArr);
                if (i10 == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, i10);
            }
            String string = new BigInteger(1, messageDigest.digest()).toString(16);
            while (string.length() < 32) {
                string = "0".concat(string);
            }
            return string;
        } catch (FileNotFoundException | IOException | NoSuchAlgorithmException unused) {
            return "";
        }
    }
}
