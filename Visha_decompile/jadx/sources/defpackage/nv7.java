package defpackage;

public final class nv7 implements kw0 {
    public final Class b;
    public final String c;

    public nv7(Class cls, String str) {
        y45.j(cls, "jClass");
        y45.j(str, "moduleName");
        this.b = cls;
        this.c = str;
    }

    @Override
    public Class d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        return (obj instanceof nv7) && y45.e(d(), ((nv7) obj).d());
    }

    public int hashCode() {
        return d().hashCode();
    }

    public String toString() {
        return d() + " (Kotlin reflection is not available)";
    }
}
