package defpackage;

public abstract class ry6 {
    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        ny6.x(iArr, iArr2, iArr3);
        ny6.w(iArr, 6, iArr2, 6, iArr3, 12);
        int iD = ny6.d(iArr3, 6, iArr3, 12);
        int iC = iD + ny6.c(iArr3, 18, iArr3, 12, ny6.c(iArr3, 0, iArr3, 6, 0) + iD);
        int[] iArrH = ny6.h();
        int[] iArrH2 = ny6.h();
        boolean z = ny6.l(iArr, 6, iArr, 0, iArrH, 0) != ny6.l(iArr2, 6, iArr2, 0, iArrH2, 0);
        int[] iArrJ = ny6.j();
        ny6.x(iArrH, iArrH2, iArrJ);
        vy6.f(24, iC + (z ? vy6.d(12, iArrJ, 0, iArr3, 6) : vy6.R(12, iArrJ, 0, iArr3, 6)), iArr3, 18);
    }

    public static void b(int[] iArr, int[] iArr2) {
        ny6.D(iArr, iArr2);
        ny6.C(iArr, 6, iArr2, 12);
        int iD = ny6.d(iArr2, 6, iArr2, 12);
        int iC = iD + ny6.c(iArr2, 18, iArr2, 12, ny6.c(iArr2, 0, iArr2, 6, 0) + iD);
        int[] iArrH = ny6.h();
        ny6.l(iArr, 6, iArr, 0, iArrH, 0);
        int[] iArrJ = ny6.j();
        ny6.D(iArrH, iArrJ);
        vy6.f(24, iC + vy6.R(12, iArrJ, 0, iArr2, 6), iArr2, 18);
    }
}
