package defpackage;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public abstract class p4d {
    public static final String a = new String(o4d.d("REVTL0NCQy9QS0NTNVBhZGRpbmc="));
    public static final String b = new String(o4d.d("REVT"));

    public static String a(String str, String str2) {
        try {
            return o4d.b(c(str, str2.getBytes(), b()));
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static byte[] b() {
        return o4d.d("AQIDBAUGBwg=");
    }

    public static byte[] c(String str, byte[] bArr, byte[] bArr2) {
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr2);
            SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(), b);
            Cipher cipher = Cipher.getInstance(a);
            cipher.init(1, secretKeySpec, ivParameterSpec);
            return cipher.doFinal(bArr);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static String d(String str, String str2) {
        IvParameterSpec ivParameterSpec = new IvParameterSpec(b());
        SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(), b);
        try {
            Cipher cipher = Cipher.getInstance(a);
            cipher.init(2, secretKeySpec, ivParameterSpec);
            return new String(cipher.doFinal(o4d.d(str2)));
        } catch (Throwable unused) {
            return "";
        }
    }
}
