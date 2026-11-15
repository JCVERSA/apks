package defpackage;

public class zx8 extends my9 implements fp0 {
    public final qf0 b;
    public final int c;
    public byte[] d;
    public byte[] e;
    public byte[] f;
    public int g;

    public zx8(qf0 qf0Var) {
        super(qf0Var);
        this.b = qf0Var;
        int iA = qf0Var.a();
        this.c = iA;
        this.d = new byte[iA];
        this.e = new byte[iA];
        this.f = new byte[iA];
        this.g = 0;
    }

    public static fp0 b(qf0 qf0Var) {
        return new zx8(qf0Var);
    }

    @Override
    public int a() {
        return this.b.a();
    }
}
