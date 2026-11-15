package defpackage;

import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;

public abstract class aud {
    public static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static long a(File file) {
        long jA;
        long j = 0;
        try {
            if (!file.exists()) {
                return 0L;
            }
            for (File file2 : file.listFiles()) {
                if (file2 == null || !file2.isFile()) {
                    if (file2 != null && file2.isDirectory()) {
                        jA = a(file2);
                    }
                } else {
                    jA = file2.length();
                }
                j += jA;
            }
        } catch (Throwable unused) {
        }
        return j;
    }

    public static String b(File file, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String strH = h(file);
        if (str.equalsIgnoreCase(strH)) {
            return null;
        }
        return strH;
    }

    public static String c(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i = 0; i < bArr.length; i++) {
            char[] cArr = a;
            sb.append(cArr[(bArr[i] & 240) >>> 4]);
            sb.append(cArr[bArr[i] & 15]);
        }
        return sb.toString();
    }

    public static void d(String str, long j) {
        File[] fileArrListFiles;
        File file = new File(str);
        if (!file.exists()) {
            i(str);
            return;
        }
        if (a(file) <= j || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        int length = fileArrListFiles.length;
        long j2 = 0;
        File file2 = null;
        for (int i = 0; i < length; i++) {
            File file3 = fileArrListFiles[i];
            if (file3 != null) {
                if (f(file3)) {
                    file2 = file3;
                    break;
                }
                long jLastModified = file3.lastModified();
                if (i == 0) {
                    j2 = jLastModified;
                }
                if (jLastModified <= j2) {
                    file2 = file3;
                    j2 = jLastModified;
                }
            }
        }
        if (file2 != null) {
            g(file2.getAbsolutePath());
        }
        i(str);
        d(str, j);
    }

    public static boolean e(String str) {
        if (str == null) {
            return false;
        }
        try {
            return new File(str).exists();
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static boolean f(File file) {
        try {
            return System.currentTimeMillis() - file.lastModified() >= 604800000;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean g(String str) {
        if (g4d.g(str)) {
            return true;
        }
        File file = new File(str);
        if (!file.exists()) {
            return true;
        }
        if (file.isFile()) {
            return file.delete();
        }
        if (!file.isDirectory()) {
            return false;
        }
        for (File file2 : file.listFiles()) {
            if (file2 != null && file2.isFile()) {
                file2.delete();
            } else if (file2 != null && file2.isDirectory()) {
                g(file2.getAbsolutePath());
            }
        }
        return file.delete();
    }

    public static String h(File file) {
        byte[] bArr = new byte[1024];
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i <= 0) {
                    fileInputStream.close();
                    return c(messageDigest.digest());
                }
                messageDigest.update(bArr, 0, i);
            }
        } catch (Exception unused) {
            return "NULL";
        }
    }

    public static void i(String str) {
        try {
            File file = new File(str);
            if (file.exists()) {
                return;
            }
            file.mkdir();
        } catch (Exception unused) {
        }
    }
}
