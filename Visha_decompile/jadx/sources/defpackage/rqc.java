package defpackage;

public abstract class rqc {
    public t43 a;
    public qqc b;

    public abstract t43 a();

    public abstract qqc b();

    public synchronized t43 c() {
        try {
            if (this.a == null) {
                this.a = a();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.a;
    }

    public synchronized qqc d() {
        try {
            if (this.b == null) {
                this.b = b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.b;
    }
}
