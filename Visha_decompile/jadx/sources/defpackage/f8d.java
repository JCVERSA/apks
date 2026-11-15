package defpackage;

import java.security.NoSuchAlgorithmException;
import javax.crypto.KeyGenerator;

public abstract class f8d {
    public static String a() throws NoSuchAlgorithmException {
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
        keyGenerator.init(128);
        byte[] encoded = keyGenerator.generateKey().getEncoded();
        if (encoded == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : encoded) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            stringBuffer.append(hexString.toUpperCase());
        }
        return stringBuffer.toString();
    }
}
