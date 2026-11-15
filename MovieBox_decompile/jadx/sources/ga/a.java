package ga;

import android.graphics.Bitmap;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import da.h;
import da.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;

public final class a extends h {

    private final d0 f60943o;

    private final d0 f60944p;

    private final C0737a f60945q;

    private Inflater f60946r;

    private static final class C0737a {

        private final d0 f60947a = new d0();

        private final int[] f60948b = new int[256];

        private boolean f60949c;

        private int f60950d;

        private int f60951e;

        private int f60952f;

        private int f60953g;

        private int f60954h;

        private int f60955i;

        public void e(d0 d0Var, int i10) {
            int iG;
            if (i10 < 4) {
                return;
            }
            d0Var.Q(3);
            int i11 = i10 - 4;
            if ((d0Var.D() & 128) != 0) {
                if (i11 < 7 || (iG = d0Var.G()) < 4) {
                    return;
                }
                this.f60954h = d0Var.J();
                this.f60955i = d0Var.J();
                this.f60947a.L(iG - 4);
                i11 = i10 - 11;
            }
            int iE = this.f60947a.e();
            int iF = this.f60947a.f();
            if (iE >= iF || i11 <= 0) {
                return;
            }
            int iMin = Math.min(i11, iF - iE);
            d0Var.j(this.f60947a.d(), iE, iMin);
            this.f60947a.P(iE + iMin);
        }

        public void f(d0 d0Var, int i10) {
            if (i10 < 19) {
                return;
            }
            this.f60950d = d0Var.J();
            this.f60951e = d0Var.J();
            d0Var.Q(11);
            this.f60952f = d0Var.J();
            this.f60953g = d0Var.J();
        }

        public void g(d0 d0Var, int i10) {
            if (i10 % 5 != 2) {
                return;
            }
            d0Var.Q(2);
            Arrays.fill(this.f60948b, 0);
            int i11 = i10 / 5;
            for (int i12 = 0; i12 < i11; i12++) {
                int iD = d0Var.D();
                int iD2 = d0Var.D();
                int iD3 = d0Var.D();
                int iD4 = d0Var.D();
                double d10 = iD2;
                double d11 = iD3 - 128;
                double d12 = iD4 - 128;
                this.f60948b[iD] = (p0.q((int) ((d10 - (0.34414d * d12)) - (d11 * 0.71414d)), 0, 255) << 8) | (d0Var.D() << 24) | (p0.q((int) ((1.402d * d11) + d10), 0, 255) << 16) | p0.q((int) (d10 + (d12 * 1.772d)), 0, 255);
            }
            this.f60949c = true;
        }

        public da.b d() {
            int iD;
            if (this.f60950d == 0 || this.f60951e == 0 || this.f60954h == 0 || this.f60955i == 0 || this.f60947a.f() == 0 || this.f60947a.e() != this.f60947a.f() || !this.f60949c) {
                return null;
            }
            this.f60947a.P(0);
            int i10 = this.f60954h * this.f60955i;
            int[] iArr = new int[i10];
            int i11 = 0;
            while (i11 < i10) {
                int iD2 = this.f60947a.D();
                if (iD2 != 0) {
                    iD = i11 + 1;
                    iArr[i11] = this.f60948b[iD2];
                } else {
                    int iD3 = this.f60947a.D();
                    if (iD3 != 0) {
                        iD = ((iD3 & 64) == 0 ? iD3 & 63 : ((iD3 & 63) << 8) | this.f60947a.D()) + i11;
                        Arrays.fill(iArr, i11, iD, (iD3 & 128) == 0 ? 0 : this.f60948b[this.f60947a.D()]);
                    }
                }
                i11 = iD;
            }
            return new da.b.C0703b().f(Bitmap.createBitmap(iArr, this.f60954h, this.f60955i, Bitmap.Config.ARGB_8888)).k(this.f60952f / this.f60950d).l(0).h(this.f60953g / this.f60951e, 0).i(0).n(this.f60954h / this.f60950d).g(this.f60955i / this.f60951e).a();
        }

        public void h() {
            this.f60950d = 0;
            this.f60951e = 0;
            this.f60952f = 0;
            this.f60953g = 0;
            this.f60954h = 0;
            this.f60955i = 0;
            this.f60947a.L(0);
            this.f60949c = false;
        }
    }

    public a() {
        super("PgsDecoder");
        this.f60943o = new d0();
        this.f60944p = new d0();
        this.f60945q = new C0737a();
    }

    private void x(d0 d0Var) {
        if (d0Var.a() <= 0 || d0Var.h() != 120) {
            return;
        }
        if (this.f60946r == null) {
            this.f60946r = new Inflater();
        }
        if (p0.r0(d0Var, this.f60944p, this.f60946r)) {
            d0Var.N(this.f60944p.d(), this.f60944p.f());
        }
    }

    private static da.b y(d0 d0Var, C0737a c0737a) {
        int iF = d0Var.f();
        int iD = d0Var.D();
        int iJ = d0Var.J();
        int iE = d0Var.e() + iJ;
        da.b bVarD = null;
        if (iE > iF) {
            d0Var.P(iF);
            return null;
        }
        if (iD != 128) {
            switch (iD) {
                case 20:
                    c0737a.g(d0Var, iJ);
                    break;
                case 21:
                    c0737a.e(d0Var, iJ);
                    break;
                case 22:
                    c0737a.f(d0Var, iJ);
                    break;
            }
        } else {
            bVarD = c0737a.d();
            c0737a.h();
        }
        d0Var.P(iE);
        return bVarD;
    }

    @Override
    protected i w(byte[] bArr, int i10, boolean z10) {
        this.f60943o.N(bArr, i10);
        x(this.f60943o);
        this.f60945q.h();
        ArrayList arrayList = new ArrayList();
        while (this.f60943o.a() >= 3) {
            da.b bVarY = y(this.f60943o, this.f60945q);
            if (bVarY != null) {
                arrayList.add(bVarY);
            }
        }
        return new b(Collections.unmodifiableList(arrayList));
    }
}
