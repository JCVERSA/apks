package defpackage;

public final class dd1 extends ad1 {
    public final u95 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dd1(sc5 sc5Var, u95 u95Var) {
        super(sc5Var);
        y45.j(sc5Var, "writer");
        y45.j(u95Var, "json");
        this.c = u95Var;
    }

    @Override
    public void b() {
        n(true);
        this.d++;
    }

    @Override
    public void c() {
        n(false);
        j("\n");
        int i = this.d;
        for (int i2 = 0; i2 < i; i2++) {
            j(this.c.d().j());
        }
    }

    @Override
    public void o() {
        e(' ');
    }

    @Override
    public void p() {
        this.d--;
    }
}
