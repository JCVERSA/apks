package p3;

import android.graphics.Bitmap;
import android.graphics.Rect;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.i0;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.m;
import androidx.media3.common.util.u;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import h3.e;
import h3.k;
import h3.r;
import h3.s;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;
import java.util.zip.Inflater;

public final class a implements s {

    private final j0 f68986a = new j0();

    private final j0 f68987b = new j0();

    private final b f68988c;

    private Inflater f68989d;

    private static final class b {

        private boolean f68991b;

        private boolean f68992c;

        private int[] f68993d;

        private int f68994e;

        private int f68995f;

        private Rect f68996g;

        private final int[] f68990a = new int[4];

        private int f68997h = -1;

        private int f68998i = -1;

        private static final class C0851a {

            public int f68999a;

            public int f69000b;

            private C0851a() {
            }
        }

        private static int b(int[] iArr, int i10) {
            return (i10 < 0 || i10 >= iArr.length) ? iArr[0] : iArr[i10];
        }

        private static int c(String str) {
            try {
                return Integer.parseInt(str, 16);
            } catch (RuntimeException unused) {
                return 0;
            }
        }

        private void d(int[] iArr, j0 j0Var, int i10) {
            while (j0Var.f() < i10 && j0Var.a() > 0) {
                switch (j0Var.H()) {
                    case 0:
                    case 1:
                    case 2:
                        break;
                    case 3:
                        if (!g(iArr, j0Var)) {
                            return;
                        }
                        break;
                    case 4:
                        if (!e(j0Var)) {
                            return;
                        }
                        break;
                    case 5:
                        if (!f(j0Var)) {
                            return;
                        }
                        break;
                    case 6:
                        if (!h(j0Var)) {
                            return;
                        }
                        break;
                    default:
                        return;
                }
            }
        }

        private boolean e(j0 j0Var) {
            if (j0Var.a() < 2 || !this.f68992c) {
                return false;
            }
            int iH = j0Var.H();
            int iH2 = j0Var.H();
            int[] iArr = this.f68990a;
            iArr[3] = n(iArr[3], iH >> 4);
            int[] iArr2 = this.f68990a;
            iArr2[2] = n(iArr2[2], iH & 15);
            int[] iArr3 = this.f68990a;
            iArr3[1] = n(iArr3[1], iH2 >> 4);
            int[] iArr4 = this.f68990a;
            iArr4[0] = n(iArr4[0], iH2 & 15);
            return true;
        }

        private boolean f(j0 j0Var) {
            if (j0Var.a() < 6) {
                return false;
            }
            int iH = j0Var.H();
            int iH2 = j0Var.H();
            int i10 = (iH << 4) | (iH2 >> 4);
            int iH3 = ((iH2 & 15) << 8) | j0Var.H();
            int iH4 = j0Var.H();
            int iH5 = j0Var.H();
            this.f68996g = new Rect(i10, (iH4 << 4) | (iH5 >> 4), iH3 + 1, (j0Var.H() | ((iH5 & 15) << 8)) + 1);
            return true;
        }

        private boolean g(int[] iArr, j0 j0Var) {
            if (j0Var.a() < 2) {
                return false;
            }
            int iH = j0Var.H();
            int iH2 = j0Var.H();
            this.f68990a[3] = b(iArr, iH >> 4);
            this.f68990a[2] = b(iArr, iH & 15);
            this.f68990a[1] = b(iArr, iH2 >> 4);
            this.f68990a[0] = b(iArr, iH2 & 15);
            this.f68992c = true;
            return true;
        }

        private boolean h(j0 j0Var) {
            if (j0Var.a() < 4) {
                return false;
            }
            this.f68997h = j0Var.P();
            this.f68998i = j0Var.P();
            return true;
        }

        private void j(i0 i0Var, boolean z10, Rect rect, int[] iArr) {
            int iWidth = rect.width();
            int iHeight = rect.height();
            int i10 = !z10 ? 1 : 0;
            int i11 = i10 * iWidth;
            C0851a c0851a = new C0851a();
            while (true) {
                int i12 = 0;
                do {
                    k(i0Var, iWidth, c0851a);
                    int iMin = Math.min(c0851a.f69000b, iWidth - i12);
                    if (iMin > 0) {
                        int i13 = i11 + iMin;
                        Arrays.fill(iArr, i11, i13, this.f68990a[c0851a.f68999a]);
                        i12 += iMin;
                        i11 = i13;
                    }
                } while (i12 < iWidth);
                i10 += 2;
                if (i10 >= iHeight) {
                    return;
                }
                i11 = i10 * iWidth;
                i0Var.c();
            }
        }

