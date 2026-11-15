package defpackage;

import android.util.Base64;
import java.nio.charset.StandardCharsets;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.SecretKeySpec;

public abstract class g {
    public static String a(String str) {
        try {
            KeyGenerator.getInstance("AES").init(128);
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(2, new SecretKeySpec("vishavishavishav".getBytes(), "AES"));
            return new String(cipher.doFinal(Base64.decode(str.getBytes(StandardCharsets.UTF_8), 0)));
        } catch (Exception unused) {
            return "";
        }
    }

    public static String b(String str) {
        try {
            KeyGenerator.getInstance("AES").init(128);
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(1, new SecretKeySpec("vishavishavishav".getBytes(), "AES"));
            return Base64.encodeToString(cipher.doFinal(str.getBytes(StandardCharsets.UTF_8)), 0);
        } catch (Exception unused) {
            return "";
        }
    }
}
