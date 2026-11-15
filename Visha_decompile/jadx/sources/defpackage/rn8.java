package defpackage;

import java.util.Random;

public abstract class rn8 {
    public static String a(String str, int i, Random random) {
        StringBuilder sb = new StringBuilder(i);
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(str.charAt(random.nextInt(str.length())));
        }
        return sb.toString();
    }
}