        private static void k(i0 i0Var, int i10, C0851a c0851a) {
            int iH = 0;
            for (int i11 = 1; iH < i11 && i11 <= 64; i11 <<= 2) {
                if (i0Var.b() < 4) {
                    c0851a.f68999a = -1;
                    c0851a.f69000b = 0;
                    return;
                }
                iH = (iH << 4) | i0Var.h(4);
            }
            c0851a.f68999a = iH & 3;
            if (iH >= 4) {
                i10 = iH >> 2;
            }
            c0851a.f69000b = i10;
        }

        private static int n(int i10, int i11) {
            return (i10 & 16777215) | ((i11 * 17) << 24);
        }

        public u1.a a(j0 j0Var) {
            Rect rect;
            if (this.f68993d == null || !this.f68991b || !this.f68992c || (rect = this.f68996g) == null || this.f68997h == -1 || this.f68998i == -1 || rect.width() < 2 || this.f68996g.height() < 2) {
                return null;
            }
            Rect rect2 = this.f68996g;
            int[] iArr = new int[rect2.width() * rect2.height()];
            i0 i0Var = new i0();
            j0Var.W(this.f68997h);
            i0Var.m(j0Var);
            j(i0Var, true, rect2, iArr);
            j0Var.W(this.f68998i);
            i0Var.m(j0Var);
            j(i0Var, false, rect2, iArr);
            return new u1.a.b().f(Bitmap.createBitmap(iArr, rect2.width(), rect2.height(), Bitmap.Config.ARGB_8888)).k(rect2.left / this.f68994e).l(0).h(rect2.top / this.f68995f, 0).i(0).n(rect2.width() / this.f68994e).g(rect2.height() / this.f68995f).a();
        }

        public void i(String str) {
            for (String str2 : a1.o1(str.trim(), "\\r?\\n")) {
                if (str2.startsWith("palette: ")) {
                    String[] strArrO1 = a1.o1(str2.substring(9), ",");
                    this.f68993d = new int[strArrO1.length];
                    for (int i10 = 0; i10 < strArrO1.length; i10++) {
                        this.f68993d[i10] = c(strArrO1[i10].trim());
                    }
                } else if (str2.startsWith("size: ")) {
                    String[] strArrO2 = a1.o1(str2.substring(6).trim(), "x");
                    if (strArrO2.length == 2) {
                        try {
                            this.f68994e = Integer.parseInt(strArrO2[0]);
                            this.f68995f = Integer.parseInt(strArrO2[1]);
                            this.f68991b = true;
                        } catch (RuntimeException e10) {
                            u.i("VobsubParser", "Parsing IDX failed", e10);
                        }
                    }
                }
            }
        }

        public void l(j0 j0Var) {
            int[] iArr = this.f68993d;
            if (iArr == null || !this.f68991b) {
                return;
            }
            j0Var.X(j0Var.P() - 2);
            d(iArr, j0Var, j0Var.P());
        }

        public void m() {
            this.f68992c = false;
            this.f68996g = null;
            this.f68997h = -1;
            this.f68998i = -1;
        }
    }

    public a(List list) {
        b bVar = new b();
        this.f68988c = bVar;
        bVar.i(new String((byte[]) list.get(0), StandardCharsets.UTF_8));
    }

    private u1.a d() {
        if (this.f68989d == null) {
            this.f68989d = new Inflater();
        }
        if (a1.P0(this.f68986a, this.f68987b, this.f68989d)) {
            this.f68986a.U(this.f68987b.e(), this.f68987b.g());
        }
        this.f68988c.m();
        int iA = this.f68986a.a();
        if (iA < 2 || this.f68986a.P() != iA) {
            return null;
        }
        this.f68988c.l(this.f68986a);
        return this.f68988c.a(this.f68986a);
    }

    @Override
    public k a(byte[] bArr, int i10, int i11) {
        return r.a(this, bArr, i10, i11);
    }

    @Override
    public void b(byte[] bArr, int i10, int i11, s.b bVar, m mVar) {
        this.f68986a.U(bArr, i11 + i10);
        this.f68986a.W(i10);
        u1.a aVarD = d();
        mVar.accept(new e(aVarD != null ? ImmutableList.of(aVarD) : ImmutableList.of(), C.TIME_UNSET, 5000000L));
    }

    @Override
    public int c() {
        return 2;
    }

    @Override
    public void reset() {
        r.b(this);
    }
}
