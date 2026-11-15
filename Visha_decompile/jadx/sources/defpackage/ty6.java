package defpackage;

public abstract class ty6 {
    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        py6.y(iArr, iArr2, iArr3);
        py6.x(iArr, 8, iArr2, 8, iArr3, 16);
        int iE = py6.e(iArr3, 8, iArr3, 16);
        int iC = iE + py6.c(iArr3, 24, iArr3, 16, py6.c(iArr3, 0, iArr3, 8, 0) + iE);
        int[] iArrI = py6.i();
        int[] iArrI2 = py6.i();
        boolean z = py6.m(iArr, 8, iArr, 0, iArrI, 0) != py6.m(iArr2, 8, iArr2, 0, iArrI2, 0);
        int[] iArrK = py6.k();
        py6.y(iArrI, iArrI2, iArrK);
        vy6.f(32, iC + (z ? vy6.d(16, iArrK, 0, iArr3, 8) : vy6.R(16, iArrK, 0, iArr3, 8)), iArr3, 24);
    }

    public static void b(int[] iArr, int[] iArr2) {
        py6.F(iArr, iArr2);
        py6.E(iArr, 8, iArr2, 16);
        int iE = py6.e(iArr2, 8, iArr2, 16);
        int iC = iE + py6.c(iArr2, 24, iArr2, 16, py6.c(iArr2, 0, iArr2, 8, 0) + iE);
        int[] iArrI = py6.i();
        py6.m(iArr, 8, iArr, 0, iArrI, 0);
        int[] iArrK = py6.k();
        py6.F(iArrI, iArrK);
        vy6.f(32, iC + vy6.R(16, iArrK, 0, iArr2, 8), iArr2, 24);
    }
}
