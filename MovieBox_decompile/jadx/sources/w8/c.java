package w8;

public final class c implements b {

    private static final c f74220b = new c(null);

    private final Object f74221a;

    private c(Object obj) {
        this.f74221a = obj;
    }

    public static b a(Object obj) {
        return new c(d.c(obj, "instance cannot be null"));
    }

    @Override
    public Object get() {
        return this.f74221a;
    }
}
