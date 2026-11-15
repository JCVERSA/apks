package defpackage;

public class nn9 {
    public final Object a;
    public final Thread b = Thread.currentThread();

    public nn9(Object obj) {
        this.a = obj;
    }

    public Object a() {
        if (b()) {
            return this.a;
        }
        throw new IllegalStateException("No value in this thread (hasValue should be checked before)");
    }

    public boolean b() {
        return this.b == Thread.currentThread();
    }
}
