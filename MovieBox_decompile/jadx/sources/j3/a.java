package j3;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.core.view.ViewCompat;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.i0;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.m;
import androidx.media3.common.util.u;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import h3.k;
import h3.r;
import h3.s;
import java.util.ArrayList;
import java.util.List;

public final class a implements s {

    private static final byte[] f62881h = {0, 7, 8, 15};

    private static final byte[] f62882i = {0, 119, -120, -1};

    private static final byte[] f62883j = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    private final Paint f62884a;

    private final Paint f62885b;

    private final Canvas f62886c;

    private final b f62887d;

    private final C0771a f62888e;

    private final h f62889f;

    private Bitmap f62890g;

    private static final class C0771a {

        public final int f62891a;

        public final int[] f62892b;

        public final int[] f62893c;

        public final int[] f62894d;

        public C0771a(int i10, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f62891a = i10;
            this.f62892b = iArr;
            this.f62893c = iArr2;
            this.f62894d = iArr3;
        }
    }

    private static final class b {

        public final int f62895a;

        public final int f62896b;

        public final int f62897c;

        public final int f62898d;

        public final int f62899e;

        public final int f62900f;

        public b(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f62895a = i10;
            this.f62896b = i11;
            this.f62897c = i12;
            this.f62898d = i13;
            this.f62899e = i14;
            this.f62900f = i15;
        }
    }

    private static final class c {

        public final int f62901a;

        public final boolean f62902b;

        public final byte[] f62903c;

        public final byte[] f62904d;

        public c(int i10, boolean z10, byte[] bArr, byte[] bArr2) {
            this.f62901a = i10;
            this.f62902b = z10;
            this.f62903c = bArr;
            this.f62904d = bArr2;
        }
    }

    private static final class d {

        public final int f62905a;

        public final int f62906b;

        public final int f62907c;

        public final SparseArray f62908d;

        public d(int i10, int i11, int i12, SparseArray sparseArray) {
            this.f62905a = i10;
            this.f62906b = i11;
            this.f62907c = i12;
            this.f62908d = sparseArray;
        }
    }

    private static final class e {

        public final int f62909a;

        public final int f62910b;

        public e(int i10, int i11) {
            this.f62909a = i10;
            this.f62910b = i11;
        }
    }

    private static final class f {

        public final int f62911a;

        public final boolean f62912b;

        public final int f62913c;

        public final int f62914d;

        public final int f62915e;

        public final int f62916f;

        public final int f62917g;

        public final int f62918h;

        public final int f62919i;

        public final int f62920j;

        public final SparseArray f62921k;

        public f(int i10, boolean z10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, SparseArray sparseArray) {
            this.f62911a = i10;
            this.f62912b = z10;
            this.f62913c = i11;
            this.f62914d = i12;
            this.f62915e = i13;
            this.f62916f = i14;
            this.f62917g = i15;
            this.f62918h = i16;
            this.f62919i = i17;
            this.f62920j = i18;
            this.f62921k = sparseArray;
        }

