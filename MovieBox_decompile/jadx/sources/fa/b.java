package fa;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.core.view.ViewCompat;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class b {

    private static final byte[] f60053h = {0, 7, 8, 15};

    private static final byte[] f60054i = {0, 119, -120, -1};

    private static final byte[] f60055j = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    private final Paint f60056a;

    private final Paint f60057b;

    private final Canvas f60058c;

    private final C0730b f60059d;

    private final a f60060e;

    private final h f60061f;

    private Bitmap f60062g;

    private static final class a {

        public final int f60063a;

        public final int[] f60064b;

        public final int[] f60065c;

        public final int[] f60066d;

        public a(int i10, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f60063a = i10;
            this.f60064b = iArr;
            this.f60065c = iArr2;
            this.f60066d = iArr3;
        }
    }

    private static final class C0730b {

        public final int f60067a;

        public final int f60068b;

        public final int f60069c;

        public final int f60070d;

        public final int f60071e;

        public final int f60072f;

        public C0730b(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f60067a = i10;
            this.f60068b = i11;
            this.f60069c = i12;
            this.f60070d = i13;
            this.f60071e = i14;
            this.f60072f = i15;
        }
    }

    private static final class c {

        public final int f60073a;

        public final boolean f60074b;

        public final byte[] f60075c;

        public final byte[] f60076d;

        public c(int i10, boolean z10, byte[] bArr, byte[] bArr2) {
            this.f60073a = i10;
            this.f60074b = z10;
            this.f60075c = bArr;
            this.f60076d = bArr2;
        }
    }

    private static final class d {

        public final int f60077a;

        public final int f60078b;

        public final int f60079c;

        public final SparseArray f60080d;

        public d(int i10, int i11, int i12, SparseArray sparseArray) {
            this.f60077a = i10;
            this.f60078b = i11;
            this.f60079c = i12;
            this.f60080d = sparseArray;
        }
    }

    private static final class e {

        public final int f60081a;

        public final int f60082b;

        public e(int i10, int i11) {
            this.f60081a = i10;
            this.f60082b = i11;
        }
    }

    private static final class f {

        public final int f60083a;

        public final boolean f60084b;

        public final int f60085c;

        public final int f60086d;

        public final int f60087e;

        public final int f60088f;

        public final int f60089g;

        public final int f60090h;

        public final int f60091i;

        public final int f60092j;

        public final SparseArray f60093k;

        public f(int i10, boolean z10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, SparseArray sparseArray) {
            this.f60083a = i10;
            this.f60084b = z10;
            this.f60085c = i11;
            this.f60086d = i12;
            this.f60087e = i13;
            this.f60088f = i14;
            this.f60089g = i15;
            this.f60090h = i16;
            this.f60091i = i17;
            this.f60092j = i18;
            this.f60093k = sparseArray;
        }

        public void a(f fVar) {
            SparseArray sparseArray = fVar.f60093k;
            for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                this.f60093k.put(sparseArray.keyAt(i10), (g) sparseArray.valueAt(i10));
            }
        }
    }

    private static final class g {

        public final int f60094a;

        public final int f60095b;

        public final int f60096c;

        public final int f60097d;

        public final int f60098e;

        public final int f60099f;

        public g(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f60094a = i10;
            this.f60095b = i11;
            this.f60096c = i12;
            this.f60097d = i13;
            this.f60098e = i14;
            this.f60099f = i15;
        }
    }

    private static final class h {

        public final int f60100a;

        public final int f60101b;

        public final SparseArray f60102c = new SparseArray();

        public final SparseArray f60103d = new SparseArray();

        public final SparseArray f60104e = new SparseArray();

        public final SparseArray f60105f = new SparseArray();

        public final SparseArray f60106g = new SparseArray();

        public C0730b f60107h;

        public d f60108i;

        public h(int i10, int i11) {
            this.f60100a = i10;
            this.f60101b = i11;
        }

        public void a() {
            this.f60102c.clear();
            this.f60103d.clear();
            this.f60104e.clear();
            this.f60105f.clear();
            this.f60106g.clear();
            this.f60107h = null;
            this.f60108i = null;
        }
    }

    public b(int i10, int i11) {
        Paint paint = new Paint();
        this.f60056a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f60057b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f60058c = new Canvas();
        this.f60059d = new C0730b(719, 575, 0, 719, 0, 575);
        this.f60060e = new a(0, c(), d(), e());
        this.f60061f = new h(i10, i11);
    }

    private static byte[] a(int i10, int i11, c0 c0Var) {
        byte[] bArr = new byte[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            bArr[i12] = (byte) c0Var.h(i11);
        }
        return bArr;
    }

    private static int[] c() {
        return new int[]{0, -1, ViewCompat.MEASURED_STATE_MASK, -8421505};
    }

    private static int[] d() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i10 = 1; i10 < 16; i10++) {
            if (i10 < 8) {
                iArr[i10] = f(255, (i10 & 1) != 0 ? 255 : 0, (i10 & 2) != 0 ? 255 : 0, (i10 & 4) != 0 ? 255 : 0);
            } else {
                iArr[i10] = f(255, (i10 & 1) != 0 ? 127 : 0, (i10 & 2) != 0 ? 127 : 0, (i10 & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    private static int[] e() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i10 = 0; i10 < 256; i10++) {
            if (i10 < 8) {
                iArr[i10] = f(63, (i10 & 1) != 0 ? 255 : 0, (i10 & 2) != 0 ? 255 : 0, (i10 & 4) == 0 ? 0 : 255);
            } else {
                int i11 = i10 & Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE;
                if (i11 == 0) {
                    iArr[i10] = f(255, ((i10 & 1) != 0 ? 85 : 0) + ((i10 & 16) != 0 ? 170 : 0), ((i10 & 2) != 0 ? 85 : 0) + ((i10 & 32) != 0 ? 170 : 0), ((i10 & 4) == 0 ? 0 : 85) + ((i10 & 64) == 0 ? 0 : 170));
                } else if (i11 == 8) {
                    iArr[i10] = f(127, ((i10 & 1) != 0 ? 85 : 0) + ((i10 & 16) != 0 ? 170 : 0), ((i10 & 2) != 0 ? 85 : 0) + ((i10 & 32) != 0 ? 170 : 0), ((i10 & 4) == 0 ? 0 : 85) + ((i10 & 64) == 0 ? 0 : 170));
                } else if (i11 == 128) {
                    iArr[i10] = f(255, ((i10 & 1) != 0 ? 43 : 0) + 127 + ((i10 & 16) != 0 ? 85 : 0), ((i10 & 2) != 0 ? 43 : 0) + 127 + ((i10 & 32) != 0 ? 85 : 0), ((i10 & 4) == 0 ? 0 : 43) + 127 + ((i10 & 64) == 0 ? 0 : 85));
                } else if (i11 == 136) {
                    iArr[i10] = f(255, ((i10 & 1) != 0 ? 43 : 0) + ((i10 & 16) != 0 ? 85 : 0), ((i10 & 2) != 0 ? 43 : 0) + ((i10 & 32) != 0 ? 85 : 0), ((i10 & 4) == 0 ? 0 : 43) + ((i10 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    private static int f(int i10, int i11, int i12, int i13) {
        return (i10 << 24) | (i11 << 16) | (i12 << 8) | i13;
    }

    private static int g(c0 c0Var, int[] iArr, byte[] bArr, int i10, int i11, Paint paint, Canvas canvas) {
        int i12;
        int iH;
        int iH2;
        int i13 = i10;
        boolean z10 = false;
        while (true) {
            int iH3 = c0Var.h(2);
            if (iH3 != 0) {
                z10 = z10;
                i12 = 1;
            } else {
                if (c0Var.g()) {
                    iH = c0Var.h(3) + 3;
                    iH2 = c0Var.h(2);
                } else {
                    if (c0Var.g()) {
                        i12 = 1;
                    } else {
                        int iH4 = c0Var.h(2);
                        if (iH4 == 0) {
                            z10 = true;
                        } else if (iH4 == 1) {
                            i12 = 2;
                        } else if (iH4 == 2) {
                            iH = c0Var.h(4) + 12;
                            iH2 = c0Var.h(2);
                        } else if (iH4 != 3) {
                            z10 = z10;
                        } else {
                            iH = c0Var.h(8) + 29;
                            iH2 = c0Var.h(2);
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

    private static int h(c0 c0Var, int[] iArr, byte[] bArr, int i10, int i11, Paint paint, Canvas canvas) {
        int i12;
        int iH;
        int iH2;
        int i13 = i10;
        boolean z10 = false;
        while (true) {
            int iH3 = c0Var.h(4);
            if (iH3 != 0) {
                z10 = z10;
                i12 = 1;
            } else if (c0Var.g()) {
                if (c0Var.g()) {
                    int iH4 = c0Var.h(2);
                    if (iH4 == 0) {
                        i12 = 1;
                    } else if (iH4 == 1) {
                        i12 = 2;
                    } else if (iH4 == 2) {
                        iH = c0Var.h(4) + 9;
                        iH2 = c0Var.h(4);
                    } else if (iH4 != 3) {
                        z10 = z10;
                        iH3 = 0;
                        i12 = 0;
                    } else {
                        iH = c0Var.h(8) + 25;
                        iH2 = c0Var.h(4);
                    }
                    iH3 = 0;
                } else {
                    iH = c0Var.h(2) + 4;
                    iH2 = c0Var.h(4);
                }
                z10 = z10;
                i12 = iH;
                iH3 = iH2;
            } else {
                int iH5 = c0Var.h(3);
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

    private static int i(c0 c0Var, int[] iArr, byte[] bArr, int i10, int i11, Paint paint, Canvas canvas) {
        boolean z10;
        int iH;
        int i12 = i10;
        boolean z11 = false;
        while (true) {
            int iH2 = c0Var.h(8);
            if (iH2 != 0) {
                z10 = z11;
                iH = 1;
            } else if (c0Var.g()) {
                z10 = z11;
                iH = c0Var.h(7);
                iH2 = c0Var.h(8);
            } else {
                int iH3 = c0Var.h(7);
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

    private static void j(byte[] bArr, int[] iArr, int i10, int i11, int i12, Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        c0 c0Var = new c0(bArr);
        int iG = i11;
        int i13 = i12;
        byte[] bArrA = null;
        byte[] bArrA2 = null;
        byte[] bArrA3 = null;
        while (c0Var.b() != 0) {
            int iH = c0Var.h(8);
            if (iH != 240) {
                switch (iH) {
                    case 16:
                        if (i10 != 3) {
                            if (i10 == 2) {
                                bArr3 = bArrA3 == null ? f60053h : bArrA3;
                            } else {
                                bArr2 = null;
                            }
                            iG = g(c0Var, iArr, bArr2, iG, i13, paint, canvas);
                            c0Var.c();
                        } else {
                            bArr3 = bArrA == null ? f60054i : bArrA;
                        }
                        bArr2 = bArr3;
                        iG = g(c0Var, iArr, bArr2, iG, i13, paint, canvas);
                        c0Var.c();
                        break;
                    case 17:
                        iG = h(c0Var, iArr, i10 == 3 ? bArrA2 == null ? f60055j : bArrA2 : null, iG, i13, paint, canvas);
                        c0Var.c();
                        break;
                    case 18:
                        iG = i(c0Var, iArr, null, iG, i13, paint, canvas);
                        break;
                    default:
                        switch (iH) {
                            case 32:
                                bArrA3 = a(4, 4, c0Var);
                                break;
                            case 33:
                                bArrA = a(4, 8, c0Var);
                                break;
                            case 34:
                                bArrA2 = a(16, 8, c0Var);
                                break;
                        }
                        break;
                }
            } else {
                i13 += 2;
                iG = i11;
            }
        }
    }

    private static void k(c cVar, a aVar, int i10, int i11, int i12, Paint paint, Canvas canvas) {
        int[] iArr;
        if (i10 == 3) {
            iArr = aVar.f60066d;
        } else {
            iArr = i10 == 2 ? aVar.f60065c : aVar.f60064b;
        }
        int[] iArr2 = iArr;
        j(cVar.f60075c, iArr2, i10, i11, i12, paint, canvas);
        j(cVar.f60076d, iArr2, i10, i11, i12 + 1, paint, canvas);
    }

    private static a l(c0 c0Var, int i10) {
        int[] iArr;
        int iH;
        int i11;
        int iH2;
        int iH3;
        int iH4;
        int i12 = 8;
        int iH5 = c0Var.h(8);
        c0Var.r(8);
        int i13 = 2;
        int i14 = i10 - 2;
        int[] iArrC = c();
        int[] iArrD = d();
        int[] iArrE = e();
        while (i14 > 0) {
            int iH6 = c0Var.h(i12);
            int iH7 = c0Var.h(i12);
            if ((iH7 & 128) != 0) {
                iArr = iArrC;
            } else {
                iArr = (iH7 & 64) != 0 ? iArrD : iArrE;
            }
            if ((iH7 & 1) != 0) {
                iH3 = c0Var.h(i12);
                iH4 = c0Var.h(i12);
                iH = c0Var.h(i12);
                iH2 = c0Var.h(i12);
                i11 = i14 - 6;
            } else {
                int iH8 = c0Var.h(6) << i13;
                int iH9 = c0Var.h(4) << 4;
                iH = c0Var.h(4) << 4;
                i11 = i14 - 4;
                iH2 = c0Var.h(i13) << 6;
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
            iArr[iH6] = f((byte) (255 - (iH2 & 255)), p0.q((int) (d10 + (1.402d * d11)), 0, 255), p0.q((int) ((d10 - (0.34414d * d12)) - (d11 * 0.71414d)), 0, 255), p0.q((int) (d10 + (d12 * 1.772d)), 0, 255));
            i14 = i11;
            iH5 = iH5;
            i12 = 8;
            i13 = 2;
        }
        return new a(iH5, iArrC, iArrD, iArrE);
    }

    private static C0730b m(c0 c0Var) {
        int i10;
        int i11;
        int i12;
        int iH;
        c0Var.r(4);
        boolean zG = c0Var.g();
        c0Var.r(3);
        int iH2 = c0Var.h(16);
        int iH3 = c0Var.h(16);
        if (zG) {
            int iH4 = c0Var.h(16);
            int iH5 = c0Var.h(16);
            int iH6 = c0Var.h(16);
            iH = c0Var.h(16);
            i12 = iH5;
            i11 = iH6;
            i10 = iH4;
        } else {
            i10 = 0;
            i11 = 0;
            i12 = iH2;
            iH = iH3;
        }
        return new C0730b(iH2, iH3, i10, i12, i11, iH);
    }

    private static c n(c0 c0Var) {
        byte[] bArr;
        int iH = c0Var.h(16);
        c0Var.r(4);
        int iH2 = c0Var.h(2);
        boolean zG = c0Var.g();
        c0Var.r(1);
        byte[] bArr2 = p0.f26859f;
        if (iH2 != 1) {
            if (iH2 == 0) {
                int iH3 = c0Var.h(16);
                int iH4 = c0Var.h(16);
                if (iH3 > 0) {
                    bArr2 = new byte[iH3];
                    c0Var.k(bArr2, 0, iH3);
                }
                if (iH4 > 0) {
                    bArr = new byte[iH4];
                    c0Var.k(bArr, 0, iH4);
                }
            }
            return new c(iH, zG, bArr2, bArr);
        }
        c0Var.r(c0Var.h(8) * 16);
        bArr = bArr2;
        return new c(iH, zG, bArr2, bArr);
    }

    private static d o(c0 c0Var, int i10) {
        int iH = c0Var.h(8);
        int iH2 = c0Var.h(4);
        int iH3 = c0Var.h(2);
        c0Var.r(2);
        int i11 = i10 - 2;
        SparseArray sparseArray = new SparseArray();
        while (i11 > 0) {
            int iH4 = c0Var.h(8);
            c0Var.r(8);
            i11 -= 6;
            sparseArray.put(iH4, new e(c0Var.h(16), c0Var.h(16)));
        }
        return new d(iH, iH2, iH3, sparseArray);
    }

    private static f p(c0 c0Var, int i10) {
        int i11;
        int iH;
        int iH2;
        int iH3 = c0Var.h(8);
        c0Var.r(4);
        boolean zG = c0Var.g();
        c0Var.r(3);
        int i12 = 16;
        int iH4 = c0Var.h(16);
        int iH5 = c0Var.h(16);
        int iH6 = c0Var.h(3);
        int iH7 = c0Var.h(3);
        int i13 = 2;
        c0Var.r(2);
        int iH8 = c0Var.h(8);
        int iH9 = c0Var.h(8);
        int iH10 = c0Var.h(4);
        int iH11 = c0Var.h(2);
        c0Var.r(2);
        int i14 = i10 - 10;
        SparseArray sparseArray = new SparseArray();
        while (i14 > 0) {
            int iH12 = c0Var.h(i12);
            int iH13 = c0Var.h(i13);
            int iH14 = c0Var.h(i13);
            int iH15 = c0Var.h(12);
            int i15 = iH11;
            c0Var.r(4);
            int iH16 = c0Var.h(12);
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
            iH2 = c0Var.h(8);
            iH = c0Var.h(8);
            sparseArray.put(iH12, new g(iH13, iH14, iH15, iH16, iH2, iH));
            i13 = i11;
            iH11 = i15;
            i12 = 16;
        }
        return new f(iH3, zG, iH4, iH5, iH6, iH7, iH8, iH9, iH10, iH11, sparseArray);
    }

    private static void q(c0 c0Var, h hVar) {
        f fVar;
        int iH = c0Var.h(8);
        int iH2 = c0Var.h(16);
        int iH3 = c0Var.h(16);
        int iD = c0Var.d() + iH3;
        if (iH3 * 8 > c0Var.b()) {
            s.i("DvbParser", "Data field length exceeds limit");
            c0Var.r(c0Var.b());
            return;
        }
        switch (iH) {
            case 16:
                if (iH2 == hVar.f60100a) {
                    d dVar = hVar.f60108i;
                    d dVarO = o(c0Var, iH3);
                    if (dVarO.f60079c != 0) {
                        hVar.f60108i = dVarO;
                        hVar.f60102c.clear();
                        hVar.f60103d.clear();
                        hVar.f60104e.clear();
                    } else if (dVar != null && dVar.f60078b != dVarO.f60078b) {
                        hVar.f60108i = dVarO;
                    }
                }
                break;
            case 17:
                d dVar2 = hVar.f60108i;
                if (iH2 == hVar.f60100a && dVar2 != null) {
                    f fVarP = p(c0Var, iH3);
                    if (dVar2.f60079c == 0 && (fVar = (f) hVar.f60102c.get(fVarP.f60083a)) != null) {
                        fVarP.a(fVar);
                    }
                    hVar.f60102c.put(fVarP.f60083a, fVarP);
                }
                break;
            case 18:
                if (iH2 == hVar.f60100a) {
                    a aVarL = l(c0Var, iH3);
                    hVar.f60103d.put(aVarL.f60063a, aVarL);
                } else if (iH2 == hVar.f60101b) {
                    a aVarL2 = l(c0Var, iH3);
                    hVar.f60105f.put(aVarL2.f60063a, aVarL2);
                }
                break;
            case 19:
                if (iH2 == hVar.f60100a) {
                    c cVarN = n(c0Var);
                    hVar.f60104e.put(cVarN.f60073a, cVarN);
                } else if (iH2 == hVar.f60101b) {
                    c cVarN2 = n(c0Var);
                    hVar.f60106g.put(cVarN2.f60073a, cVarN2);
                }
                break;
            case 20:
                if (iH2 == hVar.f60100a) {
                    hVar.f60107h = m(c0Var);
                }
                break;
        }
        c0Var.s(iD - c0Var.d());
    }

    public List b(byte[] bArr, int i10) {
        c0 c0Var = new c0(bArr, i10);
        while (c0Var.b() >= 48 && c0Var.h(8) == 15) {
            q(c0Var, this.f60061f);
        }
        h hVar = this.f60061f;
        d dVar = hVar.f60108i;
        if (dVar == null) {
            return Collections.emptyList();
        }
        C0730b c0730b = hVar.f60107h;
        if (c0730b == null) {
            c0730b = this.f60059d;
        }
        Bitmap bitmap = this.f60062g;
        if (bitmap == null || c0730b.f60067a + 1 != bitmap.getWidth() || c0730b.f60068b + 1 != this.f60062g.getHeight()) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(c0730b.f60067a + 1, c0730b.f60068b + 1, Bitmap.Config.ARGB_8888);
            this.f60062g = bitmapCreateBitmap;
            this.f60058c.setBitmap(bitmapCreateBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray sparseArray = dVar.f60080d;
        for (int i11 = 0; i11 < sparseArray.size(); i11++) {
            this.f60058c.save();
            e eVar = (e) sparseArray.valueAt(i11);
            f fVar = (f) this.f60061f.f60102c.get(sparseArray.keyAt(i11));
            int i12 = eVar.f60081a + c0730b.f60069c;
            int i13 = eVar.f60082b + c0730b.f60071e;
            this.f60058c.clipRect(i12, i13, Math.min(fVar.f60085c + i12, c0730b.f60070d), Math.min(fVar.f60086d + i13, c0730b.f60072f));
            a aVar = (a) this.f60061f.f60103d.get(fVar.f60089g);
            if (aVar == null && (aVar = (a) this.f60061f.f60105f.get(fVar.f60089g)) == null) {
                aVar = this.f60060e;
            }
            int i14 = 0;
            for (SparseArray sparseArray2 = fVar.f60093k; i14 < sparseArray2.size(); sparseArray2 = sparseArray2) {
                int iKeyAt = sparseArray2.keyAt(i14);
                g gVar = (g) sparseArray2.valueAt(i14);
                c cVar = (c) this.f60061f.f60104e.get(iKeyAt);
                c cVar2 = cVar == null ? (c) this.f60061f.f60106g.get(iKeyAt) : cVar;
                if (cVar2 != null) {
                    k(cVar2, aVar, fVar.f60088f, gVar.f60096c + i12, i13 + gVar.f60097d, cVar2.f60074b ? null : this.f60056a, this.f60058c);
                }
                i14++;
            }
            if (fVar.f60084b) {
                int i15 = fVar.f60088f;
                this.f60057b.setColor(i15 == 3 ? aVar.f60066d[fVar.f60090h] : i15 == 2 ? aVar.f60065c[fVar.f60091i] : aVar.f60064b[fVar.f60092j]);
                this.f60058c.drawRect(i12, i13, fVar.f60085c + i12, fVar.f60086d + i13, this.f60057b);
            }
            arrayList.add(new da.b.C0703b().f(Bitmap.createBitmap(this.f60062g, i12, i13, fVar.f60085c, fVar.f60086d)).k(i12 / c0730b.f60067a).l(0).h(i13 / c0730b.f60068b, 0).i(0).n(fVar.f60085c / c0730b.f60067a).g(fVar.f60086d / c0730b.f60068b).a());
            this.f60058c.drawColor(0, PorterDuff.Mode.CLEAR);
            this.f60058c.restore();
        }
        return Collections.unmodifiableList(arrayList);
    }

    public void r() {
        this.f60061f.a();
    }
}
