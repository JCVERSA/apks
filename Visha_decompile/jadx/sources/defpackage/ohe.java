package defpackage;

import android.graphics.Bitmap;
import java.util.Arrays;

public final class ohe {
    public final u4h a = new u4h();
    public final int[] b = new int[256];
    public boolean c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;

    public static void b(ohe oheVar, u4h u4hVar, int i) {
        int I;
        if (i < 4) {
            return;
        }
        u4hVar.m(3);
        int i2 = i - 4;
        if ((u4hVar.G() & 128) != 0) {
            if (i2 < 7 || (I = u4hVar.I()) < 4) {
                return;
            }
            oheVar.h = u4hVar.K();
            oheVar.i = u4hVar.K();
            oheVar.a.i(I - 4);
            i2 = i - 11;
        }
        u4h u4hVar2 = oheVar.a;
        int iW = u4hVar2.w();
        int iX = u4hVar2.x();
        if (iW >= iX || i2 <= 0) {
            return;
        }
        int iMin = Math.min(i2, iX - iW);
        u4hVar.h(u4hVar2.n(), iW, iMin);
        u4hVar2.l(iW + iMin);
    }

    public static void c(ohe oheVar, u4h u4hVar, int i) {
        if (i < 19) {
            return;
        }
        oheVar.d = u4hVar.K();
        oheVar.e = u4hVar.K();
        u4hVar.m(11);
        oheVar.f = u4hVar.K();
        oheVar.g = u4hVar.K();
    }

    public static void d(ohe oheVar, u4h u4hVar, int i) {
        if (i % 5 != 2) {
            return;
        }
        u4hVar.m(2);
        int[] iArr = oheVar.b;
        Arrays.fill(iArr, 0);
        int i2 = i / 5;
        for (int i3 = 0; i3 < i2; i3++) {
            int iG = u4hVar.G();
            int iG2 = u4hVar.G();
            int iG3 = u4hVar.G();
            int iG4 = u4hVar.G();
            double d = iG2;
            int iG5 = u4hVar.G() << 24;
            int i4 = kfh.a;
            double d2 = iG3 - 128;
            double d3 = iG4 - 128;
            iArr[iG] = (Math.max(0, Math.min((int) (d + (1.402d * d2)), 255)) << 16) | iG5 | (Math.max(0, Math.min((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 255)) << 8) | Math.max(0, Math.min((int) (d + (d3 * 1.772d)), 255));
        }
        oheVar.c = true;
    }

    public final fyf a() {
        int i;
        if (this.d == 0 || this.e == 0 || this.h == 0 || this.i == 0) {
            return null;
        }
        u4h u4hVar = this.a;
        if (u4hVar.x() == 0 || u4hVar.w() != u4hVar.x() || !this.c) {
            return null;
        }
        u4hVar.l(0);
        int i2 = this.h * this.i;
        int[] iArr = new int[i2];
        int i3 = 0;
        while (i3 < i2) {
            int iG = u4hVar.G();
            if (iG != 0) {
                i = i3 + 1;
                iArr[i3] = this.b[iG];
            } else {
                int iG2 = u4hVar.G();
                if (iG2 != 0) {
                    int iG3 = iG2 & 63;
                    if ((iG2 & 64) != 0) {
                        iG3 = (iG3 << 8) | u4hVar.G();
                    }
                    i = iG3 + i3;
                    Arrays.fill(iArr, i3, i, (iG2 & 128) == 0 ? this.b[0] : this.b[u4hVar.G()]);
                }
            }
            i3 = i;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr, this.h, this.i, Bitmap.Config.ARGB_8888);
        zvf zvfVar = new zvf();
        zvfVar.c(bitmapCreateBitmap);
        zvfVar.h(this.f / this.d);
        zvfVar.i(0);
        zvfVar.e(this.g / this.e, 0);
        zvfVar.f(0);
        zvfVar.k(this.h / this.d);
        zvfVar.d(this.i / this.e);
        return zvfVar.p();
    }

    public final void e() {
        this.d = 0;
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.i = 0;
        this.a.i(0);
        this.c = false;
    }
}
