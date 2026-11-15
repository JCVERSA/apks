package defpackage;

public abstract class f0d {
    public static final String c = new String();
    public Object a;
    public String b = c;

    public f0d(Object obj) {
        this.a = obj;
    }

    public abstract String a(Object obj);

    public synchronized String toString() {
        try {
            if (this.b == c) {
                this.b = a(this.a);
                this.a = null;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.b;
    }
}
