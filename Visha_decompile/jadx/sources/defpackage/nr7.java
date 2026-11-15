package defpackage;

import android.util.Base64;
import android.util.Log;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

public abstract class nr7 {
    public static String a(String str, String str2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        RSAPublicKey rSAPublicKey = (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str2.getBytes(), 0)));
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(1, rSAPublicKey);
        return Base64.encodeToString(cipher.doFinal(str.getBytes("UTF-8")), 2);
    }

    public static boolean b(byte[] bArr, String str, String str2) {
        try {
            PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str2.getBytes(), 0)));
            Signature signature = Signature.getInstance("MD5withRSA");
            signature.initVerify(publicKeyGeneratePublic);
            signature.update(bArr);
            boolean zVerify = signature.verify(Base64.decode(str.getBytes(), 0));
            Log.e("palm id", "checkSignature:" + zVerify);
            return zVerify;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static byte[] c(String str) {
        return Base64.decode(str.getBytes(), 0);
    }
}
