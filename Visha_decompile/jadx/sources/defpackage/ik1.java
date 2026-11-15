package defpackage;

import java.util.Collection;
import java.util.ServiceLoader;
import kotlin.sequences.SequencesKt___SequencesKt;

public abstract class ik1 {
    public static final Collection a = SequencesKt___SequencesKt.c0(zc9.g(ServiceLoader.load(hk1.class, hk1.class.getClassLoader()).iterator()));

    public static final Collection a() {
        return a;
    }

    public static final void b(Throwable th) {
        Thread threadCurrentThread = Thread.currentThread();
        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
    }
}
