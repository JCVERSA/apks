package defpackage;

public class sx6 extends ox6 {
    public final byte[] d;
    public final byte[] e;

    public sx6(qx6 qx6Var, byte[] bArr) {
        super(false, qx6Var);
        byte[] bArrQ = ci.q(bArr, 0, 32);
        this.d = bArrQ;
        this.e = ci.q(bArr, bArrQ.length, bArr.length);
    }

    public byte[] getEncoded() {
        byte[] bArr = new byte[b().c()];
        byte[] bArr2 = this.d;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        byte[] bArr3 = this.e;
        System.arraycopy(bArr3, 0, bArr, this.d.length, bArr3.length);
        return bArr;
    }
}
