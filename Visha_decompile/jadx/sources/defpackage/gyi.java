package defpackage;

public final class gyi implements fyi, zxi {
    public static final gyi b = new gyi(null);
    public final Object a;

    public gyi(Object obj) {
        this.a = obj;
    }

    public static fyi a(Object obj) {
        pyi.a(obj, "instance cannot be null");
        return new gyi(obj);
    }

    public static fyi b(Object obj) {
        return obj == null ? b : new gyi(obj);
    }

    @Override
    public final Object zzb() {
        return this.a;
    }
}
