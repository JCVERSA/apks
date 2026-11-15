package defpackage;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class sgi implements q8i {
    public static final byte[] c = vqi.a("7a806c");
    public static final byte[] d = vqi.a("46bb91c3c5");
    public static final byte[] e = vqi.a("36864200e0eaf5284d884a0e77d31646");
    public static final byte[] f = vqi.a("bae8e37fc83441b16034566b");
    public static final byte[] g = vqi.a("af60eb711bd85bc1e4d3e0a462e074eea428a8");
    public static final ThreadLocal h = new rgi();
    public final SecretKey a;
    public final byte[] b;

    public sgi(byte[] bArr, byte[] bArr2) throws InvalidAlgorithmParameterException {
        this.b = bArr2;
        cri.a(bArr.length);
        this.a = new SecretKeySpec(bArr, "AES");
    }

    public static q8i b(bci bciVar) {
        return new sgi(bciVar.e().d(a9i.a()), bciVar.b().d());
    }

    public static boolean d(Cipher cipher) {
        try {
            byte[] bArr = f;
            cipher.init(2, new SecretKeySpec(e, "AES"), new GCMParameterSpec(128, bArr, 0, bArr.length));
            cipher.updateAAD(d);
            byte[] bArr2 = g;
            return MessageDigest.isEqual(cipher.doFinal(bArr2, 0, bArr2.length), c);
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    @Override
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.b;
        int length = bArr3.length;
        if (length == 0) {
            return e(bArr, bArr2);
        }
        if (fki.c(bArr3, bArr)) {
            return e(Arrays.copyOfRange(bArr, length, bArr.length), bArr2);
        }
        throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
    }

    public final byte[] e(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        Cipher cipher = (Cipher) h.get();
        if (cipher == null) {
            throw new GeneralSecurityException("AES GCM SIV cipher is not available or is invalid.");
        }
        int length = bArr.length;
        if (length < 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        cipher.init(2, this.a, new GCMParameterSpec(128, bArr, 0, 12));
        if (bArr2 != null && bArr2.length != 0) {
            cipher.updateAAD(bArr2);
        }
        return cipher.doFinal(bArr, 12, length - 12);
    }
}
