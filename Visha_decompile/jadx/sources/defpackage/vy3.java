package defpackage;

import com.transsion.livecaption.constant.ICode;

public final class vy3 extends df8 implements ef5 {
    public static final vy3 c = new vy3();

    public vy3() {
        super(qn0.z(wy3.a));
    }

    @Override
    public int e(float[] fArr) {
        y45.j(fArr, "<this>");
        return fArr.length;
    }

    @Override
    public float[] r() {
        return new float[0];
    }

    @Override
    public void h(fd1 fd1Var, int i, uy3 uy3Var, boolean z) {
        y45.j(fd1Var, "decoder");
        y45.j(uy3Var, "builder");
        uy3Var.e(fd1Var.y(getDescriptor(), i));
    }

    @Override
    public uy3 k(float[] fArr) {
        y45.j(fArr, "<this>");
        return new uy3(fArr);
    }

    @Override
    public void u(id1 id1Var, float[] fArr, int i) {
        y45.j(id1Var, "encoder");
        y45.j(fArr, ICode.CALL.CALL_KEY_CONTENT);
        for (int i2 = 0; i2 < i; i2++) {
            id1Var.B(getDescriptor(), i2, fArr[i2]);
        }
    }
}
