package w8;

public final class a implements iy.a {

    private static final Object f74217c = new Object();

    private volatile iy.a f74218a;

    private volatile Object f74219b = f74217c;

    private a(iy.a aVar) {
        this.f74218a = aVar;
    }

    public static iy.a a(iy.a aVar) {
        d.b(aVar);
        return aVar instanceof a ? aVar : new a(aVar);
    }

    private static Object b(Object obj, Object obj2) {
        if (obj == f74217c || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override
    public Object get() {
        Object obj = this.f74219b;
        Object obj2 = f74217c;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    obj = this.f74219b;
                    if (obj == obj2) {
                        obj = this.f74218a.get();
                        this.f74219b = b(this.f74219b, obj);
                        this.f74218a = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return obj;
    }
}
