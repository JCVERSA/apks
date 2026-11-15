package defpackage;

public class pfd {
    public final Class a;
    public Object b;

    public pfd(Class cls) {
        this.a = cls;
    }

    public synchronized Object a() {
        try {
            if (this.b == null) {
                this.b = this.a.newInstance();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.b;
    }
}
