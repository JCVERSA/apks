package wd;

import com.google.zxing.ChecksumException;

public final class a {

    private final b f74261a = b.f74262f;

    private int[] b(c cVar) throws ChecksumException {
        int iD = cVar.d();
        int[] iArr = new int[iD];
        int i10 = 0;
        for (int i11 = 1; i11 < this.f74261a.e() && i10 < iD; i11++) {
            if (cVar.b(i11) == 0) {
                iArr[i10] = this.f74261a.g(i11);
                i10++;
            }
        }
        if (i10 == iD) {
            return iArr;
        }
        throw ChecksumException.getChecksumInstance();
    }

    private int[] c(c cVar, c cVar2, int[] iArr) {
        int iD = cVar2.d();
        if (iD < 1) {
            return new int[0];
        }
        int[] iArr2 = new int[iD];
        for (int i10 = 1; i10 <= iD; i10++) {
            iArr2[iD - i10] = this.f74261a.i(i10, cVar2.c(i10));
        }
        c cVar3 = new c(this.f74261a, iArr2);
        int length = iArr.length;
        int[] iArr3 = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            int iG = this.f74261a.g(iArr[i11]);
            iArr3[i11] = this.f74261a.i(this.f74261a.j(0, cVar.b(iG)), this.f74261a.g(cVar3.b(iG)));
        }
        return iArr3;
    }

    private c[] d(c cVar, c cVar2, int i10) throws ChecksumException {
        if (cVar.d() < cVar2.d()) {
            cVar2 = cVar;
            cVar = cVar2;
        }
        c cVarF = this.f74261a.f();
        c cVarD = this.f74261a.d();
        while (true) {
            c cVar3 = cVar2;
            cVar2 = cVar;
            cVar = cVar3;
            c cVar4 = cVarD;
            c cVar5 = cVarF;
            cVarF = cVar4;
            if (cVar.d() < i10 / 2) {
                int iC = cVarF.c(0);
                if (iC == 0) {
                    throw ChecksumException.getChecksumInstance();
                }
                int iG = this.f74261a.g(iC);
                return new c[]{cVarF.f(iG), cVar.f(iG)};
            }
            if (cVar.e()) {
                throw ChecksumException.getChecksumInstance();
            }
            c cVarF2 = this.f74261a.f();
            int iG2 = this.f74261a.g(cVar.c(cVar.d()));
            while (cVar2.d() >= cVar.d() && !cVar2.e()) {
                int iD = cVar2.d() - cVar.d();
                int i11 = this.f74261a.i(cVar2.c(cVar2.d()), iG2);
                cVarF2 = cVarF2.a(this.f74261a.b(iD, i11));
                cVar2 = cVar2.j(cVar.h(iD, i11));
            }
            cVarD = cVarF2.g(cVarF).j(cVar5).i();
        }
    }

    public int a(int[] iArr, int i10, int[] iArr2) throws ChecksumException {
        c cVar = new c(this.f74261a, iArr);
        int[] iArr3 = new int[i10];
        boolean z10 = false;
        for (int i11 = i10; i11 > 0; i11--) {
            int iB = cVar.b(this.f74261a.c(i11));
            iArr3[i10 - i11] = iB;
            if (iB != 0) {
                z10 = true;
            }
        }
        if (!z10) {
            return 0;
        }
        c cVarD = this.f74261a.d();
        if (iArr2 != null) {
            for (int i12 : iArr2) {
                int iC = this.f74261a.c((iArr.length - 1) - i12);
                b bVar = this.f74261a;
                cVarD = cVarD.g(new c(bVar, new int[]{bVar.j(0, iC), 1}));
            }
        }
        c[] cVarArrD = d(this.f74261a.b(i10, 1), new c(this.f74261a, iArr3), i10);
        c cVar2 = cVarArrD[0];
        c cVar3 = cVarArrD[1];
        int[] iArrB = b(cVar2);
        int[] iArrC = c(cVar3, cVar2, iArrB);
        for (int i13 = 0; i13 < iArrB.length; i13++) {
            int length = (iArr.length - 1) - this.f74261a.h(iArrB[i13]);
            if (length < 0) {
                throw ChecksumException.getChecksumInstance();
            }
            iArr[length] = this.f74261a.j(iArr[length], iArrC[i13]);
        }
        return iArrB.length;
    }
}
