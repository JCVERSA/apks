package defpackage;

import android.util.Log;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class p9d {
    public Cipher a;
    public Cipher b;

    public p9d(byte[] bArr) {
        byte[] bytes = "abcdefghijk1mnop".getBytes();
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher cipher = Cipher.getInstance(AESEncrypter.DEFAULT_ALGORITHM);
            this.a = cipher;
            cipher.init(1, secretKeySpec, new IvParameterSpec(bytes));
            SecretKeySpec secretKeySpec2 = new SecretKeySpec(bArr, "AES");
            Cipher cipher2 = Cipher.getInstance(AESEncrypter.DEFAULT_ALGORITHM);
            this.b = cipher2;
            cipher2.init(2, secretKeySpec2, new IvParameterSpec(bytes));
        } catch (Exception e) {
            p6d.m(Log.getStackTraceString(e));
        }
    }

    public byte[] a(String str) {
        Cipher cipher = this.a;
        if (cipher != null) {
            try {
                return cipher.doFinal(str.getBytes("UTF-8"));
            } catch (Exception e) {
                p6d.m(Log.getStackTraceString(e));
            }
        }
        return null;
    }
}
