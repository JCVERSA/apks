package defpackage;

public class rq1 {
    public byte[] a;
    public int b;

    public rq1(byte[] bArr, int i) {
        this.a = ci.f(bArr);
        this.b = i;
    }

    public int a() {
        return this.b;
    }

    public byte[] b() {
        return ci.f(this.a);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof rq1)) {
            return false;
        }
        rq1 rq1Var = (rq1) obj;
        if (rq1Var.b != this.b) {
            return false;
        }
        return ci.b(this.a, rq1Var.a);
    }

    public int hashCode() {
        return ci.v(this.a) ^ this.b;
    }
}
