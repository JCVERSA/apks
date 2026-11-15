package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.media3.common.C;
import androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection;
import com.google.android.gms.internal.ads.zzfww;
import java.util.ArrayList;
import java.util.List;

public final class nhe implements bhe {
    public static final byte[] h = {0, 7, 8, 15};
    public static final byte[] i = {0, 119, -120, -1};
    public static final byte[] j = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    public final Paint a;
    public final Paint b;
    public final Canvas c;
    public final ghe d;
    public final fhe e;
    public final mhe f;
    public Bitmap g;

    public nhe(List list) {
        u4h u4hVar = new u4h((byte[]) list.get(0));
        int iK = u4hVar.K();
        int iK2 = u4hVar.K();
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
        this.d = new ghe(AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 575, 0, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 0, 575);
        this.e = new fhe(0, g(), h(), i());
        this.f = new mhe(iK, iK2);
    }

    public static int b(int i2, int i3, int i4, int i5) {
        return (i2 << 24) | (i3 << 16) | (i4 << 8) | i5;
    }

    public static fhe c(p3h p3hVar, int i2) {
        int[] iArr;
        int iD;
        int iD2;
        int iD3;
        int iD4;
        int i3 = 8;
        int iD5 = p3hVar.d(8);
        p3hVar.n(8);
        int[] iArrG = g();
        int[] iArrH = h();
        int[] iArrI = i();
        int i4 = i2 - 2;
        while (i4 > 0) {
            int iD6 = p3hVar.d(i3);
            int iD7 = p3hVar.d(i3);
            if ((iD7 & 128) != 0) {
                iArr = iArrG;
            } else {
                iArr = (iD7 & 64) != 0 ? iArrH : iArrI;
            }
            if ((iD7 & 1) != 0) {
                iD3 = p3hVar.d(i3);
                iD4 = p3hVar.d(i3);
                iD = p3hVar.d(i3);
                iD2 = p3hVar.d(i3);
                i4 -= 6;
            } else {
                int iD8 = p3hVar.d(6) << 2;
                int iD9 = p3hVar.d(4) << 4;
                i4 -= 4;
                iD = p3hVar.d(4) << 4;
                iD2 = p3hVar.d(2) << 6;
                iD3 = iD8;
                iD4 = iD9;
            }
            if (iD3 == 0) {
                iD2 = 255;
            }
            if (iD3 == 0) {
                iD = 0;
            }
            if (iD3 == 0) {
                iD4 = 0;
            }
            double d = iD3;
            int i5 = kfh.a;
            double d2 = iD4 - 128;
            double d3 = iD - 128;
            iArr[iD6] = b((byte) (255 - (iD2 & 255)), Math.max(0, Math.min((int) (d + (1.402d * d2)), 255)), Math.max(0, Math.min((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 255)), Math.max(0, Math.min((int) (d + (d3 * 1.772d)), 255)));
            iD5 = iD5;
            i3 = 8;
        }
        return new fhe(iD5, iArrG, iArrH, iArrI);
    }

    public static hhe d(p3h p3hVar) {
        byte[] bArr;
        int iD = p3hVar.d(16);
        p3hVar.n(4);
        int iD2 = p3hVar.d(2);
        boolean zP = p3hVar.p();
        p3hVar.n(1);
        byte[] bArr2 = kfh.c;
        if (iD2 != 1) {
            if (iD2 == 0) {
                int iD3 = p3hVar.d(16);
                int iD4 = p3hVar.d(16);
                if (iD3 > 0) {
                    bArr2 = new byte[iD3];
                    p3hVar.i(bArr2, 0, iD3);
                }
                if (iD4 > 0) {
                    bArr = new byte[iD4];
                    p3hVar.i(bArr, 0, iD4);
                }
            }
            return new hhe(iD, zP, bArr2, bArr);
        }
        p3hVar.n(p3hVar.d(8) * 16);
        bArr = bArr2;
        return new hhe(iD, zP, bArr2, bArr);
    }

    /* JADX WARN: Code duplicated, block: B:115:0x0219  */
    /* JADX WARN: Code duplicated, block: B:119:0x0228 A[LOOP:3: B:88:0x0172->B:119:0x0228, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:143:0x0222 A[SYNTHETIC] */
    public static void e(byte[] bArr, int[] iArr, int i2, int i3, int i4, Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        char c;
        char c2;
        int iD;
        int i5;
        int iD2;
        int iD3;
        int i6;
        int i7;
        int iD4;
        p3h p3hVar = new p3h(bArr, bArr.length);
        int i8 = i3;
        int i9 = i4;
        byte[] bArrF = null;
        byte[] bArrF2 = null;
        byte[] bArrF3 = null;
        while (p3hVar.a() != 0) {
            int i10 = 8;
            int iD5 = p3hVar.d(8);
            if (iD5 != 240) {
                int i11 = 4;
                int i12 = 1;
                int i13 = 2;
                switch (iD5) {
                    case 16:
                        int i14 = 1;
                        if (i2 == 3) {
                            if (bArrF == null) {
                                bArr3 = i;
                                bArr2 = bArr3;
                            } else {
                                bArr2 = bArrF;
                            }
                        } else if (i2 != 2) {
                            bArr2 = null;
                        } else if (bArrF3 == null) {
                            bArr3 = h;
                            bArr2 = bArr3;
                        } else {
                            bArr2 = bArrF3;
                        }
                        int i15 = i8;
                        int i16 = 0;
                        while (true) {
                            int iD6 = p3hVar.d(2);
                            if (iD6 != 0) {
                                iD = i14;
                            } else {
                                if (p3hVar.p()) {
                                    iD = p3hVar.d(3) + 3;
                                    iD6 = p3hVar.d(2);
                                } else {
                                    if (p3hVar.p()) {
                                        iD = i14;
                                        iD6 = 0;
                                    } else {
                                        int iD7 = p3hVar.d(2);
                                        if (iD7 == 0) {
                                            c = 4;
                                            c2 = '\b';
                                            i16 = i14;
                                            iD6 = 0;
                                            iD = 0;
                                        } else if (iD7 == i14) {
                                            c = 4;
                                            c2 = '\b';
                                            i16 = i16;
                                            iD = 2;
                                            iD6 = 0;
                                        } else if (iD7 == 2) {
                                            c = 4;
                                            c2 = '\b';
                                            iD = p3hVar.d(4) + 12;
                                            iD6 = p3hVar.d(2);
                                            i16 = i16;
                                        } else if (iD7 != 3) {
                                            iD6 = 0;
                                            iD = 0;
                                        } else {
                                            c2 = '\b';
                                            iD = p3hVar.d(8) + 29;
                                            iD6 = p3hVar.d(2);
                                            i16 = i16;
                                            c = 4;
                                        }
                                    }
                                    c = 4;
                                    c2 = '\b';
                                }
                                if (iD == 0 && paint != null) {
                                    int i17 = i9 + 1;
                                    float f = i9;
                                    if (bArr2 != 0) {
                                        iD6 = bArr2[iD6];
                                    }
                                    paint.setColor(iArr[iD6]);
                                    canvas.drawRect(i15, f, i15 + iD, i17, paint);
                                }
                                i15 += iD;
                                if (i16 != 0) {
                                    p3hVar.f();
                                    i8 = i15;
                                } else {
                                    i16 = i16;
                                    i14 = 1;
                                }
                            }
                            c = 4;
                            c2 = '\b';
                            if (iD == 0) {
                            }
                            i15 += iD;
                            if (i16 != 0) {
                                p3hVar.f();
                                i8 = i15;
                            } else {
                                i16 = i16;
                                i14 = 1;
                            }
                            break;
                        }
                        break;
                    case 17:
                        byte[] bArr4 = i2 == 3 ? bArrF2 == null ? j : bArrF2 : null;
                        int i18 = i8;
                        boolean z = false;
                        while (true) {
                            int iD8 = p3hVar.d(i11);
                            if (iD8 != 0) {
                                i5 = 1;
                                z = z;
                            } else if (p3hVar.p()) {
                                if (p3hVar.p()) {
                                    int iD9 = p3hVar.d(i13);
                                    if (iD9 == 0) {
                                        i5 = 1;
                                    } else if (iD9 == 1) {
                                        i5 = i13;
                                    } else if (iD9 == i13) {
                                        iD2 = p3hVar.d(i11) + 9;
                                        iD3 = p3hVar.d(i11);
                                    } else if (iD9 != 3) {
                                        z = z;
                                        iD8 = 0;
                                        i5 = 0;
                                    } else {
                                        iD2 = p3hVar.d(i10) + 25;
                                        iD3 = p3hVar.d(i11);
                                    }
                                    iD8 = 0;
                                } else {
                                    iD2 = p3hVar.d(i13) + i11;
                                    iD3 = p3hVar.d(i11);
                                }
                                z = z;
                                i5 = iD2;
                                iD8 = iD3;
                            } else {
                                int iD10 = p3hVar.d(3);
                                if (iD10 != 0) {
                                    i5 = iD10 + 2;
                                    iD8 = 0;
                                } else {
                                    z = true;
                                    iD8 = 0;
                                    i5 = 0;
                                }
                            }
                            if (i5 == 0 || paint == null) {
                                i6 = i13;
                            } else {
                                int i19 = i9 + 1;
                                float f2 = i9;
                                if (bArr4 != 0) {
                                    iD8 = bArr4[iD8];
                                }
                                paint.setColor(iArr[iD8]);
                                i6 = 2;
                                canvas.drawRect(i18, f2, i18 + i5, i19, paint);
                            }
                            i18 += i5;
                            if (z) {
                                p3hVar.f();
                                i8 = i18;
                            } else {
                                i13 = i6;
                                z = z;
                                i11 = 4;
                                i10 = 8;
                            }
                            break;
                        }
                        break;
                    case 18:
                        int i20 = i8;
                        int i21 = 0;
                        while (true) {
                            int iD11 = p3hVar.d(8);
                            if (iD11 != 0) {
                                i7 = i21;
                                iD4 = i12;
                            } else if (p3hVar.p()) {
                                i7 = i21;
                                iD4 = p3hVar.d(7);
                                iD11 = p3hVar.d(8);
                            } else {
                                int iD12 = p3hVar.d(7);
                                if (iD12 != 0) {
                                    i7 = i21;
                                    iD4 = iD12;
                                    iD11 = 0;
                                } else {
                                    i7 = i12;
                                    iD11 = 0;
                                    iD4 = 0;
                                }
                            }
                            if (iD4 != 0 && paint != null) {
                                paint.setColor(iArr[iD11]);
                                canvas.drawRect(i20, i9, i20 + iD4, i9 + 1, paint);
                            }
                            i20 += iD4;
                            if (i7 != 0) {
                                i8 = i20;
                            } else {
                                i12 = i12;
                                i21 = i7;
                            }
                            break;
                        }
                        break;
                    default:
                        switch (iD5) {
                            case 32:
                                bArrF3 = f(4, 4, p3hVar);
                                break;
                            case 33:
                                bArrF = f(4, 8, p3hVar);
                                break;
                            case 34:
                                bArrF2 = f(16, 8, p3hVar);
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

    public static byte[] f(int i2, int i3, p3h p3hVar) {
        byte[] bArr = new byte[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            bArr[i4] = (byte) p3hVar.d(i3);
        }
        return bArr;
    }

    public static int[] g() {
        return new int[]{0, -1, -16777216, -8421505};
    }

    public static int[] h() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i2 = 1; i2 < 16; i2++) {
            int i3 = i2 & 4;
            int i4 = i2 & 2;
            int i5 = i2 & 1;
            if (i2 < 8) {
                iArr[i2] = b(255, 1 != i5 ? 0 : 255, i4 != 0 ? 255 : 0, i3 != 0 ? 255 : 0);
            } else {
                iArr[i2] = b(255, 1 != i5 ? 0 : 127, i4 != 0 ? 127 : 0, i3 == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    public static int[] i() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            if (i2 < 8) {
                iArr[i2] = b(63, 1 != (i2 & 1) ? 0 : 255, (i2 & 2) != 0 ? 255 : 0, (i2 & 4) == 0 ? 0 : 255);
            } else {
                int i3 = i2 & 136;
                if (i3 == 0) {
                    iArr[i2] = b(255, (1 != (i2 & 1) ? 0 : 85) + ((i2 & 16) != 0 ? 170 : 0), ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? 170 : 0), ((i2 & 4) == 0 ? 0 : 85) + ((i2 & 64) == 0 ? 0 : 170));
                } else if (i3 == 8) {
                    iArr[i2] = b(127, (1 != (i2 & 1) ? 0 : 85) + ((i2 & 16) != 0 ? 170 : 0), ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? 170 : 0), ((i2 & 4) == 0 ? 0 : 85) + ((i2 & 64) == 0 ? 0 : 170));
                } else if (i3 == 128) {
                    iArr[i2] = b(255, (1 != (i2 & 1) ? 0 : 43) + 127 + ((i2 & 16) != 0 ? 85 : 0), ((i2 & 2) != 0 ? 43 : 0) + 127 + ((i2 & 32) != 0 ? 85 : 0), ((i2 & 4) == 0 ? 0 : 43) + 127 + ((i2 & 64) == 0 ? 0 : 85));
                } else if (i3 == 136) {
                    iArr[i2] = b(255, (1 != (i2 & 1) ? 0 : 43) + ((i2 & 16) != 0 ? 85 : 0), ((i2 & 2) != 0 ? 43 : 0) + ((i2 & 32) != 0 ? 85 : 0), ((i2 & 4) == 0 ? 0 : 43) + ((i2 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    @Override
    public final void a(byte[] bArr, int i2, int i3, wge wgeVar, qfg qfgVar) {
        qge qgeVar;
        char c;
        char c2;
        char c3;
        int i4;
        int i5;
        int i6;
        khe kheVar;
        int i7;
        int iD;
        int iD2;
        int iD3;
        int iD4;
        int i8;
        int iD5;
        p3h p3hVar = new p3h(bArr, i2 + i3);
        p3hVar.l(i2);
        while (p3hVar.a() >= 48 && p3hVar.d(8) == 15) {
            mhe mheVar = this.f;
            int iD6 = p3hVar.d(8);
            int iD7 = p3hVar.d(16);
            int iD8 = p3hVar.d(16);
            int iB = p3hVar.b() + iD8;
            if (iD8 * 8 > p3hVar.a()) {
                zrg.f("DvbParser", "Data field length exceeds limit");
                p3hVar.n(p3hVar.a());
            } else {
                switch (iD6) {
                    case 16:
                        if (iD7 == mheVar.a) {
                            ihe iheVar = mheVar.i;
                            int iD9 = p3hVar.d(8);
                            int iD10 = p3hVar.d(4);
                            int iD11 = p3hVar.d(2);
                            p3hVar.n(2);
                            SparseArray sparseArray = new SparseArray();
                            for (int i9 = iD8 - 2; i9 > 0; i9 -= 6) {
                                int iD12 = p3hVar.d(8);
                                p3hVar.n(8);
                                sparseArray.put(iD12, new jhe(p3hVar.d(16), p3hVar.d(16)));
                            }
                            ihe iheVar2 = new ihe(iD9, iD10, iD11, sparseArray);
                            if (iheVar2.b != 0) {
                                mheVar.i = iheVar2;
                                mheVar.c.clear();
                                mheVar.d.clear();
                                mheVar.e.clear();
                            } else if (iheVar != null) {
                                if (iheVar.a != iheVar2.a) {
                                    mheVar.i = iheVar2;
                                }
                            }
                        }
                        break;
                    case 17:
                        ihe iheVar3 = mheVar.i;
                        if (iD7 == mheVar.a && iheVar3 != null) {
                            int iD13 = p3hVar.d(8);
                            p3hVar.n(4);
                            boolean zP = p3hVar.p();
                            p3hVar.n(3);
                            int iD14 = p3hVar.d(16);
                            int iD15 = p3hVar.d(16);
                            int iD16 = p3hVar.d(3);
                            int iD17 = p3hVar.d(3);
                            p3hVar.n(2);
                            int iD18 = p3hVar.d(8);
                            int iD19 = p3hVar.d(8);
                            int iD20 = p3hVar.d(4);
                            int iD21 = p3hVar.d(2);
                            p3hVar.n(2);
                            int i10 = iD8 - 10;
                            SparseArray sparseArray2 = new SparseArray();
                            while (i10 > 0) {
                                int iD22 = p3hVar.d(16);
                                int iD23 = p3hVar.d(2);
                                int iD24 = p3hVar.d(2);
                                int iD25 = p3hVar.d(12);
                                p3hVar.n(4);
                                int iD26 = p3hVar.d(12);
                                int i11 = i10 - 6;
                                if (iD23 == 1) {
                                    i10 -= 8;
                                    i7 = iD23;
                                    iD = p3hVar.d(8);
                                    iD2 = p3hVar.d(8);
                                } else if (iD23 == 2) {
                                    iD23 = 2;
                                    i10 -= 8;
                                    i7 = iD23;
                                    iD = p3hVar.d(8);
                                    iD2 = p3hVar.d(8);
                                } else {
                                    i7 = iD23;
                                    i10 = i11;
                                    iD = 0;
                                    iD2 = 0;
                                }
                                sparseArray2.put(iD22, new lhe(i7, iD24, iD25, iD26, iD, iD2));
                            }
                            khe kheVar2 = new khe(iD13, zP, iD14, iD15, iD16, iD17, iD18, iD19, iD20, iD21, sparseArray2);
                            if (iheVar3.b == 0 && (kheVar = (khe) mheVar.c.get(kheVar2.a)) != null) {
                                int i12 = 0;
                                while (true) {
                                    SparseArray sparseArray3 = kheVar.j;
                                    if (i12 < sparseArray3.size()) {
                                        kheVar2.j.put(sparseArray3.keyAt(i12), (lhe) sparseArray3.valueAt(i12));
                                        i12++;
                                    }
                                }
                            }
                            mheVar.c.put(kheVar2.a, kheVar2);
                        }
                        break;
                    case 18:
                        if (iD7 == mheVar.a) {
                            fhe fheVarC = c(p3hVar, iD8);
                            mheVar.d.put(fheVarC.a, fheVarC);
                        } else if (iD7 == mheVar.b) {
                            fhe fheVarC2 = c(p3hVar, iD8);
                            mheVar.f.put(fheVarC2.a, fheVarC2);
                        }
                        break;
                    case 19:
                        if (iD7 == mheVar.a) {
                            hhe hheVarD = d(p3hVar);
                            mheVar.e.put(hheVarD.a, hheVarD);
                        } else if (iD7 == mheVar.b) {
                            hhe hheVarD2 = d(p3hVar);
                            mheVar.g.put(hheVarD2.a, hheVarD2);
                        }
                        break;
                    case 20:
                        if (iD7 == mheVar.a) {
                            p3hVar.n(4);
                            boolean zP2 = p3hVar.p();
                            p3hVar.n(3);
                            int iD27 = p3hVar.d(16);
                            int iD28 = p3hVar.d(16);
                            if (zP2) {
                                int iD29 = p3hVar.d(16);
                                iD3 = p3hVar.d(16);
                                iD5 = p3hVar.d(16);
                                iD4 = p3hVar.d(16);
                                i8 = iD29;
                            } else {
                                iD3 = iD27;
                                iD4 = iD28;
                                i8 = 0;
                                iD5 = 0;
                            }
                            mheVar.h = new ghe(iD27, iD28, i8, iD3, iD5, iD4);
                        }
                        break;
                }
                p3hVar.o(iB - p3hVar.b());
            }
        }
        mhe mheVar2 = this.f;
        ihe iheVar4 = mheVar2.i;
        if (iheVar4 == null) {
            qgeVar = new qge(zzfww.zzn(), C.TIME_UNSET, C.TIME_UNSET);
        } else {
            ghe gheVar = mheVar2.h;
            if (gheVar == null) {
                gheVar = this.d;
            }
            Bitmap bitmap = this.g;
            if (bitmap == null || gheVar.a + 1 != bitmap.getWidth() || gheVar.b + 1 != this.g.getHeight()) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(gheVar.a + 1, gheVar.b + 1, Bitmap.Config.ARGB_8888);
                this.g = bitmapCreateBitmap;
                this.c.setBitmap(bitmapCreateBitmap);
            }
            ArrayList arrayList = new ArrayList();
            SparseArray sparseArray4 = iheVar4.c;
            int i13 = 0;
            while (i13 < sparseArray4.size()) {
                Canvas canvas = this.c;
                canvas.save();
                jhe jheVar = (jhe) sparseArray4.valueAt(i13);
                khe kheVar3 = (khe) mheVar2.c.get(sparseArray4.keyAt(i13));
                int i14 = jheVar.a + gheVar.c;
                int i15 = jheVar.b + gheVar.e;
                int i16 = kheVar3.c;
                int i17 = i14 + i16;
                int iMin = Math.min(i17, gheVar.d);
                int i18 = kheVar3.d;
                int i19 = i15 + i18;
                canvas.clipRect(i14, i15, iMin, Math.min(i19, gheVar.f));
                int i20 = kheVar3.f;
                fhe fheVar = (fhe) mheVar2.d.get(i20);
                if (fheVar == null && (fheVar = (fhe) mheVar2.f.get(i20)) == null) {
                    fheVar = this.e;
                }
                SparseArray sparseArray5 = kheVar3.j;
                SparseArray sparseArray6 = sparseArray4;
                int i21 = i17;
                int i22 = 0;
                while (i22 < sparseArray5.size()) {
                    int iKeyAt = sparseArray5.keyAt(i22);
                    SparseArray sparseArray7 = sparseArray5;
                    lhe lheVar = (lhe) sparseArray5.valueAt(i22);
                    int i23 = i16;
                    hhe hheVar = (hhe) mheVar2.e.get(iKeyAt);
                    if (hheVar == null) {
                        hheVar = (hhe) mheVar2.g.get(iKeyAt);
                    }
                    if (hheVar != null) {
                        Paint paint = hheVar.b ? null : this.a;
                        int i24 = kheVar3.e;
                        int i25 = lheVar.a + i14;
                        int i26 = lheVar.b + i15;
                        int i27 = i14;
                        int[] iArr = i24 == 3 ? fheVar.d : i24 == 2 ? fheVar.c : fheVar.b;
                        i6 = i23;
                        i5 = i27;
                        e(hheVar.c, iArr, i24, i25, i26, paint, canvas);
                        e(hheVar.d, iArr, i24, i25, i26 + 1, paint, canvas);
                    } else {
                        i5 = i14;
                        i6 = i23;
                    }
                    i22++;
                    i14 = i5;
                    kheVar3 = kheVar3;
                    i21 = i21;
                    sparseArray5 = sparseArray7;
                    mheVar2 = mheVar2;
                    i13 = i13;
                    arrayList = arrayList;
                    gheVar = gheVar;
                    i18 = i18;
                    i16 = i6;
                }
                mhe mheVar3 = mheVar2;
                ghe gheVar2 = gheVar;
                int i28 = i18;
                int i29 = i13;
                ArrayList arrayList2 = arrayList;
                int i30 = i16;
                int i31 = i14;
                khe kheVar4 = kheVar3;
                int i32 = i21;
                float f = i15;
                float f2 = i31;
                if (kheVar4.b) {
                    int i33 = kheVar4.e;
                    if (i33 == 3) {
                        i4 = fheVar.d[kheVar4.g];
                        c3 = 2;
                    } else {
                        c3 = 2;
                        i4 = i33 == 2 ? fheVar.c[kheVar4.h] : fheVar.b[kheVar4.i];
                    }
                    Paint paint2 = this.b;
                    paint2.setColor(i4);
                    float f3 = i19;
                    float f4 = i32;
                    c = c3;
                    c2 = 3;
                    canvas.drawRect(f2, f, f4, f3, paint2);
                } else {
                    c = 2;
                    c2 = 3;
                }
                zvf zvfVar = new zvf();
                zvfVar.c(Bitmap.createBitmap(this.g, i31, i15, i30, i28));
                gheVar = gheVar2;
                float f5 = gheVar.a;
                zvfVar.h(f2 / f5);
                zvfVar.i(0);
                float f6 = gheVar.b;
                zvfVar.e(f / f6, 0);
                zvfVar.f(0);
                zvfVar.k(i30 / f5);
                zvfVar.d(i28 / f6);
                arrayList2.add(zvfVar.p());
                canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                canvas.restore();
                sparseArray4 = sparseArray6;
                arrayList = arrayList2;
                i13 = i29 + 1;
                mheVar2 = mheVar3;
            }
            qgeVar = new qge(arrayList, C.TIME_UNSET, C.TIME_UNSET);
        }
        qfgVar.zza(qgeVar);
    }
}
