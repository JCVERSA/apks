package defpackage;

import java.io.IOException;

public class g40 extends s0 {
    public final int e;
    public final s0[] f;

    public g40(byte[] bArr, int i) {
        this(bArr, i, 1000);
    }

    public static byte[] C(s0[] s0VarArr) {
        int length = s0VarArr.length;
        if (length == 0) {
            return new byte[]{0};
        }
        if (length == 1) {
            return s0VarArr[0].b;
        }
        int i = length - 1;
        int length2 = 0;
        for (int i2 = 0; i2 < i; i2++) {
            byte[] bArr = s0VarArr[i2].b;
            if (bArr[0] != 0) {
                throw new IllegalArgumentException("only the last nested bitstring can have padding");
            }
            length2 += bArr.length - 1;
        }
        byte[] bArr2 = s0VarArr[i].b;
        byte b = bArr2[0];
        byte[] bArr3 = new byte[length2 + bArr2.length];
        bArr3[0] = b;
        int i3 = 1;
        for (s0 s0Var : s0VarArr) {
            byte[] bArr4 = s0Var.b;
            int length3 = bArr4.length - 1;
            System.arraycopy(bArr4, 1, bArr3, i3, length3);
            i3 += length3;
        }
        return bArr3;
    }

    @Override
    public void n(o1 o1Var, boolean z) throws IOException {
        if (!o()) {
            byte[] bArr = this.b;
            sq1.D(o1Var, z, bArr, 0, bArr.length);
            return;
        }
        o1Var.s(z, 35);
        o1Var.i(128);
        s0[] s0VarArr = this.f;
        if (s0VarArr != null) {
            o1Var.x(s0VarArr);
        } else {
            byte[] bArr2 = this.b;
            if (bArr2.length >= 2) {
                byte b = bArr2[0];
                int length = bArr2.length;
                int i = length - 1;
                int i2 = this.e - 1;
                while (i > i2) {
                    sq1.C(o1Var, true, (byte) 0, this.b, length - i, i2);
                    i -= i2;
                }
                sq1.C(o1Var, true, b, this.b, length - i, i);
            }
        }
        o1Var.i(0);
        o1Var.i(0);
    }

    @Override
    public boolean o() {
        return this.f != null || this.b.length > this.e;
    }

    @Override
    public int q(boolean z) {
        if (!o()) {
            return sq1.E(z, this.b.length);
        }
        int iQ = z ? 4 : 3;
        if (this.f == null) {
            byte[] bArr = this.b;
            if (bArr.length < 2) {
                return iQ;
            }
            int length = bArr.length - 2;
            int i = this.e;
            int i2 = length / (i - 1);
            return iQ + (sq1.E(true, i) * i2) + sq1.E(true, this.b.length - (i2 * (this.e - 1)));
        }
        int i3 = 0;
        while (true) {
            s0[] s0VarArr = this.f;
            if (i3 >= s0VarArr.length) {
                return iQ;
            }
            iQ += s0VarArr[i3].q(true);
            i3++;
        }
    }

    public g40(byte[] bArr, int i, int i2) {
        super(bArr, i);
        this.f = null;
        this.e = i2;
    }

    public g40(s0[] s0VarArr) {
        this(s0VarArr, 1000);
    }

    public g40(s0[] s0VarArr, int i) {
        super(C(s0VarArr), false);
        this.f = s0VarArr;
        this.e = i;
    }
}
