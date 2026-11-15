package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class a43 {
    public static final byte[] h = {0, 7, 8, 15};
    public static final byte[] i = {0, 119, -120, -1};
    public static final byte[] j = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    public final Paint a;
    public final Paint b;
    public final Canvas c;
    public final b d;
    public final a e;
    public final h f;
    public Bitmap g;

    public static final class a {
        public final int a;
        public final int[] b;
        public final int[] c;
        public final int[] d;

        public a(int i, int[] iArr, int[] iArr2, int[] iArr3) {
            this.a = i;
            this.b = iArr;
            this.c = iArr2;
            this.d = iArr3;
        }
    }

    public static final class b {
        public final int a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;

        public b(int i, int i2, int i3, int i4, int i5, int i6) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = i5;
            this.f = i6;
        }
    }

    public static final class c {
        public final int a;
        public final boolean b;
        public final byte[] c;
        public final byte[] d;

        public c(int i, boolean z, byte[] bArr, byte[] bArr2) {
            this.a = i;
            this.b = z;
            this.c = bArr;
            this.d = bArr2;
        }
    }

    public static final class d {
        public final int a;
        public final int b;
        public final int c;
        public final SparseArray d;

        public d(int i, int i2, int i3, SparseArray sparseArray) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = sparseArray;
        }
    }

    public static final class e {
        public final int a;
        public final int b;

        public e(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    public static final class f {
        public final int a;
        public final boolean b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;
        public final int g;
        public final int h;
        public final int i;
        public final int j;
        public final SparseArray k;

        public f(int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, SparseArray sparseArray) {
            this.a = i;
            this.b = z;
            this.c = i2;
            this.d = i3;
            this.e = i4;
            this.f = i5;
            this.g = i6;
            this.h = i7;
            this.i = i8;
            this.j = i9;
            this.k = sparseArray;
        }

        public void a(f fVar) {
            SparseArray sparseArray = fVar.k;
            for (int i = 0; i < sparseArray.size(); i++) {
                this.k.put(sparseArray.keyAt(i), (g) sparseArray.valueAt(i));
            }
        }
    }

    public static final class g {
        public final int a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;

        public g(int i, int i2, int i3, int i4, int i5, int i6) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = i5;
            this.f = i6;
        }
    }

    public static final class h {
        public final int a;
        public final int b;
        public final SparseArray c = new SparseArray();
        public final SparseArray d = new SparseArray();
        public final SparseArray e = new SparseArray();
        public final SparseArray f = new SparseArray();
        public final SparseArray g = new SparseArray();
        public b h;
        public d i;

        public h(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        public void a() {
            this.c.clear();
            this.d.clear();
            this.e.clear();
            this.f.clear();
            this.g.clear();
            this.h = null;
            this.i = null;
        }
    }

    public a43(int i2, int i3) {
        Paint paint = new Paint();
        this.a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.c = new Canvas();
        this.d = new b(AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 575, 0, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 0, 575);
        this.e = new a(0, c(), d(), e());
        this.f = new h(i2, i3);
    }

    public static byte[] a(int i2, int i3, pw7 pw7Var) {
        byte[] bArr = new byte[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            bArr[i4] = (byte) pw7Var.h(i3);
        }
        return bArr;
    }

    public static int[] c() {
        return new int[]{0, -1, -16777216, -8421505};
    }

    public static int[] d() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i2 = 1; i2 < 16; i2++) {
            if (i2 < 8) {
                iArr[i2] = f(255, (i2 & 1) != 0 ? 255 : 0, (i2 & 2) != 0 ? 255 : 0, (i2 & 4) != 0 ? 255 : 0);
            } else {
                iArr[i2] = f(255, (i2 & 1) != 0 ? 127 : 0, (i2 & 2) != 0 ? 127 : 0, (i2 & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    public static int[] e() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            if (i2 < 8) {
                iArr[i2] = f(63, (i2 & 1) != 0 ? 255 : 0, (i2 & 2) != 0 ? 255 : 0, (i2 & 4) == 0 ? 0 : 255);
            } else {
                int i3 = i2 & 136;
                if (i3 == 0) {
                    iArr[i2] = f(255, ((i2 & 1) != 0 ? 85 : 0) + ((i2 & 16) != 0 ? 170 : 0), ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? 170 : 0), ((i2 & 4) == 0 ? 0 : 85) + ((i2 & 64) == 0 ? 0 : 170));
                } else if (i3 == 8) {
                    iArr[i2] = f(127, ((i2 & 1) != 0 ? 85 : 0) + ((i2 & 16) != 0 ? 170 : 0), ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? 170 : 0), ((i2 & 4) == 0 ? 0 : 85) + ((i2 & 64) == 0 ? 0 : 170));
                } else if (i3 == 128) {
                    iArr[i2] = f(255, ((i2 & 1) != 0 ? 43 : 0) + 127 + ((i2 & 16) != 0 ? 85 : 0), ((i2 & 2) != 0 ? 43 : 0) + 127 + ((i2 & 32) != 0 ? 85 : 0), ((i2 & 4) == 0 ? 0 : 43) + 127 + ((i2 & 64) == 0 ? 0 : 85));
                } else if (i3 == 136) {
                    iArr[i2] = f(255, ((i2 & 1) != 0 ? 43 : 0) + ((i2 & 16) != 0 ? 85 : 0), ((i2 & 2) != 0 ? 43 : 0) + ((i2 & 32) != 0 ? 85 : 0), ((i2 & 4) == 0 ? 0 : 43) + ((i2 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    public static int f(int i2, int i3, int i4, int i5) {
        return (i2 << 24) | (i3 << 16) | (i4 << 8) | i5;
    }

    public static int g(pw7 pw7Var, int[] iArr, byte[] bArr, int i2, int i3, Paint paint, Canvas canvas) {
        int i4;
        int iH;
        int iH2;
        int i5 = i2;
        boolean z = false;
        while (true) {
            int iH3 = pw7Var.h(2);
            if (iH3 != 0) {
                z = z;
                i4 = 1;
            } else {
                if (pw7Var.g()) {
                    iH = pw7Var.h(3) + 3;
                    iH2 = pw7Var.h(2);
                } else {
                    if (pw7Var.g()) {
                        i4 = 1;
                    } else {
                        int iH4 = pw7Var.h(2);
                        if (iH4 == 0) {
                            z = true;
                        } else if (iH4 == 1) {
                            i4 = 2;
                        } else if (iH4 == 2) {
                            iH = pw7Var.h(4) + 12;
                            iH2 = pw7Var.h(2);
                        } else if (iH4 != 3) {
                            z = z;
                        } else {
                            iH = pw7Var.h(8) + 29;
                            iH2 = pw7Var.h(2);
                        }
                        iH3 = 0;
                        i4 = 0;
                    }
                    iH3 = 0;
                }
                z = z;
                i4 = iH;
                iH3 = iH2;
            }
            if (i4 != 0 && paint != null) {
                if (bArr != null) {
                    iH3 = bArr[iH3];
                }
                paint.setColor(iArr[iH3]);
                canvas.drawRect(i5, i3, i5 + i4, i3 + 1, paint);
            }
            i5 += i4;
            if (z) {
                return i5;
            }
            z = z;
        }
    }

    public static int h(pw7 pw7Var, int[] iArr, byte[] bArr, int i2, int i3, Paint paint, Canvas canvas) {
        int i4;
        int iH;
        int iH2;
        int i5 = i2;
        boolean z = false;
        while (true) {
            int iH3 = pw7Var.h(4);
            if (iH3 != 0) {
                z = z;
                i4 = 1;
            } else if (pw7Var.g()) {
                if (pw7Var.g()) {
                    int iH4 = pw7Var.h(2);
                    if (iH4 == 0) {
                        i4 = 1;
                    } else if (iH4 == 1) {
                        i4 = 2;
                    } else if (iH4 == 2) {
                        iH = pw7Var.h(4) + 9;
                        iH2 = pw7Var.h(4);
                    } else if (iH4 != 3) {
                        z = z;
                        iH3 = 0;
                        i4 = 0;
                    } else {
                        iH = pw7Var.h(8) + 25;
                        iH2 = pw7Var.h(4);
                    }
                    iH3 = 0;
                } else {
                    iH = pw7Var.h(2) + 4;
                    iH2 = pw7Var.h(4);
                }
                z = z;
                i4 = iH;
                iH3 = iH2;
            } else {
                int iH5 = pw7Var.h(3);
                if (iH5 != 0) {
                    i4 = iH5 + 2;
                    iH3 = 0;
                } else {
                    z = true;
                    iH3 = 0;
                    i4 = 0;
                }
            }
            if (i4 != 0 && paint != null) {
                if (bArr != null) {
                    iH3 = bArr[iH3];
                }
                paint.setColor(iArr[iH3]);
                canvas.drawRect(i5, i3, i5 + i4, i3 + 1, paint);
            }
            i5 += i4;
            if (z) {
                return i5;
            }
            z = z;
        }
    }

    public static int i(pw7 pw7Var, int[] iArr, byte[] bArr, int i2, int i3, Paint paint, Canvas canvas) {
        boolean z;
        int iH;
        int i4 = i2;
        boolean z2 = false;
        while (true) {
            int iH2 = pw7Var.h(8);
            if (iH2 != 0) {
                z = z2;
                iH = 1;
            } else if (pw7Var.g()) {
                z = z2;
                iH = pw7Var.h(7);
                iH2 = pw7Var.h(8);
            } else {
                int iH3 = pw7Var.h(7);
                if (iH3 != 0) {
                    z = z2;
                    iH = iH3;
                    iH2 = 0;
                } else {
                    z = true;
                    iH2 = 0;
                    iH = 0;
                }
            }
            if (iH != 0 && paint != null) {
                if (bArr != null) {
                    iH2 = bArr[iH2];
                }
                paint.setColor(iArr[iH2]);
                canvas.drawRect(i4, i3, i4 + iH, i3 + 1, paint);
            }
            i4 += iH;
            if (z) {
                return i4;
            }
            z2 = z;
        }
    }

    public static void j(byte[] bArr, int[] iArr, int i2, int i3, int i4, Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        pw7 pw7Var = new pw7(bArr);
        int iG = i3;
        int i5 = i4;
        byte[] bArrA = null;
        byte[] bArrA2 = null;
        byte[] bArrA3 = null;
        while (pw7Var.b() != 0) {
            int iH = pw7Var.h(8);
            if (iH != 240) {
                switch (iH) {
                    case 16:
                        if (i2 != 3) {
                            if (i2 == 2) {
                                bArr3 = bArrA3 == null ? h : bArrA3;
                            } else {
                                bArr2 = null;
                            }
                            iG = g(pw7Var, iArr, bArr2, iG, i5, paint, canvas);
                            pw7Var.c();
                        } else {
                            bArr3 = bArrA == null ? i : bArrA;
                        }
                        bArr2 = bArr3;
                        iG = g(pw7Var, iArr, bArr2, iG, i5, paint, canvas);
                        pw7Var.c();
                        break;
                    case 17:
                        iG = h(pw7Var, iArr, i2 == 3 ? bArrA2 == null ? j : bArrA2 : null, iG, i5, paint, canvas);
                        pw7Var.c();
                        break;
                    case 18:
                        iG = i(pw7Var, iArr, null, iG, i5, paint, canvas);
                        break;
                    default:
                        switch (iH) {
                            case 32:
                                bArrA3 = a(4, 4, pw7Var);
                                break;
                            case 33:
                                bArrA = a(4, 8, pw7Var);
                                break;
                            case 34:
                                bArrA2 = a(16, 8, pw7Var);
                                break;
                        }
                        break;
                }
            } else {
                i5 += 2;
                iG = i3;
            }
        }
    }

    public static void k(c cVar, a aVar, int i2, int i3, int i4, Paint paint, Canvas canvas) {
        int[] iArr;
        if (i2 == 3) {
            iArr = aVar.d;
        } else {
            iArr = i2 == 2 ? aVar.c : aVar.b;
        }
        int[] iArr2 = iArr;
        j(cVar.c, iArr2, i2, i3, i4, paint, canvas);
        j(cVar.d, iArr2, i2, i3, i4 + 1, paint, canvas);
    }

    public static a l(pw7 pw7Var, int i2) {
        int[] iArr;
        int iH;
        int i3;
        int iH2;
        int iH3;
        int iH4;
        int i4 = 8;
        int iH5 = pw7Var.h(8);
        pw7Var.r(8);
        int i5 = 2;
        int i6 = i2 - 2;
        int[] iArrC = c();
        int[] iArrD = d();
        int[] iArrE = e();
        while (i6 > 0) {
            int iH6 = pw7Var.h(i4);
            int iH7 = pw7Var.h(i4);
            if ((iH7 & 128) != 0) {
                iArr = iArrC;
            } else {
                iArr = (iH7 & 64) != 0 ? iArrD : iArrE;
            }
            if ((iH7 & 1) != 0) {
                iH3 = pw7Var.h(i4);
                iH4 = pw7Var.h(i4);
                iH = pw7Var.h(i4);
                iH2 = pw7Var.h(i4);
                i3 = i6 - 6;
            } else {
                int iH8 = pw7Var.h(6) << i5;
                int iH9 = pw7Var.h(4) << 4;
                iH = pw7Var.h(4) << 4;
                i3 = i6 - 4;
                iH2 = pw7Var.h(i5) << 6;
                iH3 = iH8;
                iH4 = iH9;
            }
            if (iH3 == 0) {
                iH2 = 255;
                iH4 = 0;
                iH = 0;
            }
            double d2 = iH3;
            double d3 = iH4 - 128;
            double d4 = iH - 128;
            iArr[iH6] = f((byte) (255 - (iH2 & 255)), blb.p((int) (d2 + (1.402d * d3)), 0, 255), blb.p((int) ((d2 - (0.34414d * d4)) - (d3 * 0.71414d)), 0, 255), blb.p((int) (d2 + (d4 * 1.772d)), 0, 255));
            i6 = i3;
            iH5 = iH5;
            i4 = 8;
            i5 = 2;
        }
        return new a(iH5, iArrC, iArrD, iArrE);
    }

    public static b m(pw7 pw7Var) {
        int i2;
        int i3;
        int i4;
        int iH;
        pw7Var.r(4);
        boolean zG = pw7Var.g();
        pw7Var.r(3);
        int iH2 = pw7Var.h(16);
        int iH3 = pw7Var.h(16);
        if (zG) {
            int iH4 = pw7Var.h(16);
            int iH5 = pw7Var.h(16);
            int iH6 = pw7Var.h(16);
            iH = pw7Var.h(16);
            i4 = iH5;
            i3 = iH6;
            i2 = iH4;
        } else {
            i2 = 0;
            i3 = 0;
            i4 = iH2;
            iH = iH3;
        }
        return new b(iH2, iH3, i2, i4, i3, iH);
    }

    public static c n(pw7 pw7Var) {
        byte[] bArr;
        int iH = pw7Var.h(16);
        pw7Var.r(4);
        int iH2 = pw7Var.h(2);
        boolean zG = pw7Var.g();
        pw7Var.r(1);
        byte[] bArr2 = blb.f;
        if (iH2 != 1) {
            if (iH2 == 0) {
                int iH3 = pw7Var.h(16);
                int iH4 = pw7Var.h(16);
                if (iH3 > 0) {
                    bArr2 = new byte[iH3];
                    pw7Var.k(bArr2, 0, iH3);
                }
                if (iH4 > 0) {
                    bArr = new byte[iH4];
                    pw7Var.k(bArr, 0, iH4);
                }
            }
            return new c(iH, zG, bArr2, bArr);
        }
        pw7Var.r(pw7Var.h(8) * 16);
        bArr = bArr2;
        return new c(iH, zG, bArr2, bArr);
    }

    public static d o(pw7 pw7Var, int i2) {
        int iH = pw7Var.h(8);
        int iH2 = pw7Var.h(4);
        int iH3 = pw7Var.h(2);
        pw7Var.r(2);
        int i3 = i2 - 2;
        SparseArray sparseArray = new SparseArray();
        while (i3 > 0) {
            int iH4 = pw7Var.h(8);
            pw7Var.r(8);
            i3 -= 6;
            sparseArray.put(iH4, new e(pw7Var.h(16), pw7Var.h(16)));
        }
        return new d(iH, iH2, iH3, sparseArray);
    }

    public static f p(pw7 pw7Var, int i2) {
        int i3;
        int iH;
        int iH2;
        int iH3 = pw7Var.h(8);
        pw7Var.r(4);
        boolean zG = pw7Var.g();
        pw7Var.r(3);
        int i4 = 16;
        int iH4 = pw7Var.h(16);
        int iH5 = pw7Var.h(16);
        int iH6 = pw7Var.h(3);
        int iH7 = pw7Var.h(3);
        int i5 = 2;
        pw7Var.r(2);
        int iH8 = pw7Var.h(8);
        int iH9 = pw7Var.h(8);
        int iH10 = pw7Var.h(4);
        int iH11 = pw7Var.h(2);
        pw7Var.r(2);
        int i6 = i2 - 10;
        SparseArray sparseArray = new SparseArray();
        while (i6 > 0) {
            int iH12 = pw7Var.h(i4);
            int iH13 = pw7Var.h(i5);
            int iH14 = pw7Var.h(i5);
            int iH15 = pw7Var.h(12);
            int i7 = iH11;
            pw7Var.r(4);
            int iH16 = pw7Var.h(12);
            int i8 = i6 - 6;
            if (iH13 != 1) {
                i3 = 2;
                if (iH13 != 2) {
                    iH2 = 0;
                    iH = 0;
                    i6 = i8;
                }
                sparseArray.put(iH12, new g(iH13, iH14, iH15, iH16, iH2, iH));
                i5 = i3;
                iH11 = i7;
                i4 = 16;
            } else {
                i3 = 2;
            }
            i6 -= 8;
            iH2 = pw7Var.h(8);
            iH = pw7Var.h(8);
            sparseArray.put(iH12, new g(iH13, iH14, iH15, iH16, iH2, iH));
            i5 = i3;
            iH11 = i7;
            i4 = 16;
        }
        return new f(iH3, zG, iH4, iH5, iH6, iH7, iH8, iH9, iH10, iH11, sparseArray);
    }

    public static void q(pw7 pw7Var, h hVar) {
        f fVar;
        int iH = pw7Var.h(8);
        int iH2 = pw7Var.h(16);
        int iH3 = pw7Var.h(16);
        int iD = pw7Var.d() + iH3;
        if (iH3 * 8 > pw7Var.b()) {
            op5.i("DvbParser", "Data field length exceeds limit");
            pw7Var.r(pw7Var.b());
            return;
        }
        switch (iH) {
            case 16:
                if (iH2 == hVar.a) {
                    d dVar = hVar.i;
                    d dVarO = o(pw7Var, iH3);
                    if (dVarO.c != 0) {
                        hVar.i = dVarO;
                        hVar.c.clear();
                        hVar.d.clear();
                        hVar.e.clear();
                    } else if (dVar != null && dVar.b != dVarO.b) {
                        hVar.i = dVarO;
                    }
                }
                break;
            case 17:
                d dVar2 = hVar.i;
                if (iH2 == hVar.a && dVar2 != null) {
                    f fVarP = p(pw7Var, iH3);
                    if (dVar2.c == 0 && (fVar = (f) hVar.c.get(fVarP.a)) != null) {
                        fVarP.a(fVar);
                    }
                    hVar.c.put(fVarP.a, fVarP);
                }
                break;
            case 18:
                if (iH2 == hVar.a) {
                    a aVarL = l(pw7Var, iH3);
                    hVar.d.put(aVarL.a, aVarL);
                } else if (iH2 == hVar.b) {
                    a aVarL2 = l(pw7Var, iH3);
                    hVar.f.put(aVarL2.a, aVarL2);
                }
                break;
            case 19:
                if (iH2 == hVar.a) {
                    c cVarN = n(pw7Var);
                    hVar.e.put(cVarN.a, cVarN);
                } else if (iH2 == hVar.b) {
                    c cVarN2 = n(pw7Var);
                    hVar.g.put(cVarN2.a, cVarN2);
                }
                break;
            case 20:
                if (iH2 == hVar.a) {
                    hVar.h = m(pw7Var);
                }
                break;
        }
        pw7Var.s(iD - pw7Var.d());
    }

    public List b(byte[] bArr, int i2) {
        pw7 pw7Var = new pw7(bArr, i2);
        while (pw7Var.b() >= 48 && pw7Var.h(8) == 15) {
            q(pw7Var, this.f);
        }
        h hVar = this.f;
        d dVar = hVar.i;
        if (dVar == null) {
            return Collections.emptyList();
        }
        b bVar = hVar.h;
        if (bVar == null) {
            bVar = this.d;
        }
        Bitmap bitmap = this.g;
        if (bitmap == null || bVar.a + 1 != bitmap.getWidth() || bVar.b + 1 != this.g.getHeight()) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bVar.a + 1, bVar.b + 1, Bitmap.Config.ARGB_8888);
            this.g = bitmapCreateBitmap;
            this.c.setBitmap(bitmapCreateBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray sparseArray = dVar.d;
        for (int i3 = 0; i3 < sparseArray.size(); i3++) {
            this.c.save();
            e eVar = (e) sparseArray.valueAt(i3);
            f fVar = (f) this.f.c.get(sparseArray.keyAt(i3));
            int i4 = eVar.a + bVar.c;
            int i5 = eVar.b + bVar.e;
            this.c.clipRect(i4, i5, Math.min(fVar.c + i4, bVar.d), Math.min(fVar.d + i5, bVar.f));
            a aVar = (a) this.f.d.get(fVar.g);
            if (aVar == null && (aVar = (a) this.f.f.get(fVar.g)) == null) {
                aVar = this.e;
            }
            int i6 = 0;
            for (SparseArray sparseArray2 = fVar.k; i6 < sparseArray2.size(); sparseArray2 = sparseArray2) {
                int iKeyAt = sparseArray2.keyAt(i6);
                g gVar = (g) sparseArray2.valueAt(i6);
                c cVar = (c) this.f.e.get(iKeyAt);
                c cVar2 = cVar == null ? (c) this.f.g.get(iKeyAt) : cVar;
                if (cVar2 != null) {
                    k(cVar2, aVar, fVar.f, gVar.c + i4, i5 + gVar.d, cVar2.b ? null : this.a, this.c);
                }
                i6++;
            }
            if (fVar.b) {
                int i7 = fVar.f;
                this.b.setColor(i7 == 3 ? aVar.d[fVar.h] : i7 == 2 ? aVar.c[fVar.i] : aVar.b[fVar.j]);
                this.c.drawRect(i4, i5, fVar.c + i4, fVar.d + i5, this.b);
            }
            arrayList.add(new jm1.b().f(Bitmap.createBitmap(this.g, i4, i5, fVar.c, fVar.d)).k(i4 / bVar.a).l(0).h(i5 / bVar.b, 0).i(0).n(fVar.c / bVar.a).g(fVar.d / bVar.b).a());
            this.c.drawColor(0, PorterDuff.Mode.CLEAR);
            this.c.restore();
        }
        return Collections.unmodifiableList(arrayList);
    }

    public void r() {
        this.f.a();
    }
}
