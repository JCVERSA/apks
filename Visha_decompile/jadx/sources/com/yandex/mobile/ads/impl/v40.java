package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class v40 {
    private static final byte[] h = {0, 7, 8, 15};
    private static final byte[] i = {0, 119, -120, -1};
    private static final byte[] j = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    private final Paint a;
    private final Paint b;
    private final Canvas c;
    private final b d;
    private final a e;
    private final h f;
    private Bitmap g;

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
        public final SparseArray<e> c;

        public d(int i, int i2, SparseArray sparseArray) {
            this.a = i;
            this.b = i2;
            this.c = sparseArray;
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
        public final SparseArray<g> j;

        public f(int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, SparseArray sparseArray) {
            this.a = i;
            this.b = z;
            this.c = i2;
            this.d = i3;
            this.e = i4;
            this.f = i5;
            this.g = i6;
            this.h = i7;
            this.i = i8;
            this.j = sparseArray;
        }
    }

    public static final class g {
        public final int a;
        public final int b;

        public g(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    public static final class h {
        public final int a;
        public final int b;
        public final SparseArray<f> c = new SparseArray<>();
        public final SparseArray<a> d = new SparseArray<>();
        public final SparseArray<c> e = new SparseArray<>();
        public final SparseArray<a> f = new SparseArray<>();
        public final SparseArray<c> g = new SparseArray<>();

        @Nullable
        public b h;

        @Nullable
        public d i;

        public h(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    public v40(int i2, int i3) {
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
        this.e = new a(0, a(), b(), c());
        this.f = new h(i2, i3);
    }

    private static int a(int i2, int i3, int i4, int i5) {
        return (i2 << 24) | (i3 << 16) | (i4 << 8) | i5;
    }

    private static int[] b() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i2 = 1; i2 < 16; i2++) {
            if (i2 < 8) {
                iArr[i2] = a(255, (i2 & 1) != 0 ? 255 : 0, (i2 & 2) != 0 ? 255 : 0, (i2 & 4) != 0 ? 255 : 0);
            } else {
                iArr[i2] = a(255, (i2 & 1) != 0 ? 127 : 0, (i2 & 2) != 0 ? 127 : 0, (i2 & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    private static int[] c() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            if (i2 < 8) {
                iArr[i2] = a(63, (i2 & 1) != 0 ? 255 : 0, (i2 & 2) != 0 ? 255 : 0, (i2 & 4) == 0 ? 0 : 255);
            } else {
                int i3 = i2 & 136;
                if (i3 == 0) {
                    iArr[i2] = a(255, ((i2 & 1) != 0 ? 85 : 0) + ((i2 & 16) != 0 ? 170 : 0), ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? 170 : 0), ((i2 & 4) == 0 ? 0 : 85) + ((i2 & 64) == 0 ? 0 : 170));
                } else if (i3 == 8) {
                    iArr[i2] = a(127, ((i2 & 1) != 0 ? 85 : 0) + ((i2 & 16) != 0 ? 170 : 0), ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? 170 : 0), ((i2 & 4) == 0 ? 0 : 85) + ((i2 & 64) == 0 ? 0 : 170));
                } else if (i3 == 128) {
                    iArr[i2] = a(255, ((i2 & 1) != 0 ? 43 : 0) + 127 + ((i2 & 16) != 0 ? 85 : 0), ((i2 & 2) != 0 ? 43 : 0) + 127 + ((i2 & 32) != 0 ? 85 : 0), ((i2 & 4) == 0 ? 0 : 43) + 127 + ((i2 & 64) == 0 ? 0 : 85));
                } else if (i3 == 136) {
                    iArr[i2] = a(255, ((i2 & 1) != 0 ? 43 : 0) + ((i2 & 16) != 0 ? 85 : 0), ((i2 & 2) != 0 ? 43 : 0) + ((i2 & 32) != 0 ? 85 : 0), ((i2 & 4) == 0 ? 0 : 43) + ((i2 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    public final void d() {
        h hVar = this.f;
        hVar.c.clear();
        hVar.d.clear();
        hVar.e.clear();
        hVar.f.clear();
        hVar.g.clear();
        hVar.h = null;
        hVar.i = null;
    }

    private static int[] a() {
        return new int[]{0, -1, -16777216, -8421505};
    }

    /* JADX WARN: Code duplicated, block: B:118:0x0239  */
    /* JADX WARN: Code duplicated, block: B:122:0x0248 A[LOOP:3: B:93:0x0194->B:122:0x0248, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:146:0x0242 A[SYNTHETIC] */
    private static void a(byte[] bArr, int[] iArr, int i2, int i3, int i4, @Nullable Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        char c2;
        char c3;
        int iB;
        byte[] bArr4;
        int i5;
        int iB2;
        int iB3;
        int i6;
        int i7;
        int iB4;
        zf1 zf1Var = new zf1(bArr.length, bArr);
        int i8 = i3;
        int i9 = i4;
        byte[] bArr5 = null;
        byte[] bArr6 = null;
        byte[] bArr7 = null;
        while (zf1Var.b() != 0) {
            int i10 = 8;
            int iB5 = zf1Var.b(8);
            if (iB5 != 240) {
                int i11 = 4;
                int i12 = 2;
                int i13 = 1;
                switch (iB5) {
                    case 16:
                        int i14 = 1;
                        if (i2 == 3) {
                            if (bArr5 == null) {
                                bArr3 = i;
                                bArr2 = bArr3;
                            } else {
                                bArr2 = bArr5;
                            }
                        } else if (i2 != 2) {
                            bArr2 = null;
                        } else if (bArr7 == null) {
                            bArr3 = h;
                            bArr2 = bArr3;
                        } else {
                            bArr2 = bArr7;
                        }
                        int i15 = i8;
                        int i16 = 0;
                        while (true) {
                            int iB6 = zf1Var.b(2);
                            if (iB6 != 0) {
                                iB = i14;
                            } else if (zf1Var.f()) {
                                int iB7 = zf1Var.b(3) + 3;
                                iB6 = zf1Var.b(2);
                                iB = iB7;
                            } else if (zf1Var.f()) {
                                iB = i14;
                                iB6 = 0;
                            } else {
                                int iB8 = zf1Var.b(2);
                                if (iB8 == 0) {
                                    c2 = 4;
                                    c3 = '\b';
                                    i16 = i14;
                                    iB6 = 0;
                                    iB = 0;
                                } else if (iB8 == i14) {
                                    c2 = 4;
                                    c3 = '\b';
                                    i16 = i16;
                                    iB = 2;
                                    iB6 = 0;
                                } else if (iB8 == 2) {
                                    c2 = 4;
                                    c3 = '\b';
                                    iB = zf1Var.b(4) + 12;
                                    iB6 = zf1Var.b(2);
                                    i16 = i16;
                                } else if (iB8 != 3) {
                                    iB6 = 0;
                                    iB = 0;
                                } else {
                                    c3 = '\b';
                                    iB = zf1Var.b(8) + 29;
                                    iB6 = zf1Var.b(2);
                                    i16 = i16;
                                    c2 = 4;
                                }
                                if (iB == 0 && paint != null) {
                                    if (bArr2 != 0) {
                                        iB6 = bArr2[iB6];
                                    }
                                    paint.setColor(iArr[iB6]);
                                    canvas.drawRect(i15, i9, i15 + iB, i9 + 1, paint);
                                }
                                i15 += iB;
                                if (i16 != 0) {
                                    zf1Var.c();
                                    i8 = i15;
                                } else {
                                    i16 = i16;
                                    i14 = 1;
                                }
                            }
                            c2 = 4;
                            c3 = '\b';
                            if (iB == 0) {
                            }
                            i15 += iB;
                            if (i16 != 0) {
                                zf1Var.c();
                                i8 = i15;
                            } else {
                                i16 = i16;
                                i14 = 1;
                            }
                            break;
                        }
                        break;
                    case 17:
                        if (i2 == 3) {
                            bArr4 = bArr6 == null ? j : bArr6;
                        } else {
                            bArr4 = null;
                        }
                        int i17 = i8;
                        boolean z = false;
                        while (true) {
                            int iB9 = zf1Var.b(i11);
                            if (iB9 != 0) {
                                i5 = 1;
                                z = z;
                            } else if (!zf1Var.f()) {
                                int iB10 = zf1Var.b(3);
                                if (iB10 != 0) {
                                    i5 = iB10 + 2;
                                    iB9 = 0;
                                } else {
                                    z = true;
                                    iB9 = 0;
                                    i5 = 0;
                                }
                            } else {
                                if (!zf1Var.f()) {
                                    iB2 = zf1Var.b(i12) + i11;
                                    iB3 = zf1Var.b(i11);
                                } else {
                                    int iB11 = zf1Var.b(i12);
                                    if (iB11 == 0) {
                                        i5 = 1;
                                    } else if (iB11 == 1) {
                                        i5 = i12;
                                    } else if (iB11 == i12) {
                                        iB2 = zf1Var.b(i11) + 9;
                                        iB3 = zf1Var.b(i11);
                                    } else if (iB11 != 3) {
                                        z = z;
                                        iB9 = 0;
                                        i5 = 0;
                                    } else {
                                        iB2 = zf1Var.b(i10) + 25;
                                        iB3 = zf1Var.b(i11);
                                    }
                                    iB9 = 0;
                                }
                                z = z;
                                i5 = iB2;
                                iB9 = iB3;
                            }
                            if (i5 == 0 || paint == null) {
                                i6 = i12;
                            } else {
                                if (bArr4 != 0) {
                                    iB9 = bArr4[iB9];
                                }
                                paint.setColor(iArr[iB9]);
                                i6 = 2;
                                canvas.drawRect(i17, i9, i17 + i5, i9 + 1, paint);
                            }
                            i17 += i5;
                            if (z) {
                                zf1Var.c();
                                i8 = i17;
                            } else {
                                i12 = i6;
                                z = z;
                                i11 = 4;
                                i10 = 8;
                            }
                            break;
                        }
                        break;
                    case 18:
                        int i18 = i8;
                        int i19 = 0;
                        while (true) {
                            int iB12 = zf1Var.b(8);
                            if (iB12 != 0) {
                                i7 = i19;
                                iB4 = i13;
                            } else if (!zf1Var.f()) {
                                int iB13 = zf1Var.b(7);
                                if (iB13 != 0) {
                                    i7 = i19;
                                    iB4 = iB13;
                                    iB12 = 0;
                                } else {
                                    i7 = i13;
                                    iB12 = 0;
                                    iB4 = 0;
                                }
                            } else {
                                i7 = i19;
                                iB4 = zf1Var.b(7);
                                iB12 = zf1Var.b(8);
                            }
                            if (iB4 != 0 && paint != null) {
                                paint.setColor(iArr[iB12]);
                                canvas.drawRect(i18, i9, i18 + iB4, i9 + 1, paint);
                            }
                            i18 += iB4;
                            if (i7 != 0) {
                                i8 = i18;
                            } else {
                                i13 = i13;
                                i19 = i7;
                            }
                            break;
                        }
                        break;
                    default:
                        switch (iB5) {
                            case 32:
                                bArr7 = new byte[4];
                                for (int i20 = 0; i20 < 4; i20++) {
                                    bArr7[i20] = (byte) zf1Var.b(4);
                                }
                                break;
                            case 33:
                                bArr5 = new byte[4];
                                for (int i21 = 0; i21 < 4; i21++) {
                                    bArr5[i21] = (byte) zf1Var.b(8);
                                }
                                break;
                            case 34:
                                bArr6 = new byte[16];
                                for (int i22 = 0; i22 < 16; i22++) {
                                    bArr6[i22] = (byte) zf1Var.b(8);
                                }
                                break;
                        }
                        break;
                }
            } else {
                i9 += 2;
                i8 = i3;
            }
        }
    }

    private static a a(zf1 zf1Var, int i2) {
        int[] iArr;
        int iB;
        int i3;
        int iB2;
        int iB3;
        int iB4;
        int i4 = 8;
        int iB5 = zf1Var.b(8);
        zf1Var.d(8);
        int i5 = 2;
        int i6 = i2 - 2;
        int[] iArrA = a();
        int[] iArrB = b();
        int[] iArrC = c();
        while (i6 > 0) {
            int iB6 = zf1Var.b(i4);
            int iB7 = zf1Var.b(i4);
            if ((iB7 & 128) != 0) {
                iArr = iArrA;
            } else {
                iArr = (iB7 & 64) != 0 ? iArrB : iArrC;
            }
            if ((iB7 & 1) != 0) {
                iB3 = zf1Var.b(i4);
                iB4 = zf1Var.b(i4);
                iB = zf1Var.b(i4);
                iB2 = zf1Var.b(i4);
                i3 = i6 - 6;
            } else {
                int iB8 = zf1Var.b(6) << i5;
                int iB9 = zf1Var.b(4) << 4;
                iB = zf1Var.b(4) << 4;
                i3 = i6 - 4;
                iB2 = zf1Var.b(i5) << 6;
                iB3 = iB8;
                iB4 = iB9;
            }
            if (iB3 == 0) {
                iB2 = 255;
                iB4 = 0;
                iB = 0;
            }
            double d2 = iB3;
            int i7 = iB5;
            double d3 = iB4 - 128;
            int i8 = (int) ((1.402d * d3) + d2);
            double d4 = iB - 128;
            int i9 = (int) ((d2 - (0.34414d * d4)) - (d3 * 0.71414d));
            int i10 = (int) ((d4 * 1.772d) + d2);
            int i11 = f92.a;
            iArr[iB6] = a((byte) (255 - (iB2 & 255)), Math.max(0, Math.min(i8, 255)), Math.max(0, Math.min(i9, 255)), Math.max(0, Math.min(i10, 255)));
            i6 = i3;
            iB5 = i7;
            i4 = 8;
            i5 = 2;
        }
        return new a(iB5, iArrA, iArrB, iArrC);
    }

    private static c a(zf1 zf1Var) {
        byte[] bArr;
        int iB = zf1Var.b(16);
        zf1Var.d(4);
        int iB2 = zf1Var.b(2);
        boolean zF = zf1Var.f();
        zf1Var.d(1);
        byte[] bArr2 = f92.f;
        if (iB2 == 1) {
            zf1Var.d(zf1Var.b(8) * 16);
        } else {
            if (iB2 == 0) {
                int iB3 = zf1Var.b(16);
                int iB4 = zf1Var.b(16);
                if (iB3 > 0) {
                    bArr2 = new byte[iB3];
                    zf1Var.b(bArr2, iB3);
                }
                if (iB4 > 0) {
                    bArr = new byte[iB4];
                    zf1Var.b(bArr, iB4);
                }
            }
            return new c(iB, zF, bArr2, bArr);
        }
        bArr = bArr2;
        return new c(iB, zF, bArr2, bArr);
    }

    public final List a(int i2, byte[] bArr) {
        boolean z;
        char c2;
        int i3;
        boolean z2;
        int[] iArr;
        f fVar;
        int iB;
        int iB2;
        int i4;
        int iB3;
        zf1 zf1Var = new zf1(i2, bArr);
        while (true) {
            z = true;
            if (zf1Var.b() >= 48 && zf1Var.b(8) == 15) {
                h hVar = this.f;
                int iB4 = zf1Var.b(8);
                int i5 = 16;
                int iB5 = zf1Var.b(16);
                int iB6 = zf1Var.b(16);
                int iD = zf1Var.d() + iB6;
                if (iB6 * 8 > zf1Var.b()) {
                    et0.d("DvbParser", "Data field length exceeds limit");
                    zf1Var.d(zf1Var.b());
                } else {
                    switch (iB4) {
                        case 16:
                            if (iB5 == hVar.a) {
                                d dVar = hVar.i;
                                zf1Var.b(8);
                                int iB7 = zf1Var.b(4);
                                int iB8 = zf1Var.b(2);
                                zf1Var.d(2);
                                int i6 = iB6 - 2;
                                SparseArray sparseArray = new SparseArray();
                                while (i6 > 0) {
                                    int iB9 = zf1Var.b(8);
                                    zf1Var.d(8);
                                    i6 -= 6;
                                    sparseArray.put(iB9, new e(zf1Var.b(16), zf1Var.b(16)));
                                }
                                d dVar2 = new d(iB7, iB8, sparseArray);
                                if (iB8 != 0) {
                                    hVar.i = dVar2;
                                    hVar.c.clear();
                                    hVar.d.clear();
                                    hVar.e.clear();
                                } else if (dVar != null && dVar.a != iB7) {
                                    hVar.i = dVar2;
                                }
                            }
                            break;
                        case 17:
                            d dVar3 = hVar.i;
                            if (iB5 == hVar.a && dVar3 != null) {
                                int iB10 = zf1Var.b(8);
                                zf1Var.d(4);
                                boolean zF = zf1Var.f();
                                zf1Var.d(3);
                                int iB11 = zf1Var.b(16);
                                int iB12 = zf1Var.b(16);
                                zf1Var.b(3);
                                int iB13 = zf1Var.b(3);
                                zf1Var.d(2);
                                int iB14 = zf1Var.b(8);
                                int iB15 = zf1Var.b(8);
                                int iB16 = zf1Var.b(4);
                                int iB17 = zf1Var.b(2);
                                zf1Var.d(2);
                                int i7 = iB6 - 10;
                                SparseArray sparseArray2 = new SparseArray();
                                while (i7 > 0) {
                                    int iB18 = zf1Var.b(i5);
                                    int iB19 = zf1Var.b(2);
                                    zf1Var.b(2);
                                    int iB20 = zf1Var.b(12);
                                    zf1Var.d(4);
                                    int iB21 = zf1Var.b(12);
                                    int i8 = i7 - 6;
                                    if (iB19 == 1 || iB19 == 2) {
                                        zf1Var.b(8);
                                        zf1Var.b(8);
                                        i7 -= 8;
                                    } else {
                                        i7 = i8;
                                    }
                                    sparseArray2.put(iB18, new g(iB20, iB21));
                                    i5 = 16;
                                }
                                f fVar2 = new f(iB10, zF, iB11, iB12, iB13, iB14, iB15, iB16, iB17, sparseArray2);
                                if (dVar3.b == 0 && (fVar = hVar.c.get(iB10)) != null) {
                                    SparseArray<g> sparseArray3 = fVar.j;
                                    for (int i9 = 0; i9 < sparseArray3.size(); i9++) {
                                        fVar2.j.put(sparseArray3.keyAt(i9), sparseArray3.valueAt(i9));
                                    }
                                }
                                hVar.c.put(fVar2.a, fVar2);
                            }
                            break;
                        case 18:
                            if (iB5 == hVar.a) {
                                a aVarA = a(zf1Var, iB6);
                                hVar.d.put(aVarA.a, aVarA);
                            } else if (iB5 == hVar.b) {
                                a aVarA2 = a(zf1Var, iB6);
                                hVar.f.put(aVarA2.a, aVarA2);
                            }
                            break;
                        case 19:
                            if (iB5 == hVar.a) {
                                c cVarA = a(zf1Var);
                                hVar.e.put(cVarA.a, cVarA);
                            } else if (iB5 == hVar.b) {
                                c cVarA2 = a(zf1Var);
                                hVar.g.put(cVarA2.a, cVarA2);
                            }
                            break;
                        case 20:
                            if (iB5 == hVar.a) {
                                zf1Var.d(4);
                                boolean zF2 = zf1Var.f();
                                zf1Var.d(3);
                                int iB22 = zf1Var.b(16);
                                int iB23 = zf1Var.b(16);
                                if (zF2) {
                                    int iB24 = zf1Var.b(16);
                                    iB = zf1Var.b(16);
                                    iB3 = zf1Var.b(16);
                                    iB2 = zf1Var.b(16);
                                    i4 = iB24;
                                } else {
                                    iB = iB22;
                                    iB2 = iB23;
                                    i4 = 0;
                                    iB3 = 0;
                                }
                                hVar.h = new b(iB22, iB23, i4, iB, iB3, iB2);
                            }
                            break;
                    }
                    zf1Var.e(iD - zf1Var.d());
                }
            }
        }
        h hVar2 = this.f;
        d dVar4 = hVar2.i;
        if (dVar4 == null) {
            return Collections.emptyList();
        }
        b bVar = hVar2.h;
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
        SparseArray<e> sparseArray4 = dVar4.c;
        int i10 = 0;
        while (i10 < sparseArray4.size()) {
            this.c.save();
            e eVarValueAt = sparseArray4.valueAt(i10);
            f fVar3 = this.f.c.get(sparseArray4.keyAt(i10));
            int i11 = eVarValueAt.a + bVar.c;
            int i12 = eVarValueAt.b + bVar.e;
            this.c.clipRect(i11, i12, Math.min(fVar3.c + i11, bVar.d), Math.min(fVar3.d + i12, bVar.f));
            a aVar = this.f.d.get(fVar3.f);
            if (aVar == null && (aVar = this.f.f.get(fVar3.f)) == null) {
                aVar = this.e;
            }
            SparseArray<g> sparseArray5 = fVar3.j;
            int i13 = 0;
            while (i13 < sparseArray5.size()) {
                int iKeyAt = sparseArray5.keyAt(i13);
                g gVarValueAt = sparseArray5.valueAt(i13);
                c cVar = this.f.e.get(iKeyAt);
                if (cVar == null) {
                    cVar = this.f.g.get(iKeyAt);
                }
                if (cVar != null) {
                    Paint paint = cVar.b ? null : this.a;
                    int i14 = fVar3.e;
                    int i15 = gVarValueAt.a + i11;
                    int i16 = gVarValueAt.b + i12;
                    Canvas canvas = this.c;
                    if (i14 == 3) {
                        iArr = aVar.d;
                    } else if (i14 == 2) {
                        iArr = aVar.c;
                    } else {
                        iArr = aVar.b;
                    }
                    int[] iArr2 = iArr;
                    Paint paint2 = paint;
                    a(cVar.c, iArr2, i14, i15, i16, paint2, canvas);
                    z2 = true;
                    a(cVar.d, iArr2, i14, i15, i16 + 1, paint2, canvas);
                } else {
                    z2 = true;
                }
                i13++;
                z = z2;
                sparseArray4 = sparseArray4;
                sparseArray5 = sparseArray5;
                i10 = i10;
            }
            SparseArray<e> sparseArray6 = sparseArray4;
            int i17 = i10;
            boolean z3 = z;
            if (fVar3.b) {
                int i18 = fVar3.e;
                if (i18 == 3) {
                    i3 = aVar.d[fVar3.g];
                    c2 = 2;
                } else {
                    c2 = 2;
                    if (i18 == 2) {
                        i3 = aVar.c[fVar3.h];
                    } else {
                        i3 = aVar.b[fVar3.i];
                    }
                }
                this.b.setColor(i3);
                this.c.drawRect(i11, i12, fVar3.c + i11, fVar3.d + i12, this.b);
            } else {
                c2 = 2;
            }
            arrayList.add(new hv.a().a(Bitmap.createBitmap(this.g, i11, i12, fVar3.c, fVar3.d)).b(i11 / bVar.a).b(0).a(0, i12 / bVar.b).a(0).d(fVar3.c / bVar.a).a(fVar3.d / bVar.b).a());
            this.c.drawColor(0, PorterDuff.Mode.CLEAR);
            this.c.restore();
            z = z3;
            i10 = i17 + 1;
            sparseArray4 = sparseArray6;
        }
        return Collections.unmodifiableList(arrayList);
    }
}
