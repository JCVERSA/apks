package defpackage;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public abstract class btd {
    public static String a = "UTF-8";

    public static String a(String str, String str2) {
        try {
            byte[] bArrB = b(ihd.b(str), str2.getBytes(a), 2);
            return bArrB == null ? "" : new String(bArrB, a);
        } catch (Throwable unused) {
            return "";
        }
    }

    public static byte[] b(byte[] bArr, byte[] bArr2, int i) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(i, secretKeySpec);
            return cipher.doFinal(bArr);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String c(String str, String str2) {
        try {
            byte[] bArrB = b(str.getBytes(a), str2.getBytes(a), 1);
            return bArrB == null ? "" : ihd.a(bArrB);
        } catch (Throwable unused) {
            return "";
        }
    }
}
