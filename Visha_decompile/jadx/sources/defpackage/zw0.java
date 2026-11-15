package defpackage;

public final class zw0 {
    public final xw0 a;
    public final int b;

    public zw0(xw0 xw0Var, int i) {
        y45.j(xw0Var, "classId");
        this.a = xw0Var;
        this.b = i;
    }

    public final xw0 a() {
        return this.a;
    }

    public final int b() {
        return this.b;
    }

    public final int c() {
        return this.b;
    }

    public final xw0 d() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zw0)) {
            return false;
        }
        zw0 zw0Var = (zw0) obj;
        return y45.e(this.a, zw0Var.a) && this.b == zw0Var.b;
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + Integer.hashCode(this.b);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int i = this.b;
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("kotlin/Array<");
        }
        sb.append(this.a);
        int i3 = this.b;
        for (int i4 = 0; i4 < i3; i4++) {
            sb.append(">");
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
