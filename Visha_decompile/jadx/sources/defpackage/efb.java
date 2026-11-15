package defpackage;

import com.transsion.livecaption.constant.ICode;

public final class efb extends df8 implements ef5 {
    public static final efb c = new efb();

    public efb() {
        super(qn0.H(bfb.c));
    }

    @Override
    public int e(Object obj) {
        return v(((cfb) obj).w());
    }

    @Override
    public Object k(Object obj) {
        return y(((cfb) obj).w());
    }

    @Override
    public Object r() {
        return cfb.b(w());
    }

    @Override
    public void u(id1 id1Var, Object obj, int i) {
        z(id1Var, ((cfb) obj).w(), i);
    }

    public int v(short[] sArr) {
        y45.j(sArr, "$this$collectionSize");
        return cfb.q(sArr);
    }

    public short[] w() {
        return cfb.c(0);
    }

    @Override
    public void h(fd1 fd1Var, int i, dfb dfbVar, boolean z) {
        y45.j(fd1Var, "decoder");
        y45.j(dfbVar, "builder");
        dfbVar.e(bfb.b(fd1Var.k(getDescriptor(), i).l()));
    }

    public dfb y(short[] sArr) {
        y45.j(sArr, "$this$toBuilder");
        return new dfb(sArr, null);
    }

    public void z(id1 id1Var, short[] sArr, int i) {
        y45.j(id1Var, "encoder");
        y45.j(sArr, ICode.CALL.CALL_KEY_CONTENT);
        for (int i2 = 0; i2 < i; i2++) {
            id1Var.w(getDescriptor(), i2).k(cfb.o(sArr, i2));
        }
    }
}
