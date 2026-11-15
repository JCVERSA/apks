package kotlin.reflect.jvm.internal.impl.storage;

import defpackage.e74;
import defpackage.hr0;
import defpackage.l42;

public interface a {
    public static final C0408a a = C0408a.a;

    public static final class C0408a {
        public static final C0408a a = new C0408a();

        public final l42 a(Runnable runnable, e74 e74Var) {
            return (runnable == null || e74Var == null) ? new l42(null, 1, null) : new hr0(runnable, e74Var);
        }
    }

    void lock();

    void unlock();
}
