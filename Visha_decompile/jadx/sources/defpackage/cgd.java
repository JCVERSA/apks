package defpackage;

public abstract class cgd {
    private Object a;
    private Exception b;

    public cgd a(Object obj) {
        this.a = obj;
        return this;
    }

    public Object d() {
        return this.a;
    }

    public Exception e() {
        return this.b;
    }

    public cgd a(Exception exc) {
        this.b = exc;
        return this;
    }
}
