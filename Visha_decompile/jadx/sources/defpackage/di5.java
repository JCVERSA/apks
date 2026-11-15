package defpackage;

import org.bouncycastle.pqc.crypto.lms.LMOtsParameters;
import org.bouncycastle.pqc.crypto.lms.LMSigParameters;

public class di5 {
    public final LMOtsParameters a;
    public final byte[] b;
    public final int c;
    public final byte[] d;

    public di5(LMOtsParameters lMOtsParameters, byte[] bArr, int i, byte[] bArr2) {
        this.a = lMOtsParameters;
        this.b = bArr;
        this.c = i;
        this.d = bArr2;
    }

    public ia9 a() {
        ia9 ia9Var = new ia9(this.b, this.d, tb2.c(this.a));
        ia9Var.e(this.c);
        return ia9Var;
    }

    public byte[] b() {
        return this.b;
    }

    public LMOtsParameters c() {
        return this.a;
    }

    public int d() {
        return this.c;
    }

    public gi5 e(LMSigParameters lMSigParameters, byte[][] bArr) {
        byte[] bArr2 = new byte[this.a.d()];
        ia9 ia9VarA = a();
        ia9VarA.d(-3);
        ia9VarA.a(bArr2, false);
        sb2 sb2VarC = tb2.c(this.a);
        fn5.a(b(), sb2VarC);
        fn5.c(d(), sb2VarC);
        fn5.b((short) -32383, sb2VarC);
        fn5.a(bArr2, sb2VarC);
        return new gi5(this, lMSigParameters, sb2VarC, bArr2, bArr);
    }
}
