package v;

public final class a {

    private final Object f73404a;

    private final Object f73405b;

    public a(Object obj, Object obj2) {
        this.f73404a = obj;
        this.f73405b = obj2;
    }

    public final boolean a() {
        return this.f73405b != w.c.f74078a;
    }

    public final boolean b() {
        return this.f73404a != w.c.f74078a;
    }

    public final Object c() {
        return this.f73405b;
    }

    public final Object d() {
        return this.f73404a;
    }

    public final a e(Object obj) {
        return new a(this.f73404a, obj);
    }

    public final a f(Object obj) {
        return new a(obj, this.f73405b);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public a() {
        w.c cVar = w.c.f74078a;
        this(cVar, cVar);
    }

    public a(Object obj) {
        this(obj, w.c.f74078a);
    }
}
