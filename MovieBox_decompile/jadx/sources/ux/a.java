package ux;

public final class a implements iy.a {

    private static final Object f73267c = new Object();

    private volatile iy.a f73268a;

    private volatile Object f73269b = f73267c;

    private a(iy.a aVar) {
        this.f73268a = aVar;
    }

    public static iy.a a(iy.a aVar) {
        b.b(aVar);
        return aVar instanceof a ? aVar : new a(aVar);
    }

    private static Object b(Object obj, Object obj2) {
        if (obj == f73267c || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override
    public Object get() {
        Object obj = this.f73269b;
        Object obj2 = f73267c;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    obj = this.f73269b;
                    if (obj == obj2) {
                        obj = this.f73268a.get();
                        this.f73269b = b(this.f73269b, obj);
                        this.f73268a = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return obj;
    }
}
