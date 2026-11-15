package defpackage;

import java.security.SecureRandom;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class amd {
    public static final AtomicInteger a = new AtomicInteger();

    public static String a() {
        String strValueOf = String.valueOf(a.incrementAndGet());
        String strValueOf2 = String.valueOf((int) (((new SecureRandom().nextDouble() * 9.0d) + 1.0d) * 100000.0d));
        return strValueOf + String.valueOf(System.currentTimeMillis()) + strValueOf2;
    }
}
