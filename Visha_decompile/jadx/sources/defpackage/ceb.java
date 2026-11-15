package defpackage;

import com.transsion.livecaption.constant.ICode;

public final class ceb extends df8 implements ef5 {
    public static final ceb c = new ceb();

    public ceb() {
        super(qn0.E(zdb.c));
    }

    @Override
    public int e(Object obj) {
        return v(((aeb) obj).w());
    }

    @Override
    public Object k(Object obj) {
        return y(((aeb) obj).w());
    }

    @Override
    public Object r() {
        return aeb.b(w());
    }

    @Override
    public void u(id1 id1Var, Object obj, int i) {
        z(id1Var, ((aeb) obj).w(), i);
    }

    public int v(byte[] bArr) {
        y45.j(bArr, "$this$collectionSize");
        return aeb.q(bArr);
    }

    public byte[] w() {
        return aeb.c(0);
    }

    @Override
    public void h(fd1 fd1Var, int i, beb bebVar, boolean z) {
        y45.j(fd1Var, "decoder");
        y45.j(bebVar, "builder");
        bebVar.e(zdb.b(fd1Var.k(getDescriptor(), i).H()));
    }

    public beb y(byte[] bArr) {
        y45.j(bArr, "$this$toBuilder");
        return new beb(bArr, null);
    }

    public void z(id1 id1Var, byte[] bArr, int i) {
        y45.j(id1Var, "encoder");
        y45.j(bArr, ICode.CALL.CALL_KEY_CONTENT);
        for (int i2 = 0; i2 < i; i2++) {
            id1Var.w(getDescriptor(), i2).e(aeb.o(bArr, i2));
        }
    }
}
