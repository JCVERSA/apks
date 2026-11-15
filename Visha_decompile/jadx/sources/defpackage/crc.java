package defpackage;

public class crc extends j1 {
    public final g1 b;
    public final int c;
    public final int d;
    public final oa e;

    public crc(int i, int i2, oa oaVar) {
        this.b = new g1(0L);
        this.c = i;
        this.d = i2;
        this.e = oaVar;
    }

    public static crc n(Object obj) {
        if (obj instanceof crc) {
            return (crc) obj;
        }
        if (obj != null) {
            return new crc(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0();
        y0Var.a(this.b);
        y0Var.a(new g1(this.c));
        y0Var.a(new g1(this.d));
        y0Var.a(this.e);
        return new aq1(y0Var);
    }

    public int m() {
        return this.c;
    }

    public int o() {
        return this.d;
    }

    public oa p() {
        return this.e;
    }

    public crc(s1 s1Var) {
        this.b = g1.y(s1Var.A(0));
        this.c = g1.y(s1Var.A(1)).F();
        this.d = g1.y(s1Var.A(2)).F();
        this.e = oa.o(s1Var.A(3));
    }
}
