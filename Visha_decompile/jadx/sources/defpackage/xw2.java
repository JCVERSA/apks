package defpackage;

import com.transsion.livecaption.constant.ICode;

public final class xw2 extends df8 implements ef5 {
    public static final xw2 c = new xw2();

    public xw2() {
        super(qn0.x(bx2.a));
    }

    @Override
    public int e(double[] dArr) {
        y45.j(dArr, "<this>");
        return dArr.length;
    }

    @Override
    public double[] r() {
        return new double[0];
    }

    @Override
    public void h(fd1 fd1Var, int i, ww2 ww2Var, boolean z) {
        y45.j(fd1Var, "decoder");
        y45.j(ww2Var, "builder");
        ww2Var.e(fd1Var.G(getDescriptor(), i));
    }

    @Override
    public ww2 k(double[] dArr) {
        y45.j(dArr, "<this>");
        return new ww2(dArr);
    }

    @Override
    public void u(id1 id1Var, double[] dArr, int i) {
        y45.j(id1Var, "encoder");
        y45.j(dArr, ICode.CALL.CALL_KEY_CONTENT);
        for (int i2 = 0; i2 < i; i2++) {
            id1Var.F(getDescriptor(), i2, dArr[i2]);
        }
    }
}
