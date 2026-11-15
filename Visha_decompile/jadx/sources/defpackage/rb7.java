package defpackage;

public final class rb7 implements wgb {
    public boolean a;
    public boolean b;
    public String c;

    public rb7(boolean z, boolean z2, String str) {
        y45.j(str, "updateVersion");
        this.a = z;
        this.b = z2;
        this.c = str;
    }

    public final String a() {
        return this.c;
    }

    public final boolean b() {
        return this.b;
    }

    public final boolean c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rb7)) {
            return false;
        }
        rb7 rb7Var = (rb7) obj;
        return this.a == rb7Var.a && this.b == rb7Var.b && y45.e(this.c, rb7Var.c);
    }

    public int hashCode() {
        return (((Boolean.hashCode(this.a) * 31) + Boolean.hashCode(this.b)) * 31) + this.c.hashCode();
    }

    public String toString() {
        return "OSUpdateSuccessInfo(isUpdate=" + this.a + ", isForce=" + this.b + ", updateVersion=" + this.c + ")";
    }
}
