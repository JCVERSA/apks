package defpackage;

public class zi5 implements pj8 {
    public static final Object c = new Object();
    public volatile Object a = c;
    public volatile pj8 b;

    public zi5(pj8 pj8Var) {
        this.b = pj8Var;
    }

    @Override
    public Object get() {
        Object obj = this.a;
        Object obj2 = c;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    obj = this.a;
                    if (obj == obj2) {
                        obj = this.b.get();
                        this.a = obj;
                        this.b = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return obj;
    }
}
