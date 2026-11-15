package kotlinx.coroutines.internal;

import java.util.Collection;
import java.util.ServiceLoader;
import kotlin.sequences.SequencesKt;

public abstract class e {

    private static final Collection f64883a = SequencesKt.C(SequencesKt.e(ServiceLoader.load(kotlinx.coroutines.j0.class, kotlinx.coroutines.j0.class.getClassLoader()).iterator()));

    public static final Collection a() {
        return f64883a;
    }

    public static final void b(Throwable th2) {
        Thread threadCurrentThread = Thread.currentThread();
        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th2);
    }
}
