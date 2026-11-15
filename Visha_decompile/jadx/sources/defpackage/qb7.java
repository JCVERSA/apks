package defpackage;

public final class qb7 implements wgb {
    public int a;
    public String b;

    public qb7(int i, String str) {
        y45.j(str, "message");
        this.a = i;
        this.b = str;
    }

    public final int a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qb7)) {
            return false;
        }
        qb7 qb7Var = (qb7) obj;
        return this.a == qb7Var.a && y45.e(this.b, qb7Var.b);
    }

    public int hashCode() {
        return (Integer.hashCode(this.a) * 31) + this.b.hashCode();
    }

    public String toString() {
        return "OSUpdateFailureInfo(code=" + this.a + ", message=" + this.b + ")";
    }
}
