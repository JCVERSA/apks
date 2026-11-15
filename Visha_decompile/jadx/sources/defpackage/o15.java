package defpackage;

import com.transsion.livecaption.constant.ICode;

public final class o15 extends df8 implements ef5 {
    public static final o15 c = new o15();

    public o15() {
        super(qn0.A(p15.a));
    }

    @Override
    public int e(int[] iArr) {
        y45.j(iArr, "<this>");
        return iArr.length;
    }

    @Override
    public int[] r() {
        return new int[0];
    }

    @Override
    public void h(fd1 fd1Var, int i, m15 m15Var, boolean z) {
        y45.j(fd1Var, "decoder");
        y45.j(m15Var, "builder");
        m15Var.e(fd1Var.f(getDescriptor(), i));
    }

    @Override
    public m15 k(int[] iArr) {
        y45.j(iArr, "<this>");
        return new m15(iArr);
    }

    @Override
    public void u(id1 id1Var, int[] iArr, int i) {
        y45.j(id1Var, "encoder");
        y45.j(iArr, ICode.CALL.CALL_KEY_CONTENT);
        for (int i2 = 0; i2 < i; i2++) {
            id1Var.n(getDescriptor(), i2, iArr[i2]);
        }
    }
}
