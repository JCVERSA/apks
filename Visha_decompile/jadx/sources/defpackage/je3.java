package defpackage;

public final class je3 implements al3 {

    public static final class a {
        public static final je3 a = new je3();
    }

    public static je3 a() {
        return a.a;
    }

    public static String b() {
        return (String) vd8.c(ie3.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override
    public String get() {
        return b();
    }
}
