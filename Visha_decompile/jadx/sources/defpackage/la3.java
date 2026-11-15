package defpackage;

import com.blankj.utilcode.util.h;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public abstract class la3 {
    public static byte[] a(byte[] bArr) {
        return g(bArr, "SHA-1");
    }

    public static String b(String str) {
        return (str == null || str.length() == 0) ? "" : c(str.getBytes());
    }

    public static String c(byte[] bArr) {
        return h.b(a(bArr));
    }

    public static byte[] d(byte[] bArr) {
        return g(bArr, "SHA-256");
    }

    public static String e(String str) {
        return (str == null || str.length() == 0) ? "" : f(str.getBytes());
    }

    public static String f(byte[] bArr) {
        return h.b(d(bArr));
    }

    public static byte[] g(byte[] bArr, String str) {
        if (bArr != null && bArr.length > 0) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(str);
                messageDigest.update(bArr);
                return messageDigest.digest();
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
