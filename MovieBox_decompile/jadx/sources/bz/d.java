package bz;

import android.util.Log;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class d {

    private Cipher f16343a;

    private Cipher f16344b;

    public d(byte[] bArr) {
        byte[] bytes = "abcdefghijk1mnop".getBytes();
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            this.f16343a = cipher;
            cipher.init(1, secretKeySpec, new IvParameterSpec(bytes));
            SecretKeySpec secretKeySpec2 = new SecretKeySpec(bArr, "AES");
            Cipher cipher2 = Cipher.getInstance("AES/CBC/PKCS5Padding");
            this.f16344b = cipher2;
            cipher2.init(2, secretKeySpec2, new IvParameterSpec(bytes));
        } catch (Exception e10) {
            com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e10));
        }
    }

    public byte[] a(String str) {
        Cipher cipher = this.f16343a;
        if (cipher != null) {
            try {
                return cipher.doFinal(str.getBytes("UTF-8"));
            } catch (Exception e10) {
                com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e10));
            }
        }
        return null;
    }
}
