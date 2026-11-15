package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;

public class bc2 extends yb2 {
    public final byte[] d;
    public final byte[] e;
    public final byte[] f;
    public final byte[] g;
    public final byte[] h;
    public final byte[] i;
    public final byte[] j;

    public bc2(ac2 ac2Var, byte[] bArr, cc2 cc2Var) {
        super(true, ac2Var);
        wb2 wb2VarA = ac2Var.a(null);
        this.d = ci.q(bArr, 0, 32);
        this.e = ci.q(bArr, 32, 64);
        this.f = ci.q(bArr, 64, 128);
        int iB = (wb2VarA.b() * wb2VarA.c()) + 128;
        this.g = ci.q(bArr, 128, iB);
        int iA = (wb2VarA.a() * wb2VarA.c()) + iB;
        this.h = ci.q(bArr, iB, iA);
        this.i = ci.q(bArr, iA, (wb2VarA.a() * TypedValues.CycleType.TYPE_PATH_ROTATE) + iA);
        if (cc2Var != null) {
            this.j = cc2Var.d();
        } else {
            this.j = null;
        }
    }

    public cc2 c() {
        return new cc2(b(), this.d, this.j);
    }

    public byte[] getEncoded() {
        return ci.n(new byte[][]{this.d, this.e, this.f, this.g, this.h, this.i});
    }

    public bc2(ac2 ac2Var, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[] bArr7) {
        super(true, ac2Var);
        this.d = ci.f(bArr);
        this.e = ci.f(bArr2);
        this.f = ci.f(bArr3);
        this.g = ci.f(bArr4);
        this.h = ci.f(bArr5);
        this.i = ci.f(bArr6);
        this.j = ci.f(bArr7);
    }
}
