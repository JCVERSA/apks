package defpackage;

import java.util.concurrent.locks.LockSupport;

public abstract class wt7 {
    public static void a(Object obj, long j) {
        LockSupport.parkNanos(obj, Math.min(j, 2147483647999999999L));
    }
}
