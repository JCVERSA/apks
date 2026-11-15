package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public abstract class q0f {
    public static final AtomicReference a = new AtomicReference();
    public static final AtomicReference b = new AtomicReference();

    static {
        new AtomicBoolean();
    }

    public static o0f a() {
        return (o0f) a.get();
    }

    public static p0f b() {
        ubc.a(b.get());
        return null;
    }

    public static void c(o0f o0fVar) {
        a.set(o0fVar);
    }
}
