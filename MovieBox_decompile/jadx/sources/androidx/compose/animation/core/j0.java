package androidx.compose.animation.core;

import java.util.concurrent.atomic.AtomicReference;

public abstract class j0 {
    public static boolean a(AtomicReference atomicReference, Object obj, Object obj2) {
        while (!atomicReference.compareAndSet(obj, obj2)) {
            if (atomicReference.get() != obj) {
                return false;
            }
        }
        return true;
    }
}
