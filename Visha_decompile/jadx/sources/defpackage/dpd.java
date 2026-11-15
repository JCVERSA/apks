package defpackage;

import android.text.TextUtils;
import java.security.MessageDigest;

public abstract class dpd {
    public static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String a(String str) {
        return TextUtils.isEmpty(str) ? "" : b(str.trim().getBytes());
    }

    public static String b(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder(bArrDigest.length << 1);
            for (byte b : bArrDigest) {
                char[] cArr = a;
                sb.append(cArr[(b & 240) >>> 4]);
                sb.append(cArr[b & 15]);
            }
            return sb.toString();
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }
}
