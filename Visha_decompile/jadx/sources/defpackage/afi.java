package defpackage;

import java.security.InvalidAlgorithmParameterException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Objects;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public abstract class afi {
    public static final ThreadLocal a = new zei();

    public static AlgorithmParameterSpec a(byte[] bArr, int i, int i2) {
        int i3 = fki.a;
        Objects.equals(System.getProperty("java.vendor"), "The Android Project");
        return new GCMParameterSpec(128, bArr, i, 12);
    }

    public static Cipher b() {
        return (Cipher) a.get();
    }

    public static SecretKey c(byte[] bArr) throws InvalidAlgorithmParameterException {
        cri.a(bArr.length);
        return new SecretKeySpec(bArr, "AES");
    }
}
