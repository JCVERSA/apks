package com.transsion.athena.anateh;

import android.util.Log;
import com.transsion.athena.config.data.model.ehanat;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class athena {

    private Cipher f41434a;

    private Cipher f41435b;

    public athena(byte[] bArr) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            this.f41434a = cipher;
            cipher.init(1, secretKeySpec, new IvParameterSpec(ehanat.f41489o));
            SecretKeySpec secretKeySpec2 = new SecretKeySpec(bArr, "AES");
            Cipher cipher2 = Cipher.getInstance("AES/CBC/PKCS5Padding");
            this.f41435b = cipher2;
            cipher2.init(2, secretKeySpec2, new IvParameterSpec(ehanat.f41489o));
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
    }

    public byte[] a(String str) {
        Cipher cipher = this.f41434a;
        if (cipher != null) {
            try {
                return cipher.doFinal(str.getBytes("UTF-8"));
            } catch (Exception e10) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            }
        }
        return null;
    }

    public byte[] b(byte[] bArr) {
        Cipher cipher = this.f41434a;
        if (cipher != null) {
            try {
                return cipher.doFinal(bArr);
            } catch (Exception e10) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            }
        }
        return null;
    }

    public byte[] a(byte[] bArr) {
        Cipher cipher = this.f41435b;
        if (cipher != null) {
            try {
                return cipher.doFinal(bArr);
            } catch (Exception e10) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            }
        }
        return null;
    }
}
