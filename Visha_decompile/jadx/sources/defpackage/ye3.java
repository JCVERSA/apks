package defpackage;

import java.util.concurrent.Executor;

public final class ye3 implements al3 {

    public static final class a {
        public static final ye3 a = new ye3();
    }

    public static ye3 a() {
        return a.a;
    }

    public static Executor b() {
        return (Executor) vd8.c(xe3.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override
    public Executor get() {
        return b();
    }
}
