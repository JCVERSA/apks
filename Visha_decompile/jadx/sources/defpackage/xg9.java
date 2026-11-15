package defpackage;

import com.transsion.livecaption.constant.ICode;

public final class xg9 extends df8 implements ef5 {
    public static final xg9 c = new xg9();

    public xg9() {
        super(qn0.C(yg9.a));
    }

    @Override
    public int e(short[] sArr) {
        y45.j(sArr, "<this>");
        return sArr.length;
    }

    @Override
    public short[] r() {
        return new short[0];
    }

    @Override
    public void h(fd1 fd1Var, int i, wg9 wg9Var, boolean z) {
        y45.j(fd1Var, "decoder");
        y45.j(wg9Var, "builder");
        wg9Var.e(fd1Var.F(getDescriptor(), i));
    }

    @Override
    public wg9 k(short[] sArr) {
        y45.j(sArr, "<this>");
        return new wg9(sArr);
    }

    @Override
    public void u(id1 id1Var, short[] sArr, int i) {
        y45.j(id1Var, "encoder");
        y45.j(sArr, ICode.CALL.CALL_KEY_CONTENT);
        for (int i2 = 0; i2 < i; i2++) {
            id1Var.t(getDescriptor(), i2, sArr[i2]);
        }
    }
}
