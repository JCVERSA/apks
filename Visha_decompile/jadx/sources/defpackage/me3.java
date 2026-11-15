package defpackage;

public final class me3 implements al3 {

    public static final class a {
        public static final me3 a = new me3();
    }

    public static me3 a() {
        return a.a;
    }

    public static he3 c() {
        return (he3) vd8.c(ie3.d(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override
    public he3 get() {
        return c();
    }
}
