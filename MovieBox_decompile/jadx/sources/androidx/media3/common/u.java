package androidx.media3.common;

import java.util.HashSet;

public abstract class u {

    private static final HashSet f10031a = new HashSet();

    private static String f10032b = "media3.common";

    public static synchronized void a(String str) {
        if (f10031a.add(str)) {
            f10032b += ", " + str;
        }
    }

    public static synchronized String b() {
        return f10032b;
    }
}
