package defpackage;

import com.transsion.security.aosp.hap.base.TranConstantsTmp;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableEntryException;
import java.security.cert.CertificateException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;

public final class cya {
    public static final cya a = new cya();
    public static final String b = "SensitiveAutoProtection";
    public static final IvParameterSpec c = new IvParameterSpec(new byte[]{46, 56, 46, 56, 46, 56, 46, 56, 46, 56, 46, 56, 46, 56, 46, 56});

    public final byte[] a(SecretKey secretKey, byte[] bArr) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        Cipher cipher = Cipher.getInstance(awa.a.a());
        cipher.init(2, secretKey, c);
        byte[] bArrDoFinal = cipher.doFinal(bArr);
        y45.i(bArrDoFinal, "cipher.doFinal(cipherText)");
        return bArrDoFinal;
    }

    public final byte[] b(SecretKey secretKey, byte[] bArr) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        Cipher cipher = Cipher.getInstance(awa.a.a());
        cipher.init(1, secretKey, c);
        byte[] bArrDoFinal = cipher.doFinal(bArr);
        y45.i(bArrDoFinal, "cipher.doFinal(plainText)");
        return bArrDoFinal;
    }

    public final byte[] c(byte[] bArr) {
        if (bArr != null) {
            return e(bArr);
        }
        return null;
    }

    public final byte[] d(byte[] bArr) {
        if (bArr != null) {
            return f(bArr);
        }
        return null;
    }

    public final byte[] e(byte[] bArr) throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException, UnrecoverableEntryException {
        KeyStore keyStore = KeyStore.getInstance(TranConstantsTmp.a.b());
        keyStore.load(null);
        KeyStore.Entry entry = keyStore.getEntry(uwa.a.b(), null);
        if (!(entry instanceof KeyStore.SecretKeyEntry)) {
            return bArr;
        }
        cya cyaVar = a;
        SecretKey secretKey = ((KeyStore.SecretKeyEntry) entry).getSecretKey();
        y45.i(secretKey, "it.secretKey");
        return cyaVar.a(secretKey, bArr);
    }

    public final byte[] f(byte[] bArr) throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException, UnrecoverableEntryException {
        KeyStore keyStore = KeyStore.getInstance(TranConstantsTmp.a.b());
        keyStore.load(null);
        KeyStore.Entry entry = keyStore.getEntry(uwa.a.b(), null);
        if (!(entry instanceof KeyStore.SecretKeyEntry)) {
            return bArr;
        }
        cya cyaVar = a;
        SecretKey secretKey = ((KeyStore.SecretKeyEntry) entry).getSecretKey();
        y45.i(secretKey, "it.secretKey");
        return cyaVar.b(secretKey, bArr);
    }
}
