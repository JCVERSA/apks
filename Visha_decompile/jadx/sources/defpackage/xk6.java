package defpackage;

public class xk6 {
    public final Object a;
    public final int b;
    public final int c;
    public final long d;
    public final int e;

    public xk6(Object obj) {
        this(obj, -1L);
    }

    public xk6 a(Object obj) {
        return this.a.equals(obj) ? this : new xk6(obj, this.b, this.c, this.d, this.e);
    }

    public boolean b() {
        return this.b != -1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xk6)) {
            return false;
        }
        xk6 xk6Var = (xk6) obj;
        return this.a.equals(xk6Var.a) && this.b == xk6Var.b && this.c == xk6Var.c && this.d == xk6Var.d && this.e == xk6Var.e;
    }

    public int hashCode() {
        return ((((((((527 + this.a.hashCode()) * 31) + this.b) * 31) + this.c) * 31) + ((int) this.d)) * 31) + this.e;
    }

    public xk6(Object obj, long j) {
        this(obj, -1, -1, j, -1);
    }

    public xk6(Object obj, long j, int i) {
        this(obj, -1, -1, j, i);
    }

    public xk6(Object obj, int i, int i2, long j) {
        this(obj, i, i2, j, -1);
    }

    public xk6(xk6 xk6Var) {
        this.a = xk6Var.a;
        this.b = xk6Var.b;
        this.c = xk6Var.c;
        this.d = xk6Var.d;
        this.e = xk6Var.e;
    }

    public xk6(Object obj, int i, int i2, long j, int i3) {
        this.a = obj;
        this.b = i;
        this.c = i2;
        this.d = j;
        this.e = i3;
    }
}
