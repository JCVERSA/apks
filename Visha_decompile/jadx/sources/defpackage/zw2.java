package defpackage;

public final class zw2 implements oj8 {
    public static final Object c = new Object();
    public volatile oj8 a;
    public volatile Object b = c;

    public zw2(oj8 oj8Var) {
        this.a = oj8Var;
    }

    public static oj8 a(oj8 oj8Var) {
        vd8.b(oj8Var);
        return oj8Var instanceof zw2 ? oj8Var : new zw2(oj8Var);
    }

    public static Object b(Object obj, Object obj2) {
        if (obj == c || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override
    public Object get() {
        Object obj = this.b;
        Object obj2 = c;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    obj = this.b;
                    if (obj == obj2) {
                        obj = this.a.get();
                        this.b = b(this.b, obj);
                        this.a = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return obj;
    }
}
