package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.videodownloader.model.Video;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;

public abstract class b23 {
    public static final int[] a = {-2429832, -10167571, -47600, -2236963};
    public static final HashSet b = new HashSet(Arrays.asList(".opensubtitles."));

    public static String a(String str) {
        try {
            return m(str);
        } catch (NoSuchAlgorithmException e) {
            Log.d("DownloadUtils", "field to get md5", e);
            return str.replaceAll("[\n`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。， 、？]", "").toLowerCase();
        }
    }

    public static String b(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            str = String.valueOf(System.currentTimeMillis());
        }
        if (t(str)) {
            String strR = r(str2);
            if (!TextUtils.isEmpty(strR)) {
                return zu3.u(str) + "_" + strR;
            }
        }
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        String strA = a(str2);
        if (TextUtils.isEmpty(strA)) {
            return str;
        }
        String strN = zu3.n(str);
        if (TextUtils.isEmpty(strN)) {
            return str + "_" + strA;
        }
        return zu3.u(str) + "_" + strA + Consts.DOT + strN;
    }

    public static String c(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer(bArr.length);
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & 255);
            if (hexString.length() < 2) {
                stringBuffer.append(0);
            }
            stringBuffer.append(hexString.toUpperCase());
        }
        return stringBuffer.toString();
    }

    public static boolean d(File file, File file2) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    byte[] bArr = new byte[2048];
                    while (true) {
                        int i = fileInputStream.read(bArr);
                        if (i == -1) {
                            fileOutputStream.close();
                            fileInputStream.close();
                            return true;
                        }
                        fileOutputStream.write(bArr, 0, i);
                        try {
                            fileInputStream.close();
                        } catch (Throwable th) {
                            th.addSuppressed(th);
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                fileInputStream.close();
                throw th4;
            }
        } catch (Exception e) {
            LogUtils.m("DownloadUtils", "field to copy file", e);
            return false;
        }
    }

    public static String e(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        if (str.contains("&") || str.contains("?")) {
            int iIndexOf = str.indexOf(38);
            if (iIndexOf < 0) {
                iIndexOf = str.indexOf(63);
            }
            str = str.substring(0, iIndexOf);
        }
        int iIndexOf2 = str.indexOf(95);
        return iIndexOf2 > 0 ? str.substring(0, iIndexOf2) : zu3.u(str);
    }

    public static boolean f(Context context, String str, String str2) {
        File file = new File(str2);
        File parentFile = file.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        file.setLastModified(System.currentTimeMillis());
        return d(new File(str), file);
    }

    public static String g(String str, String str2) {
        String strB = b(e(str), str2);
        if (!TextUtils.isEmpty(zu3.n(strB))) {
            return strB;
        }
        String strN = zu3.n(str);
        if (TextUtils.isEmpty(strN)) {
            return strB;
        }
        return strB + Consts.DOT + strN;
    }

    public static long h() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
    }

    public static byte[] i(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static String j(Context context) {
        if ("mounted".equals(Environment.getExternalStorageState()) && context.getExternalCacheDir() != null) {
            return context.getExternalCacheDir().getPath();
        }
        if (context.getCacheDir() != null) {
            return context.getCacheDir().getPath();
        }
        return null;
    }

    public static int k(int i) {
        return a[i];
    }

    public static long l(File file) {
        long jL = 0;
        if (!file.exists()) {
            return 0L;
        }
        if (!file.isDirectory()) {
            return file.length();
        }
        for (File file2 : file.listFiles()) {
            jL += l(file2);
        }
        return jL;
    }

    public static String m(String str) {
        return c(MessageDigest.getInstance("MD5").digest(str.getBytes())).toLowerCase();
    }

    public static String n(String str) {
        return TextUtils.isEmpty(str) ? "mp4" : str.toLowerCase();
    }

    public static int o(String str) {
        return k(p(str, a.length));
    }

    public static int p(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        return str.hashCode() % i;
    }

    public static long q() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getBlockCountLong() * statFs.getBlockSizeLong();
    }

    public static String r(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int iIndexOf = str.indexOf(63);
        if (iIndexOf >= 0) {
            str = str.substring(0, iIndexOf);
        }
        int iLastIndexOf = str.lastIndexOf(47);
        if (iLastIndexOf < 0 || iLastIndexOf >= str.length() - 1) {
            return null;
        }
        return str.substring(iLastIndexOf + 1);
    }

    public static boolean s(long j, long j2) {
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar.setTime(new Date(j));
        calendar2.setTime(new Date(j2));
        return calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6);
    }

    public static boolean t(String str) {
        if (TextUtils.isEmpty(str) || str.contains("&") || str.contains("?")) {
            return true;
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        if (lowerCase.endsWith(Video.SUFFIX.SUFFIX_MP4) || lowerCase.endsWith(Video.SUFFIX.SUFFIX_MKV) || lowerCase.endsWith(Video.SUFFIX.SUFFIX_WEBM) || lowerCase.endsWith(Video.SUFFIX.SUFFIX_M3U8) || lowerCase.endsWith(Video.SUFFIX.SUFFIX_MOV) || lowerCase.endsWith(".avi") || lowerCase.endsWith(".flv") || lowerCase.endsWith(".ts")) {
            return false;
        }
        if (str.length() > 100) {
            return true;
        }
        return TextUtils.isEmpty(zu3.n(str));
    }
}
