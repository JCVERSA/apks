package defpackage;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public abstract class eve {
    public static MessageDigest b;
    public final Object a = new Object();

    public final MessageDigest a() {
        synchronized (this.a) {
            MessageDigest messageDigest = b;
            if (messageDigest != null) {
                return messageDigest;
            }
            for (int i = 0; i < 2; i++) {
                try {
                    b = MessageDigest.getInstance("MD5");
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return b;
        }
    }

    public abstract byte[] b(String str);
}
