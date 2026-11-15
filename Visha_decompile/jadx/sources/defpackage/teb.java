package defpackage;

import com.transsion.livecaption.constant.ICode;

public final class teb extends df8 implements ef5 {
    public static final teb c = new teb();

    public teb() {
        super(qn0.G(qeb.c));
    }

    @Override
    public int e(Object obj) {
        return v(((reb) obj).w());
    }

    @Override
    public Object k(Object obj) {
        return y(((reb) obj).w());
    }

    @Override
    public Object r() {
        return reb.b(w());
    }

    @Override
    public void u(id1 id1Var, Object obj, int i) {
        z(id1Var, ((reb) obj).w(), i);
    }

    public int v(long[] jArr) {
        y45.j(jArr, "$this$collectionSize");
        return reb.q(jArr);
    }

    public long[] w() {
        return reb.c(0);
    }

    @Override
    public void h(fd1 fd1Var, int i, seb sebVar, boolean z) {
        y45.j(fd1Var, "decoder");
        y45.j(sebVar, "builder");
        sebVar.e(qeb.b(fd1Var.k(getDescriptor(), i).h()));
    }

    public seb y(long[] jArr) {
        y45.j(jArr, "$this$toBuilder");
        return new seb(jArr, null);
    }

    public void z(id1 id1Var, long[] jArr, int i) {
        y45.j(id1Var, "encoder");
        y45.j(jArr, ICode.CALL.CALL_KEY_CONTENT);
        for (int i2 = 0; i2 < i; i2++) {
            id1Var.w(getDescriptor(), i2).z(reb.o(jArr, i2));
        }
    }
}
