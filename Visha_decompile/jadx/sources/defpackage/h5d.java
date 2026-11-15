package defpackage;

import android.util.Log;
import com.transsion.athena.config.data.model.ehanat;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class h5d {
    public Cipher a;
    public Cipher b;

    public h5d(byte[] bArr) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher cipher = Cipher.getInstance(AESEncrypter.DEFAULT_ALGORITHM);
            this.a = cipher;
            cipher.init(1, secretKeySpec, new IvParameterSpec(ehanat.o));
            SecretKeySpec secretKeySpec2 = new SecretKeySpec(bArr, "AES");
            Cipher cipher2 = Cipher.getInstance(AESEncrypter.DEFAULT_ALGORITHM);
            this.b = cipher2;
            cipher2.init(2, secretKeySpec2, new IvParameterSpec(ehanat.o));
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
        }
    }

    public byte[] a(String str) {
        Cipher cipher = this.a;
        if (cipher != null) {
            try {
                return cipher.doFinal(str.getBytes("UTF-8"));
            } catch (Exception e) {
                c4d.d(Log.getStackTraceString(e));
            }
        }
        return null;
    }

    public byte[] b(byte[] bArr) {
        Cipher cipher = this.b;
        if (cipher != null) {
            try {
                return cipher.doFinal(bArr);
            } catch (Exception e) {
                c4d.d(Log.getStackTraceString(e));
            }
        }
        return null;
    }

    public byte[] c(byte[] bArr) {
        Cipher cipher = this.a;
        if (cipher != null) {
            try {
                return cipher.doFinal(bArr);
            } catch (Exception e) {
                c4d.d(Log.getStackTraceString(e));
            }
        }
        return null;
    }
}
