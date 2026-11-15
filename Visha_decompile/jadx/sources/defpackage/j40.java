package defpackage;

import java.io.IOException;

public class j40 extends m1 {
    public final int e;
    public final m1[] f;

    public j40(byte[] bArr) {
        this(bArr, 1000);
    }

    public static byte[] B(m1[] m1VarArr) {
        int length = m1VarArr.length;
        if (length == 0) {
            return m1.d;
        }
        if (length == 1) {
            return m1VarArr[0].b;
        }
        int length2 = 0;
        for (m1 m1Var : m1VarArr) {
            length2 += m1Var.b.length;
        }
        byte[] bArr = new byte[length2];
        int length3 = 0;
        for (m1 m1Var2 : m1VarArr) {
            byte[] bArr2 = m1Var2.b;
            System.arraycopy(bArr2, 0, bArr, length3, bArr2.length);
            length3 += bArr2.length;
        }
        return bArr;
    }

    @Override
    public void n(o1 o1Var, boolean z) throws IOException {
        o1Var.s(z, 36);
        o1Var.i(128);
        m1[] m1VarArr = this.f;
        if (m1VarArr == null) {
            int i = 0;
            while (true) {
                byte[] bArr = this.b;
                if (i >= bArr.length) {
                    break;
                }
                int iMin = Math.min(bArr.length - i, this.e);
                wp1.B(o1Var, true, this.b, i, iMin);
                i += iMin;
            }
        } else {
            o1Var.x(m1VarArr);
        }
        o1Var.i(0);
        o1Var.i(0);
    }

    @Override
    public boolean o() {
        return true;
    }

    @Override
    public int q(boolean z) {
        int iQ = z ? 4 : 3;
        if (this.f == null) {
            int length = this.b.length;
            int i = this.e;
            int i2 = length / i;
            int iC = iQ + (wp1.C(true, i) * i2);
            int length2 = this.b.length - (i2 * this.e);
            return length2 > 0 ? iC + wp1.C(true, length2) : iC;
        }
        int i3 = 0;
        while (true) {
            m1[] m1VarArr = this.f;
            if (i3 >= m1VarArr.length) {
                return iQ;
            }
            iQ += m1VarArr[i3].q(true);
            i3++;
        }
    }

    public j40(byte[] bArr, int i) {
        this(bArr, null, i);
    }

    public j40(byte[] bArr, m1[] m1VarArr, int i) {
        super(bArr);
        this.f = m1VarArr;
        this.e = i;
    }

    public j40(m1[] m1VarArr) {
        this(m1VarArr, 1000);
    }

    public j40(m1[] m1VarArr, int i) {
        this(B(m1VarArr), m1VarArr, i);
    }
}
