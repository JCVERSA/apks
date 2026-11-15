package defpackage;

import java.util.concurrent.atomic.AtomicReference;

public abstract class wk5 {
    public static boolean a(AtomicReference atomicReference, Object obj, Object obj2) {
        while (!atomicReference.compareAndSet(obj, obj2)) {
            if (atomicReference.get() != obj) {
                return false;
            }
        }
        return true;
    }
}
