package defpackage;

public final class nf1 {
    public int a;
    public int b;
    public long c;
    public String d;
    public String e;
    public int f;

    public nf1(int i, int i2, String str, String str2) {
        this.a = i;
        this.b = i2;
        this.d = str;
        this.e = str2;
        this.f = i ^ (i2 + (str.hashCode() * str2.hashCode()));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof nf1)) {
            return false;
        }
        nf1 nf1Var = (nf1) obj;
        int i = this.a;
        if (i != nf1Var.a) {
            return false;
        }
        if (i == 3 || i == 4) {
            return this.b == nf1Var.b;
        }
        if (i == 5 || i == 6) {
            return this.c == nf1Var.c;
        }
        if (i == 12) {
            return this.d.equals(nf1Var.d) && this.e.equals(nf1Var.e);
        }
        if (i == 18) {
            return this.b == nf1Var.b && this.d.equals(nf1Var.d) && this.e.equals(nf1Var.e);
        }
        throw new RuntimeException("unsupported constant type");
    }

    public int hashCode() {
        return this.f;
    }
}