        public void a(f fVar) {
            SparseArray sparseArray = fVar.f62921k;
            for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                this.f62921k.put(sparseArray.keyAt(i10), (g) sparseArray.valueAt(i10));
            }
        }
    }

    private static final class g {

        public final int f62922a;

        public final int f62923b;

        public final int f62924c;

        public final int f62925d;

        public final int f62926e;

        public final int f62927f;

        public g(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f62922a = i10;
            this.f62923b = i11;
            this.f62924c = i12;
            this.f62925d = i13;
            this.f62926e = i14;
            this.f62927f = i15;
        }
    }

    private static final class h {

        public final int f62928a;

        public final int f62929b;

        public final SparseArray f62930c = new SparseArray();

        public final SparseArray f62931d = new SparseArray();

        public final SparseArray f62932e = new SparseArray();

        public final SparseArray f62933f = new SparseArray();

        public final SparseArray f62934g = new SparseArray();

        public b f62935h;

        public d f62936i;

        public h(int i10, int i11) {
            this.f62928a = i10;
            this.f62929b = i11;
        }

        public void a() {
            this.f62930c.clear();
            this.f62931d.clear();
            this.f62932e.clear();
            this.f62933f.clear();
            this.f62934g.clear();
            this.f62935h = null;
            this.f62936i = null;
        }
    }

    public a(List list) {
        j0 j0Var = new j0((byte[]) list.get(0));
        int iP = j0Var.P();
        int iP2 = j0Var.P();
        Paint paint = new Paint();
        this.f62884a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f62885b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f62886c = new Canvas();
        this.f62887d = new b(719, 575, 0, 719, 0, 575);
        this.f62888e = new C0771a(0, e(), f(), g());
        this.f62889f = new h(iP, iP2);
    }

    private static byte[] d(int i10, int i11, i0 i0Var) {
        byte[] bArr = new byte[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            bArr[i12] = (byte) i0Var.h(i11);
        }
        return bArr;
    }

    private static int[] e() {
        return new int[]{0, -1, ViewCompat.MEASURED_STATE_MASK, -8421505};
    }

    private static int[] f() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i10 = 1; i10 < 16; i10++) {
            if (i10 < 8) {
                iArr[i10] = h(255, (i10 & 1) != 0 ? 255 : 0, (i10 & 2) != 0 ? 255 : 0, (i10 & 4) != 0 ? 255 : 0);
            } else {
                iArr[i10] = h(255, (i10 & 1) != 0 ? 127 : 0, (i10 & 2) != 0 ? 127 : 0, (i10 & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    private static int[] g() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i10 = 0; i10 < 256; i10++) {
            if (i10 < 8) {
                iArr[i10] = h(63, (i10 & 1) != 0 ? 255 : 0, (i10 & 2) != 0 ? 255 : 0, (i10 & 4) == 0 ? 0 : 255);
            } else {
                int i11 = i10 & Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE;
                if (i11 == 0) {
                    iArr[i10] = h(255, ((i10 & 1) != 0 ? 85 : 0) + ((i10 & 16) != 0 ? 170 : 0), ((i10 & 2) != 0 ? 85 : 0) + ((i10 & 32) != 0 ? 170 : 0), ((i10 & 4) == 0 ? 0 : 85) + ((i10 & 64) == 0 ? 0 : 170));
                } else if (i11 == 8) {
                    iArr[i10] = h(127, ((i10 & 1) != 0 ? 85 : 0) + ((i10 & 16) != 0 ? 170 : 0), ((i10 & 2) != 0 ? 85 : 0) + ((i10 & 32) != 0 ? 170 : 0), ((i10 & 4) == 0 ? 0 : 85) + ((i10 & 64) == 0 ? 0 : 170));
                } else if (i11 == 128) {
                    iArr[i10] = h(255, ((i10 & 1) != 0 ? 43 : 0) + 127 + ((i10 & 16) != 0 ? 85 : 0), ((i10 & 2) != 0 ? 43 : 0) + 127 + ((i10 & 32) != 0 ? 85 : 0), ((i10 & 4) == 0 ? 0 : 43) + 127 + ((i10 & 64) == 0 ? 0 : 85));
                } else if (i11 == 136) {
                    iArr[i10] = h(255, ((i10 & 1) != 0 ? 43 : 0) + ((i10 & 16) != 0 ? 85 : 0), ((i10 & 2) != 0 ? 43 : 0) + ((i10 & 32) != 0 ? 85 : 0), ((i10 & 4) == 0 ? 0 : 43) + ((i10 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    private static int h(int i10, int i11, int i12, int i13) {
        return (i10 << 24) | (i11 << 16) | (i12 << 8) | i13;
    }

    private static int i(i0 i0Var, int[] iArr, byte[] bArr, int i10, int i11, Paint paint, Canvas canvas) {
        int i12;
        int iH;
        int iH2;
        int i13 = i10;
        boolean z10 = false;
        while (true) {
            int iH3 = i0Var.h(2);
            if (iH3 != 0) {
                z10 = z10;
                i12 = 1;
            } else {
                if (i0Var.g()) {
                    iH = i0Var.h(3) + 3;
                    iH2 = i0Var.h(2);
                } else {
                    if (i0Var.g()) {
                        i12 = 1;
                    } else {
                        int iH4 = i0Var.h(2);
                        if (iH4 == 0) {
                            z10 = true;
                        } else if (iH4 == 1) {
                            i12 = 2;
                        } else if (iH4 == 2) {
                            iH = i0Var.h(4) + 12;
                            iH2 = i0Var.h(2);
                        } else if (iH4 != 3) {
                            z10 = z10;
                        } else {
                            iH = i0Var.h(8) + 29;
                            iH2 = i0Var.h(2);
                        }
                        iH3 = 0;
                        i12 = 0;
                    }
                    iH3 = 0;
                }
                z10 = z10;
                i12 = iH;
                iH3 = iH2;
            }
            if (i12 != 0 && paint != null) {
                if (bArr != null) {
                    iH3 = bArr[iH3];
                }
                paint.setColor(iArr[iH3]);
                canvas.drawRect(i13, i11, i13 + i12, i11 + 1, paint);
            }
            i13 += i12;
            if (z10) {
                return i13;
            }
            z10 = z10;
        }
    }

    private static int j(i0 i0Var, int[] iArr, byte[] bArr, int i10, int i11, Paint paint, Canvas canvas) {
        int i12;
        int iH;
        int iH2;
        int i13 = i10;
        boolean z10 = false;
        while (true) {
            int iH3 = i0Var.h(4);
            if (iH3 != 0) {
                z10 = z10;
                i12 = 1;
            } else if (i0Var.g()) {
                if (i0Var.g()) {
                    int iH4 = i0Var.h(2);
                    if (iH4 == 0) {
                        i12 = 1;
                    } else if (iH4 == 1) {
                        i12 = 2;
                    } else if (iH4 == 2) {
                        iH = i0Var.h(4) + 9;
                        iH2 = i0Var.h(4);
                    } else if (iH4 != 3) {
                        z10 = z10;
                        iH3 = 0;
                        i12 = 0;
                    } else {
                        iH = i0Var.h(8) + 25;
                        iH2 = i0Var.h(4);
                    }
                    iH3 = 0;
                } else {
                    iH = i0Var.h(2) + 4;
                    iH2 = i0Var.h(4);
                }
                z10 = z10;
                i12 = iH;
                iH3 = iH2;
            } else {
                int iH5 = i0Var.h(3);
                if (iH5 != 0) {
                    i12 = iH5 + 2;
                    iH3 = 0;
                } else {
                    z10 = true;
                    iH3 = 0;
                    i12 = 0;
                }
            }
            if (i12 != 0 && paint != null) {
                if (bArr != null) {
                    iH3 = bArr[iH3];
                }
                paint.setColor(iArr[iH3]);
                canvas.drawRect(i13, i11, i13 + i12, i11 + 1, paint);
            }
            i13 += i12;
            if (z10) {
                return i13;
            }
            z10 = z10;
        }
    }

    private static int k(i0 i0Var, int[] iArr, byte[] bArr, int i10, int i11, Paint paint, Canvas canvas) {
        boolean z10;
        int iH;
        int i12 = i10;
        boolean z11 = false;
        while (true) {
            int iH2 = i0Var.h(8);
            if (iH2 != 0) {
                z10 = z11;
                iH = 1;
            } else if (i0Var.g()) {
                z10 = z11;
                iH = i0Var.h(7);
                iH2 = i0Var.h(8);
            } else {
                int iH3 = i0Var.h(7);
                if (iH3 != 0) {
                    z10 = z11;
                    iH = iH3;
                    iH2 = 0;
                } else {
                    z10 = true;
                    iH2 = 0;
                    iH = 0;
                }
            }
            if (iH != 0 && paint != null) {
                if (bArr != null) {
                    iH2 = bArr[iH2];
                }
                paint.setColor(iArr[iH2]);
                canvas.drawRect(i12, i11, i12 + iH, i11 + 1, paint);
            }
            i12 += iH;
            if (z10) {
                return i12;
            }
            z11 = z10;
        }
    }

    private static void l(byte[] bArr, int[] iArr, int i10, int i11, int i12, Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        i0 i0Var = new i0(bArr);
        int i13 = i11;
        int i14 = i12;
        byte[] bArrD = null;
        byte[] bArrD2 = null;
        byte[] bArrD3 = null;
        while (i0Var.b() != 0) {
            int iH = i0Var.h(8);
            if (iH != 240) {
                switch (iH) {
                    case 16:
                        if (i10 != 3) {
                            if (i10 == 2) {
                                bArr3 = bArrD3 == null ? f62881h : bArrD3;
                            } else {
                                bArr2 = null;
                            }
                            i13 = i(i0Var, iArr, bArr2, i13, i14, paint, canvas);
                            i0Var.c();
                        } else {
                            bArr3 = bArrD == null ? f62882i : bArrD;
                        }
                        bArr2 = bArr3;
                        i13 = i(i0Var, iArr, bArr2, i13, i14, paint, canvas);
                        i0Var.c();
                        break;
                    case 17:
                        i13 = j(i0Var, iArr, i10 == 3 ? bArrD2 == null ? f62883j : bArrD2 : null, i13, i14, paint, canvas);
                        i0Var.c();
                        break;
                    case 18:
                        i13 = k(i0Var, iArr, null, i13, i14, paint, canvas);
                        break;
                    default:
                        switch (iH) {
                            case 32:
                                bArrD3 = d(4, 4, i0Var);
                                break;
                            case 33:
                                bArrD = d(4, 8, i0Var);
                                break;
                            case 34:
                                bArrD2 = d(16, 8, i0Var);
                                break;
                        }
                        break;
                }
            } else {
                i14 += 2;
                i13 = i11;
            }
        }
    }

    private static void m(c cVar, C0771a c0771a, int i10, int i11, int i12, Paint paint, Canvas canvas) {
        int[] iArr;
        if (i10 == 3) {
            iArr = c0771a.f62894d;
        } else {
            iArr = i10 == 2 ? c0771a.f62893c : c0771a.f62892b;
        }
        int[] iArr2 = iArr;
        l(cVar.f62903c, iArr2, i10, i11, i12, paint, canvas);
        l(cVar.f62904d, iArr2, i10, i11, i12 + 1, paint, canvas);
    }

    private h3.e n(i0 i0Var) {
        while (i0Var.b() >= 48 && i0Var.h(8) == 15) {
            t(i0Var, this.f62889f);
        }
        h hVar = this.f62889f;
        d dVar = hVar.f62936i;
        if (dVar == null) {
            return new h3.e(ImmutableList.of(), C.TIME_UNSET, C.TIME_UNSET);
        }
        b bVar = hVar.f62935h;
        if (bVar == null) {
            bVar = this.f62887d;
        }
        Bitmap bitmap = this.f62890g;
        if (bitmap == null || bVar.f62895a + 1 != bitmap.getWidth() || bVar.f62896b + 1 != this.f62890g.getHeight()) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bVar.f62895a + 1, bVar.f62896b + 1, Bitmap.Config.ARGB_8888);
            this.f62890g = bitmapCreateBitmap;
            this.f62886c.setBitmap(bitmapCreateBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray sparseArray = dVar.f62908d;
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            this.f62886c.save();
            e eVar = (e) sparseArray.valueAt(i10);
            f fVar = (f) this.f62889f.f62930c.get(sparseArray.keyAt(i10));
            int i11 = eVar.f62909a + bVar.f62897c;
            int i12 = eVar.f62910b + bVar.f62899e;
            this.f62886c.clipRect(i11, i12, Math.min(fVar.f62913c + i11, bVar.f62898d), Math.min(fVar.f62914d + i12, bVar.f62900f));
            C0771a c0771a = (C0771a) this.f62889f.f62931d.get(fVar.f62917g);
            if (c0771a == null && (c0771a = (C0771a) this.f62889f.f62933f.get(fVar.f62917g)) == null) {
                c0771a = this.f62888e;
            }
            int i13 = 0;
            for (SparseArray sparseArray2 = fVar.f62921k; i13 < sparseArray2.size(); sparseArray2 = sparseArray2) {
                int iKeyAt = sparseArray2.keyAt(i13);
                g gVar = (g) sparseArray2.valueAt(i13);
                c cVar = (c) this.f62889f.f62932e.get(iKeyAt);
                c cVar2 = cVar == null ? (c) this.f62889f.f62934g.get(iKeyAt) : cVar;
                if (cVar2 != null) {
                    m(cVar2, c0771a, fVar.f62916f, gVar.f62924c + i11, i12 + gVar.f62925d, cVar2.f62902b ? null : this.f62884a, this.f62886c);
                }
                i13++;
            }
            if (fVar.f62912b) {
                int i14 = fVar.f62916f;
                this.f62885b.setColor(i14 == 3 ? c0771a.f62894d[fVar.f62918h] : i14 == 2 ? c0771a.f62893c[fVar.f62919i] : c0771a.f62892b[fVar.f62920j]);
                this.f62886c.drawRect(i11, i12, fVar.f62913c + i11, fVar.f62914d + i12, this.f62885b);
            }
            arrayList.add(new u1.a.b().f(Bitmap.createBitmap(this.f62890g, i11, i12, fVar.f62913c, fVar.f62914d)).k(i11 / bVar.f62895a).l(0).h(i12 / bVar.f62896b, 0).i(0).n(fVar.f62913c / bVar.f62895a).g(fVar.f62914d / bVar.f62896b).a());
            this.f62886c.drawColor(0, PorterDuff.Mode.CLEAR);
            this.f62886c.restore();
        }
        return new h3.e(arrayList, C.TIME_UNSET, C.TIME_UNSET);
    }

    private static C0771a o(i0 i0Var, int i10) {
        int[] iArr;
        int iH;
        int i11;
        int iH2;
        int iH3;
        int iH4;
        int i12 = 8;
        int iH5 = i0Var.h(8);
        i0Var.r(8);
        int i13 = 2;
        int i14 = i10 - 2;
        int[] iArrE = e();
        int[] iArrF = f();
        int[] iArrG = g();
        while (i14 > 0) {
            int iH6 = i0Var.h(i12);
            int iH7 = i0Var.h(i12);
            if ((iH7 & 128) != 0) {
                iArr = iArrE;
            } else {
                iArr = (iH7 & 64) != 0 ? iArrF : iArrG;
            }
            if ((iH7 & 1) != 0) {
                iH3 = i0Var.h(i12);
                iH4 = i0Var.h(i12);
                iH = i0Var.h(i12);
                iH2 = i0Var.h(i12);
                i11 = i14 - 6;
            } else {
                int iH8 = i0Var.h(6) << i13;
                int iH9 = i0Var.h(4) << 4;
                iH = i0Var.h(4) << 4;
                i11 = i14 - 4;
                iH2 = i0Var.h(i13) << 6;
                iH3 = iH8;
                iH4 = iH9;
            }
            if (iH3 == 0) {
                iH2 = 255;
                iH4 = 0;
                iH = 0;
            }
            double d10 = iH3;
            double d11 = iH4 - 128;
            double d12 = iH - 128;
            iArr[iH6] = h((byte) (255 - (iH2 & 255)), a1.p((int) (d10 + (1.402d * d11)), 0, 255), a1.p((int) ((d10 - (0.34414d * d12)) - (d11 * 0.71414d)), 0, 255), a1.p((int) (d10 + (d12 * 1.772d)), 0, 255));
            i14 = i11;
            iH5 = iH5;
            i12 = 8;
            i13 = 2;
        }
        return new C0771a(iH5, iArrE, iArrF, iArrG);
    }

    private static b p(i0 i0Var) {
        int i10;
        int i11;
        int i12;
        int iH;
        i0Var.r(4);
        boolean zG = i0Var.g();
        i0Var.r(3);
        int iH2 = i0Var.h(16);
        int iH3 = i0Var.h(16);
        if (zG) {
            int iH4 = i0Var.h(16);
            int iH5 = i0Var.h(16);
            int iH6 = i0Var.h(16);
            iH = i0Var.h(16);
            i12 = iH5;
            i11 = iH6;
            i10 = iH4;
        } else {
            i10 = 0;
            i11 = 0;
            i12 = iH2;
            iH = iH3;
        }
        return new b(iH2, iH3, i10, i12, i11, iH);
    }

    private static c q(i0 i0Var) {
        byte[] bArr;
        int iH = i0Var.h(16);
        i0Var.r(4);
        int iH2 = i0Var.h(2);
        boolean zG = i0Var.g();
        i0Var.r(1);
        byte[] bArr2 = a1.f10043f;
        if (iH2 != 1) {
            if (iH2 == 0) {
                int iH3 = i0Var.h(16);
                int iH4 = i0Var.h(16);
                if (iH3 > 0) {
                    bArr2 = new byte[iH3];
                    i0Var.k(bArr2, 0, iH3);
                }
                if (iH4 > 0) {
                    bArr = new byte[iH4];
                    i0Var.k(bArr, 0, iH4);
                }
            }
            return new c(iH, zG, bArr2, bArr);
        }
        i0Var.r(i0Var.h(8) * 16);
        bArr = bArr2;
        return new c(iH, zG, bArr2, bArr);
    }

    private static d r(i0 i0Var, int i10) {
        int iH = i0Var.h(8);
        int iH2 = i0Var.h(4);
        int iH3 = i0Var.h(2);
        i0Var.r(2);
        int i11 = i10 - 2;
        SparseArray sparseArray = new SparseArray();
        while (i11 > 0) {
            int iH4 = i0Var.h(8);
            i0Var.r(8);
            i11 -= 6;
            sparseArray.put(iH4, new e(i0Var.h(16), i0Var.h(16)));
        }
        return new d(iH, iH2, iH3, sparseArray);
    }

    private static f s(i0 i0Var, int i10) {
        int i11;
        int iH;
        int iH2;
        int iH3 = i0Var.h(8);
        i0Var.r(4);
        boolean zG = i0Var.g();
        i0Var.r(3);
        int i12 = 16;
        int iH4 = i0Var.h(16);
        int iH5 = i0Var.h(16);
        int iH6 = i0Var.h(3);
        int iH7 = i0Var.h(3);
        int i13 = 2;
        i0Var.r(2);
        int iH8 = i0Var.h(8);
        int iH9 = i0Var.h(8);
        int iH10 = i0Var.h(4);
        int iH11 = i0Var.h(2);
        i0Var.r(2);
        int i14 = i10 - 10;
        SparseArray sparseArray = new SparseArray();
        while (i14 > 0) {
            int iH12 = i0Var.h(i12);
            int iH13 = i0Var.h(i13);
            int iH14 = i0Var.h(i13);
            int iH15 = i0Var.h(12);
            int i15 = iH11;
            i0Var.r(4);
            int iH16 = i0Var.h(12);
            int i16 = i14 - 6;
            if (iH13 != 1) {
                i11 = 2;
                if (iH13 != 2) {
                    iH2 = 0;
                    iH = 0;
                    i14 = i16;
                }
                sparseArray.put(iH12, new g(iH13, iH14, iH15, iH16, iH2, iH));
                i13 = i11;
                iH11 = i15;
                i12 = 16;
            } else {
                i11 = 2;
            }
            i14 -= 8;
            iH2 = i0Var.h(8);
            iH = i0Var.h(8);
            sparseArray.put(iH12, new g(iH13, iH14, iH15, iH16, iH2, iH));
            i13 = i11;
            iH11 = i15;
            i12 = 16;
        }
        return new f(iH3, zG, iH4, iH5, iH6, iH7, iH8, iH9, iH10, iH11, sparseArray);
    }

    private static void t(i0 i0Var, h hVar) {
        f fVar;
        int iH = i0Var.h(8);
        int iH2 = i0Var.h(16);
        int iH3 = i0Var.h(16);
        int iD = i0Var.d() + iH3;
        if (iH3 * 8 > i0Var.b()) {
            u.h("DvbParser", "Data field length exceeds limit");
            i0Var.r(i0Var.b());
            return;
        }
        switch (iH) {
            case 16:
                if (iH2 == hVar.f62928a) {
                    d dVar = hVar.f62936i;
                    d dVarR = r(i0Var, iH3);
                    if (dVarR.f62907c != 0) {
                        hVar.f62936i = dVarR;
                        hVar.f62930c.clear();
                        hVar.f62931d.clear();
                        hVar.f62932e.clear();
                    } else if (dVar != null && dVar.f62906b != dVarR.f62906b) {
                        hVar.f62936i = dVarR;
                    }
                }
                break;
            case 17:
                d dVar2 = hVar.f62936i;
                if (iH2 == hVar.f62928a && dVar2 != null) {
                    f fVarS = s(i0Var, iH3);
                    if (dVar2.f62907c == 0 && (fVar = (f) hVar.f62930c.get(fVarS.f62911a)) != null) {
                        fVarS.a(fVar);
                    }
                    hVar.f62930c.put(fVarS.f62911a, fVarS);
                }
                break;
            case 18:
                if (iH2 == hVar.f62928a) {
                    C0771a c0771aO = o(i0Var, iH3);
                    hVar.f62931d.put(c0771aO.f62891a, c0771aO);
                } else if (iH2 == hVar.f62929b) {
                    C0771a c0771aO2 = o(i0Var, iH3);
                    hVar.f62933f.put(c0771aO2.f62891a, c0771aO2);
                }
                break;
            case 19:
                if (iH2 == hVar.f62928a) {
                    c cVarQ = q(i0Var);
                    hVar.f62932e.put(cVarQ.f62901a, cVarQ);
                } else if (iH2 == hVar.f62929b) {
                    c cVarQ2 = q(i0Var);
                    hVar.f62934g.put(cVarQ2.f62901a, cVarQ2);
                }
                break;
            case 20:
                if (iH2 == hVar.f62928a) {
                    hVar.f62935h = p(i0Var);
                }
                break;
        }
        i0Var.s(iD - i0Var.d());
    }

    @Override
    public k a(byte[] bArr, int i10, int i11) {
        return r.a(this, bArr, i10, i11);
    }

    @Override
    public void b(byte[] bArr, int i10, int i11, s.b bVar, m mVar) {
        i0 i0Var = new i0(bArr, i11 + i10);
        i0Var.p(i10);
        mVar.accept(n(i0Var));
    }

    @Override
    public int c() {
        return 2;
    }

    @Override
    public void reset() {
        this.f62889f.a();
    }
}
