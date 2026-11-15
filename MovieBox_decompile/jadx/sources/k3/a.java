package k3;

import android.graphics.Bitmap;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.m;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import h3.e;
import h3.k;
import h3.r;
import h3.s;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.zip.Inflater;

public final class a implements s {

    private final j0 f63722a = new j0();

    private final j0 f63723b = new j0();

    private final C0785a f63724c = new C0785a();

    private Inflater f63725d;

    private static final class C0785a {

        private final j0 f63726a = new j0();

        private final int[] f63727b = new int[256];

        private boolean f63728c;

        private int f63729d;

        private int f63730e;

        private int f63731f;

        private int f63732g;

        private int f63733h;

        private int f63734i;

        public void e(j0 j0Var, int i10) {
            int iK;
            if (i10 < 4) {
                return;
            }
            j0Var.X(3);
            int i11 = i10 - 4;
            if ((j0Var.H() & 128) != 0) {
                if (i11 < 7 || (iK = j0Var.K()) < 4) {
                    return;
                }
                this.f63733h = j0Var.P();
                this.f63734i = j0Var.P();
                this.f63726a.S(iK - 4);
                i11 = i10 - 11;
            }
            int iF = this.f63726a.f();
            int iG = this.f63726a.g();
            if (iF >= iG || i11 <= 0) {
                return;
            }
            int iMin = Math.min(i11, iG - iF);
            j0Var.l(this.f63726a.e(), iF, iMin);
            this.f63726a.W(iF + iMin);
        }

        public void f(j0 j0Var, int i10) {
            if (i10 < 19) {
                return;
            }
            this.f63729d = j0Var.P();
            this.f63730e = j0Var.P();
            j0Var.X(11);
            this.f63731f = j0Var.P();
            this.f63732g = j0Var.P();
        }

        public void g(j0 j0Var, int i10) {
            if (i10 % 5 != 2) {
                return;
            }
            j0Var.X(2);
            Arrays.fill(this.f63727b, 0);
            int i11 = i10 / 5;
            for (int i12 = 0; i12 < i11; i12++) {
                int iH = j0Var.H();
                int iH2 = j0Var.H();
                int iH3 = j0Var.H();
                int iH4 = j0Var.H();
                double d10 = iH2;
                double d11 = iH3 - 128;
                double d12 = iH4 - 128;
                this.f63727b[iH] = (a1.p((int) ((d10 - (0.34414d * d12)) - (d11 * 0.71414d)), 0, 255) << 8) | (j0Var.H() << 24) | (a1.p((int) ((1.402d * d11) + d10), 0, 255) << 16) | a1.p((int) (d10 + (d12 * 1.772d)), 0, 255);
            }
            this.f63728c = true;
        }

        public u1.a d() {
            int iH;
            if (this.f63729d == 0 || this.f63730e == 0 || this.f63733h == 0 || this.f63734i == 0 || this.f63726a.g() == 0 || this.f63726a.f() != this.f63726a.g() || !this.f63728c) {
                return null;
            }
            this.f63726a.W(0);
            int i10 = this.f63733h * this.f63734i;
            int[] iArr = new int[i10];
            int i11 = 0;
            while (i11 < i10) {
                int iH2 = this.f63726a.H();
                if (iH2 != 0) {
                    iH = i11 + 1;
                    iArr[i11] = this.f63727b[iH2];
                } else {
                    int iH3 = this.f63726a.H();
                    if (iH3 != 0) {
                        iH = ((iH3 & 64) == 0 ? iH3 & 63 : ((iH3 & 63) << 8) | this.f63726a.H()) + i11;
                        Arrays.fill(iArr, i11, iH, (iH3 & 128) == 0 ? this.f63727b[0] : this.f63727b[this.f63726a.H()]);
                    }
                }
                i11 = iH;
            }
            return new u1.a.b().f(Bitmap.createBitmap(iArr, this.f63733h, this.f63734i, Bitmap.Config.ARGB_8888)).k(this.f63731f / this.f63729d).l(0).h(this.f63732g / this.f63730e, 0).i(0).n(this.f63733h / this.f63729d).g(this.f63734i / this.f63730e).a();
        }

        public void h() {
            this.f63729d = 0;
            this.f63730e = 0;
            this.f63731f = 0;
            this.f63732g = 0;
            this.f63733h = 0;
            this.f63734i = 0;
            this.f63726a.S(0);
            this.f63728c = false;
        }
    }

    private static u1.a d(j0 j0Var, C0785a c0785a) {
        int iG = j0Var.g();
        int iH = j0Var.H();
        int iP = j0Var.P();
        int iF = j0Var.f() + iP;
        u1.a aVarD = null;
        if (iF > iG) {
            j0Var.W(iG);
            return null;
        }
        if (iH != 128) {
            switch (iH) {
                case 20:
                    c0785a.g(j0Var, iP);
                    break;
                case 21:
                    c0785a.e(j0Var, iP);
                    break;
                case 22:
                    c0785a.f(j0Var, iP);
                    break;
            }
        } else {
            aVarD = c0785a.d();
            c0785a.h();
        }
        j0Var.W(iF);
        return aVarD;
    }

    @Override
    public k a(byte[] bArr, int i10, int i11) {
        return r.a(this, bArr, i10, i11);
    }

    @Override
    public void b(byte[] bArr, int i10, int i11, s.b bVar, m mVar) {
        this.f63722a.U(bArr, i11 + i10);
        this.f63722a.W(i10);
        if (this.f63725d == null) {
            this.f63725d = new Inflater();
        }
        if (a1.P0(this.f63722a, this.f63723b, this.f63725d)) {
            this.f63722a.U(this.f63723b.e(), this.f63723b.g());
        }
        this.f63724c.h();
        ArrayList arrayList = new ArrayList();
        while (this.f63722a.a() >= 3) {
            u1.a aVarD = d(this.f63722a, this.f63724c);
            if (aVarD != null) {
                arrayList.add(aVarD);
            }
        }
        mVar.accept(new e(arrayList, C.TIME_UNSET, C.TIME_UNSET));
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
