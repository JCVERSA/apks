package vz;

import org.mvel2.ast.ASTNode;

public class q {

    static final q f73972n = new q();

    short f73973a;

    private short f73974b;

    private int[] f73975c;

    int f73976d;

    private int[] f73977e;

    short f73978f;

    short f73979g;

    short f73980h;

    short f73981i;

    n f73982j;

    q f73983k;

    k f73984l;

    q f73985m;

    private void b(int i10, int i11, int i12) {
        if (this.f73977e == null) {
            this.f73977e = new int[6];
        }
        int[] iArr = this.f73977e;
        int i13 = iArr[0];
        if (i13 + 2 >= iArr.length) {
            int[] iArr2 = new int[iArr.length + 6];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.f73977e = iArr2;
        }
        int[] iArr3 = this.f73977e;
        iArr3[i13 + 1] = i10;
        int i14 = i13 + 2;
        iArr3[i14] = i11 | i12;
        iArr3[0] = i14;
    }

    private q g(q qVar) {
        for (k kVar = this.f73984l; kVar != null; kVar = kVar.f73938c) {
            if ((this.f73973a & 16) == 0 || kVar != this.f73984l.f73938c) {
                q qVar2 = kVar.f73937b;
                if (qVar2.f73985m == null) {
                    qVar2.f73985m = qVar;
                    qVar = qVar2;
                }
            }
        }
        return qVar;
    }

    final void a(r rVar, boolean z10) {
        short s10;
        rVar.o(this);
        if (!z10 || (s10 = this.f73974b) == 0) {
            return;
        }
        rVar.q(s10 & 65535, this);
        if (this.f73975c == null) {
            return;
        }
        int i10 = 1;
        while (true) {
            int[] iArr = this.f73975c;
            if (i10 > iArr[0]) {
                return;
            }
            rVar.q(iArr[i10], this);
            i10++;
        }
    }

    final void c(int i10) {
        if (this.f73974b == 0) {
            this.f73974b = (short) i10;
            return;
        }
        if (this.f73975c == null) {
            this.f73975c = new int[4];
        }
        int[] iArr = this.f73975c;
        int i11 = iArr[0] + 1;
        iArr[0] = i11;
        if (i11 >= iArr.length) {
            int[] iArr2 = new int[iArr.length + 4];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.f73975c = iArr2;
        }
        this.f73975c[i11] = i10;
    }

    final void d(q qVar) {
        q qVar2 = f73972n;
        this.f73985m = qVar2;
        q qVar3 = qVar2;
        q qVarG = this;
        while (qVarG != f73972n) {
            q qVar4 = qVarG.f73985m;
            qVarG.f73985m = qVar3;
            if ((qVarG.f73973a & 64) != 0 && qVarG.f73981i != qVar.f73981i) {
                qVarG.f73984l = new k(qVarG.f73979g, qVar.f73984l.f73937b, qVarG.f73984l);
            }
            qVar3 = qVarG;
            qVarG = qVarG.g(qVar4);
        }
        while (qVar3 != f73972n) {
            q qVar5 = qVar3.f73985m;
            qVar3.f73985m = null;
            qVar3 = qVar5;
        }
    }

    final q e() {
        n nVar = this.f73982j;
        return nVar == null ? this : nVar.f73952a;
    }

    final void f(short s10) {
        this.f73985m = f73972n;
        q qVarG = this;
        while (qVarG != f73972n) {
            q qVar = qVarG.f73985m;
            qVarG.f73985m = null;
            if (qVarG.f73981i == 0) {
                qVarG.f73981i = s10;
                qVarG = qVarG.g(qVar);
            } else {
                qVarG = qVar;
            }
        }
    }

    final void h(d dVar, int i10, boolean z10) {
        if ((this.f73973a & 4) != 0) {
            if (z10) {
                dVar.i(this.f73976d - i10);
                return;
            } else {
                dVar.k(this.f73976d - i10);
                return;
            }
        }
        if (z10) {
            b(i10, ASTNode.DISCARD, dVar.f73879b);
            dVar.i(-1);
        } else {
            b(i10, ASTNode.DEOP, dVar.f73879b);
            dVar.k(-1);
        }
    }

    final boolean i(byte[] bArr, int i10) {
        this.f73973a = (short) (this.f73973a | 4);
        this.f73976d = i10;
        int[] iArr = this.f73977e;
        boolean z10 = false;
        if (iArr == null) {
            return false;
        }
        for (int i11 = iArr[0]; i11 > 0; i11 -= 2) {
            int[] iArr2 = this.f73977e;
            int i12 = iArr2[i11 - 1];
            int i13 = iArr2[i11];
            int i14 = i10 - i12;
            int i15 = 268435455 & i13;
            if ((i13 & (-268435456)) == 268435456) {
                if (i14 < -32768 || i14 > 32767) {
                    int i16 = bArr[i12] & 255;
                    if (i16 < 198) {
                        bArr[i12] = (byte) (i16 + 49);
                    } else {
                        bArr[i12] = (byte) (i16 + 20);
                    }
                    z10 = true;
                }
                bArr[i15] = (byte) (i14 >>> 8);
                bArr[i15 + 1] = (byte) i14;
            } else {
                bArr[i15] = (byte) (i14 >>> 24);
                bArr[i15 + 1] = (byte) (i14 >>> 16);
                bArr[i15 + 2] = (byte) (i14 >>> 8);
                bArr[i15 + 3] = (byte) i14;
            }
        }
        return z10;
    }

    public String toString() {
        return "L" + System.identityHashCode(this);
    }
}
