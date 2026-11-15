package defpackage;

import com.transsion.livecaption.constant.ICode;

public final class br5 extends df8 implements ef5 {
    public static final br5 c = new br5();

    public br5() {
        super(qn0.B(cr5.a));
    }

    @Override
    public int e(long[] jArr) {
        y45.j(jArr, "<this>");
        return jArr.length;
    }

    @Override
    public long[] r() {
        return new long[0];
    }

    @Override
    public void h(fd1 fd1Var, int i, ar5 ar5Var, boolean z) {
        y45.j(fd1Var, "decoder");
        y45.j(ar5Var, "builder");
        ar5Var.e(fd1Var.e(getDescriptor(), i));
    }

    @Override
    public ar5 k(long[] jArr) {
        y45.j(jArr, "<this>");
        return new ar5(jArr);
    }

    @Override
    public void u(id1 id1Var, long[] jArr, int i) {
        y45.j(id1Var, "encoder");
        y45.j(jArr, ICode.CALL.CALL_KEY_CONTENT);
        for (int i2 = 0; i2 < i; i2++) {
            id1Var.u(getDescriptor(), i2, jArr[i2]);
        }
    }
}
