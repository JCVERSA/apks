package defpackage;

import com.transsion.livecaption.constant.ICode;

public final class fo0 extends df8 implements ef5 {
    public static final fo0 c = new fo0();

    public fo0() {
        super(qn0.v(ko0.a));
    }

    @Override
    public int e(byte[] bArr) {
        y45.j(bArr, "<this>");
        return bArr.length;
    }

    @Override
    public byte[] r() {
        return new byte[0];
    }

    @Override
    public void h(fd1 fd1Var, int i, ao0 ao0Var, boolean z) {
        y45.j(fd1Var, "decoder");
        y45.j(ao0Var, "builder");
        ao0Var.e(fd1Var.C(getDescriptor(), i));
    }

    @Override
    public ao0 k(byte[] bArr) {
        y45.j(bArr, "<this>");
        return new ao0(bArr);
    }

    @Override
    public void u(id1 id1Var, byte[] bArr, int i) {
        y45.j(id1Var, "encoder");
        y45.j(bArr, ICode.CALL.CALL_KEY_CONTENT);
        for (int i2 = 0; i2 < i; i2++) {
            id1Var.j(getDescriptor(), i2, bArr[i2]);
        }
    }
}
