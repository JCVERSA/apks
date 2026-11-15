package defpackage;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.MGF1ParameterSpec;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource;

public final class ixa {
    public static final ixa a = new ixa();

    public final byte[] a(SecretKey secretKey, byte[] bArr, byte[] bArr2, byte[] bArr3) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        y45.j(secretKey, "secretKey");
        y45.j(bArr, "cipherText");
        y45.j(bArr2, "aad");
        y45.j(bArr3, "iv");
        Cipher cipher = Cipher.getInstance(awa.a.b());
        cipher.init(2, secretKey, new GCMParameterSpec(128, bArr3));
        cipher.updateAAD(bArr2);
        byte[] bArrDoFinal = cipher.doFinal(bArr);
        y45.i(bArrDoFinal, "cipher.doFinal(cipherText)");
        return bArrDoFinal;
    }

    public final byte[] b(PrivateKey privateKey, byte[] bArr) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        y45.j(privateKey, "privateKey");
        y45.j(bArr, "data");
        Signature signature = Signature.getInstance(awa.a.f());
        signature.initSign(privateKey);
        signature.update(bArr);
        byte[] bArrSign = signature.sign();
        y45.i(bArrSign, "signature_.sign()");
        return bArrSign;
    }

    public final boolean c(PublicKey publicKey, byte[] bArr, byte[] bArr2) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        y45.j(publicKey, "publicKey");
        y45.j(bArr, "data");
        y45.j(bArr2, "sig");
        Signature signature = Signature.getInstance(awa.a.f());
        signature.initVerify(publicKey);
        signature.update(bArr);
        return signature.verify(bArr2);
    }

    public final byte[] d(SecretKey secretKey, byte[] bArr) throws NoSuchAlgorithmException, InvalidKeyException {
        y45.j(secretKey, "key");
        y45.j(bArr, "data");
        Mac mac = Mac.getInstance(awa.a.c());
        mac.init(secretKey);
        byte[] bArrDoFinal = mac.doFinal(bArr);
        y45.i(bArrDoFinal, "mac.doFinal(data)");
        return bArrDoFinal;
    }

    public final boolean e(SecretKey secretKey, byte[] bArr, byte[] bArr2) {
        y45.j(secretKey, "key");
        y45.j(bArr, "data");
        y45.j(bArr2, "sig");
        return Arrays.equals(d(secretKey, bArr), bArr2);
    }

    public final byte[] f(PrivateKey privateKey, byte[] bArr) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        y45.j(privateKey, "privateKey");
        y45.j(bArr, "cipherText");
        Cipher cipher = Cipher.getInstance(awa.a.d());
        cipher.init(2, privateKey, new OAEPParameterSpec("SHA-1", "MGF1", MGF1ParameterSpec.SHA1, PSource.PSpecified.DEFAULT));
        byte[] bArrDoFinal = cipher.doFinal(bArr);
        y45.i(bArrDoFinal, "it.doFinal(cipherText)");
        return bArrDoFinal;
    }

    public final byte[] g(PublicKey publicKey, byte[] bArr) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        y45.j(publicKey, "publicKey");
        y45.j(bArr, "plainText");
        Cipher cipher = Cipher.getInstance(awa.a.d());
        cipher.init(1, publicKey, new OAEPParameterSpec("SHA-1", "MGF1", MGF1ParameterSpec.SHA1, PSource.PSpecified.DEFAULT));
        byte[] bArrDoFinal = cipher.doFinal(bArr);
        y45.i(bArrDoFinal, "it.doFinal(plainText)");
        return bArrDoFinal;
    }

    public final byte[] h(PrivateKey privateKey, byte[] bArr) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        y45.j(privateKey, "privateKey");
        y45.j(bArr, "cipherText");
        Cipher cipher = Cipher.getInstance(awa.a.e());
        cipher.init(2, privateKey, new OAEPParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, PSource.PSpecified.DEFAULT));
        byte[] bArrDoFinal = cipher.doFinal(bArr);
        y45.i(bArrDoFinal, "it.doFinal(cipherText)");
        return bArrDoFinal;
    }

    public final byte[] i(PublicKey publicKey, byte[] bArr) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        y45.j(publicKey, "publicKey");
        y45.j(bArr, "plainText");
        Cipher cipher = Cipher.getInstance(awa.a.e());
        cipher.init(1, publicKey, new OAEPParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, PSource.PSpecified.DEFAULT));
        byte[] bArrDoFinal = cipher.doFinal(bArr);
        y45.i(bArrDoFinal, "it.doFinal(plainText)");
        return bArrDoFinal;
    }
}
