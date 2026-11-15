package ob;

public class u implements kc.b {

    private static final Object f67789c = new Object();

    private volatile Object f67790a = f67789c;

    private volatile kc.b f67791b;

    public u(kc.b bVar) {
        this.f67791b = bVar;
    }

    @Override
    public Object get() {
        Object obj = this.f67790a;
        Object obj2 = f67789c;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    obj = this.f67790a;
                    if (obj == obj2) {
                        obj = this.f67791b.get();
                        this.f67790a = obj;
                        this.f67791b = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return obj;
    }
}
