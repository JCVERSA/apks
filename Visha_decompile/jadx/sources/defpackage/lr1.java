package defpackage;

public class lr1 {
    public int a;
    public byte[] b;
    public int c;

    public lr1(byte[] bArr, int i) {
        this(bArr, i, -1);
    }

    public int a() {
        return this.c;
    }

    public byte[] b() {
        return ci.f(this.b);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof lr1)) {
            return false;
        }
        lr1 lr1Var = (lr1) obj;
        if (lr1Var.c != this.c) {
            return false;
        }
        return ci.b(this.b, lr1Var.b);
    }

    public int hashCode() {
        return ci.v(this.b) ^ this.c;
    }

    public lr1(byte[] bArr, int i, int i2) {
        this.b = ci.f(bArr);
        this.c = i;
        this.a = i2;
    }
}
