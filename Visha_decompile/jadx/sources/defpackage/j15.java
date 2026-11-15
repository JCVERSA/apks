package defpackage;

public final class j15 implements al3 {
    public static final j15 b = new j15(null);
    public final Object a;

    public j15(Object obj) {
        this.a = obj;
    }

    public static al3 a(Object obj) {
        return new j15(vd8.c(obj, "instance cannot be null"));
    }

    @Override
    public Object get() {
        return this.a;
    }
}
