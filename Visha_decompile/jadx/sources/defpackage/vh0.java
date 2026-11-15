package defpackage;

import com.transsion.livecaption.constant.ICode;

public final class vh0 extends df8 implements ef5 {
    public static final vh0 c = new vh0();

    public vh0() {
        super(qn0.u(wh0.a));
    }

    @Override
    public int e(boolean[] zArr) {
        y45.j(zArr, "<this>");
        return zArr.length;
    }

    @Override
    public boolean[] r() {
        return new boolean[0];
    }

    @Override
    public void h(fd1 fd1Var, int i, uh0 uh0Var, boolean z) {
        y45.j(fd1Var, "decoder");
        y45.j(uh0Var, "builder");
        uh0Var.e(fd1Var.D(getDescriptor(), i));
    }

    @Override
    public uh0 k(boolean[] zArr) {
        y45.j(zArr, "<this>");
        return new uh0(zArr);
    }

    @Override
    public void u(id1 id1Var, boolean[] zArr, int i) {
        y45.j(id1Var, "encoder");
        y45.j(zArr, ICode.CALL.CALL_KEY_CONTENT);
        for (int i2 = 0; i2 < i; i2++) {
            id1Var.o(getDescriptor(), i2, zArr[i2]);
        }
    }
}
