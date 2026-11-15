package defpackage;

import com.transsion.livecaption.constant.ICode;

public final class neb extends df8 implements ef5 {
    public static final neb c = new neb();

    public neb() {
        super(qn0.F(keb.c));
    }

    @Override
    public int e(Object obj) {
        return v(((leb) obj).w());
    }

    @Override
    public Object k(Object obj) {
        return y(((leb) obj).w());
    }

    @Override
    public Object r() {
        return leb.b(w());
    }

    @Override
    public void u(id1 id1Var, Object obj, int i) {
        z(id1Var, ((leb) obj).w(), i);
    }

    public int v(int[] iArr) {
        y45.j(iArr, "$this$collectionSize");
        return leb.q(iArr);
    }

    public int[] w() {
        return leb.c(0);
    }

    @Override
    public void h(fd1 fd1Var, int i, meb mebVar, boolean z) {
        y45.j(fd1Var, "decoder");
        y45.j(mebVar, "builder");
        mebVar.e(keb.b(fd1Var.k(getDescriptor(), i).t()));
    }

    public meb y(int[] iArr) {
        y45.j(iArr, "$this$toBuilder");
        return new meb(iArr, null);
    }

    public void z(id1 id1Var, int[] iArr, int i) {
        y45.j(id1Var, "encoder");
        y45.j(iArr, ICode.CALL.CALL_KEY_CONTENT);
        for (int i2 = 0; i2 < i; i2++) {
            id1Var.w(getDescriptor(), i2).s(leb.o(iArr, i2));
        }
    }
}
