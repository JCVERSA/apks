package defpackage;

import com.transsion.livecaption.constant.ICode;

public final class zu0 extends df8 implements ef5 {
    public static final zu0 c = new zu0();

    public zu0() {
        super(qn0.w(av0.a));
    }

    @Override
    public int e(char[] cArr) {
        y45.j(cArr, "<this>");
        return cArr.length;
    }

    @Override
    public char[] r() {
        return new char[0];
    }

    @Override
    public void h(fd1 fd1Var, int i, vu0 vu0Var, boolean z) {
        y45.j(fd1Var, "decoder");
        y45.j(vu0Var, "builder");
        vu0Var.e(fd1Var.p(getDescriptor(), i));
    }

    @Override
    public vu0 k(char[] cArr) {
        y45.j(cArr, "<this>");
        return new vu0(cArr);
    }

    @Override
    public void u(id1 id1Var, char[] cArr, int i) {
        y45.j(id1Var, "encoder");
        y45.j(cArr, ICode.CALL.CALL_KEY_CONTENT);
        for (int i2 = 0; i2 < i; i2++) {
            id1Var.i(getDescriptor(), i2, cArr[i2]);
        }
    }
}
