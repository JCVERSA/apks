package defpackage;

import android.graphics.Bitmap;
import android.graphics.Rect;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Arrays;

public final class lie {
    public boolean b;
    public boolean c;
    public int[] d;
    public int e;
    public int f;
    public Rect g;
    public final int[] a = new int[4];
    public int h = -1;
    public int i = -1;

    public static int e(int[] iArr, int i) {
        if (i >= iArr.length) {
            i = 0;
        }
        return iArr[i];
    }

    public static int f(int i, int i2) {
        return (i & 16777215) | ((i2 * 17) << 24);
    }

    public final fyf a(u4h u4hVar) {
        Rect rect;
        if (this.d == null || !this.b || !this.c || (rect = this.g) == null || this.h == -1 || this.i == -1 || rect.width() < 2 || this.g.height() < 2) {
            return null;
        }
        Rect rect2 = this.g;
        int[] iArr = new int[rect2.width() * rect2.height()];
        p3h p3hVar = new p3h();
        u4hVar.l(this.h);
        p3hVar.j(u4hVar);
        g(p3hVar, true, rect2, iArr);
        u4hVar.l(this.i);
        p3hVar.j(u4hVar);
        g(p3hVar, false, rect2, iArr);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr, rect2.width(), rect2.height(), Bitmap.Config.ARGB_8888);
        zvf zvfVar = new zvf();
        zvfVar.c(bitmapCreateBitmap);
        zvfVar.h(rect2.left / this.e);
        zvfVar.i(0);
        zvfVar.e(rect2.top / this.f, 0);
        zvfVar.f(0);
        zvfVar.k(rect2.width() / this.e);
        zvfVar.d(rect2.height() / this.f);
        return zvfVar.p();
    }

    public final void b(String str) {
        int i;
        String strTrim = str.trim();
        int i2 = kfh.a;
        for (String str2 : strTrim.split("\\r?\\n", -1)) {
            if (str2.startsWith("palette: ")) {
                String[] strArrSplit = str2.substring(9).split(StringUtils.COMMA, -1);
                this.d = new int[strArrSplit.length];
                for (int i3 = 0; i3 < strArrSplit.length; i3++) {
                    int[] iArr = this.d;
                    try {
                        i = Integer.parseInt(strArrSplit[i3].trim(), 16);
                    } catch (RuntimeException unused) {
                        i = 0;
                    }
                    iArr[i3] = i;
                }
            } else if (str2.startsWith("size: ")) {
                String[] strArrSplit2 = str2.substring(6).trim().split("x", -1);
                if (strArrSplit2.length == 2) {
                    try {
                        this.e = Integer.parseInt(strArrSplit2[0]);
                        this.f = Integer.parseInt(strArrSplit2[1]);
                        this.b = true;
                    } catch (RuntimeException e) {
                        zrg.g("VobsubParser", "Parsing IDX failed", e);
                    }
                }
            }
        }
    }

    public final void c(u4h u4hVar) {
        int[] iArr = this.d;
        if (iArr == null || !this.b) {
            return;
        }
        u4hVar.m(u4hVar.K() - 2);
        int iK = u4hVar.K();
        while (u4hVar.w() < iK && u4hVar.u() > 0) {
            switch (u4hVar.G()) {
                case 0:
                case 1:
                case 2:
                    break;
                case 3:
                    if (u4hVar.u() < 2) {
                        return;
                    }
                    int iG = u4hVar.G();
                    int iG2 = u4hVar.G();
                    int[] iArr2 = this.a;
                    iArr2[3] = e(iArr, iG >> 4);
                    iArr2[2] = e(iArr, iG & 15);
                    iArr2[1] = e(iArr, iG2 >> 4);
                    iArr2[0] = e(iArr, iG2 & 15);
                    this.c = true;
                    break;
                case 4:
                    if (u4hVar.u() < 2 || !this.c) {
                        return;
                    }
                    int iG3 = u4hVar.G();
                    int iG4 = u4hVar.G();
                    int[] iArr3 = this.a;
                    iArr3[3] = f(iArr3[3], iG3 >> 4);
                    iArr3[2] = f(iArr3[2], iG3 & 15);
                    iArr3[1] = f(iArr3[1], iG4 >> 4);
                    iArr3[0] = f(iArr3[0], iG4 & 15);
                    break;
                case 5:
                    if (u4hVar.u() < 6) {
                        return;
                    }
                    int iG5 = u4hVar.G();
                    int iG6 = u4hVar.G();
                    int i = iG6 >> 4;
                    int iG7 = ((iG6 & 15) << 8) | u4hVar.G();
                    int iG8 = u4hVar.G();
                    int iG9 = u4hVar.G();
                    this.g = new Rect((iG5 << 4) | i, (iG8 << 4) | (iG9 >> 4), iG7 + 1, (((iG9 & 15) << 8) | u4hVar.G()) + 1);
                    break;
                case 6:
                    if (u4hVar.u() < 4) {
                        return;
                    }
                    this.h = u4hVar.K();
                    this.i = u4hVar.K();
                    break;
                default:
                    return;
            }
        }
    }

    public final void d() {
        this.c = false;
        this.g = null;
        this.h = -1;
        this.i = -1;
    }

    public final void g(p3h p3hVar, boolean z, Rect rect, int[] iArr) {
        int i;
        int i2;
        int i3 = !z ? 1 : 0;
        int iWidth = rect.width();
        int i4 = i3 * iWidth;
        int iHeight = rect.height();
        while (true) {
            int i5 = 0;
            do {
                int i6 = 1;
                int iD = 0;
                while (true) {
                    if (iD >= i6 || i6 > 64) {
                        i = iD & 3;
                        if (iD >= 4) {
                            i2 = iD >> 2;
                            break;
                        } else {
                            i2 = iWidth;
                            break;
                        }
                    }
                    if (p3hVar.a() < 4) {
                        i = -1;
                        i2 = 0;
                        break;
                    } else {
                        iD = (iD << 4) | p3hVar.d(4);
                        i6 <<= 2;
                    }
                }
                int iMin = Math.min(i2, iWidth - i5);
                if (iMin > 0) {
                    int i7 = i4 + iMin;
                    Arrays.fill(iArr, i4, i7, this.a[i]);
                    i5 += iMin;
                    i4 = i7;
                }
            } while (i5 < iWidth);
            i3 += 2;
            if (i3 >= iHeight) {
                return;
            }
            i4 = i3 * iWidth;
            p3hVar.f();
        }
    }
}
