package defpackage;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.List;

public class n2a {
    public HashMap a = new HashMap();

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            return new BigInteger(1, messageDigest.digest()).toString(16);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List a(String str) {
        String strB = b(str);
        if (strB == null) {
            return null;
        }
        return (List) this.a.get(strB);
    }

    public synchronized void c(String str, List list) {
        String strB = b(str);
        if (strB == null) {
            return;
        }
        this.a.put(strB, list);
    }
}
