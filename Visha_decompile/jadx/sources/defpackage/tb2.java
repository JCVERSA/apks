package defpackage;

import org.bouncycastle.pqc.crypto.lms.LMOtsParameters;
import org.bouncycastle.pqc.crypto.lms.LMSigParameters;

public abstract class tb2 {

    public static class a implements sb2 {
        public final sb2 a;
        public final int b;

        public a(sb2 sb2Var, int i) {
            this.a = sb2Var;
            this.b = i;
        }

        @Override
        public int a(byte[] bArr, int i) {
            byte[] bArr2 = new byte[this.a.g()];
            this.a.a(bArr2, 0);
            System.arraycopy(bArr2, 0, bArr, i, this.b);
            return this.b;
        }

        @Override
        public void b(byte b) {
            this.a.b(b);
        }

        @Override
        public String c() {
            return this.a.c() + "/" + (this.b * 8);
        }

        @Override
        public int g() {
            return this.b;
        }

        @Override
        public void reset() {
            this.a.reset();
        }

        @Override
        public void update(byte[] bArr, int i, int i2) {
            this.a.update(bArr, i, i2);
        }
    }

    public static sb2 a(l1 l1Var) {
        if (l1Var.s(cx6.c)) {
            return new ux8();
        }
        if (l1Var.s(cx6.t)) {
            return new yx8(256);
        }
        throw new IllegalArgumentException("unrecognized digest OID: " + l1Var);
    }

    public static sb2 b(l1 l1Var, int i) {
        sb2 sb2VarA = a(l1Var);
        return (cx6.t.s(l1Var) || sb2VarA.g() != i) ? new a(sb2VarA, i) : sb2VarA;
    }

    public static sb2 c(LMOtsParameters lMOtsParameters) {
        return b(lMOtsParameters.b(), lMOtsParameters.d());
    }

    public static sb2 d(LMSigParameters lMSigParameters) {
        return b(lMSigParameters.b(), lMSigParameters.d());
    }
}
