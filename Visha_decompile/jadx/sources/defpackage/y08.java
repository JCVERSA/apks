package defpackage;

import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;

public final class y08 extends rm9 {
    public final qw7 o;
    public final qw7 p;
    public final a q;
    public Inflater r;

    public static final class a {
        public final qw7 a = new qw7();
        public final int[] b = new int[256];
        public boolean c;
        public int d;
        public int e;
        public int f;
        public int g;
        public int h;
        public int i;

        public jm1 d() {
            int iC;
            if (this.d == 0 || this.e == 0 || this.h == 0 || this.i == 0 || this.a.f() == 0 || this.a.e() != this.a.f() || !this.c) {
                return null;
            }
            this.a.O(0);
            int i = this.h * this.i;
            int[] iArr = new int[i];
            int i2 = 0;
            while (i2 < i) {
                int iC2 = this.a.C();
                if (iC2 != 0) {
                    iC = i2 + 1;
                    iArr[i2] = this.b[iC2];
                } else {
                    int iC3 = this.a.C();
                    if (iC3 != 0) {
                        iC = ((iC3 & 64) == 0 ? iC3 & 63 : ((iC3 & 63) << 8) | this.a.C()) + i2;
                        Arrays.fill(iArr, i2, iC, (iC3 & 128) == 0 ? 0 : this.b[this.a.C()]);
                    }
                }
                i2 = iC;
            }
            return new jm1.b().f(Bitmap.createBitmap(iArr, this.h, this.i, Bitmap.Config.ARGB_8888)).k(this.f / this.d).l(0).h(this.g / this.e, 0).i(0).n(this.h / this.d).g(this.i / this.e).a();
        }

        public final void e(qw7 qw7Var, int i) {
            int iF;
            if (i < 4) {
                return;
            }
            qw7Var.P(3);
            int i2 = i - 4;
            if ((qw7Var.C() & 128) != 0) {
                if (i2 < 7 || (iF = qw7Var.F()) < 4) {
                    return;
                }
                this.h = qw7Var.I();
                this.i = qw7Var.I();
                this.a.K(iF - 4);
                i2 = i - 11;
            }
            int iE = this.a.e();
            int iF2 = this.a.f();
            if (iE >= iF2 || i2 <= 0) {
                return;
            }
            int iMin = Math.min(i2, iF2 - iE);
            qw7Var.j(this.a.d(), iE, iMin);
            this.a.O(iE + iMin);
        }

        public final void f(qw7 qw7Var, int i) {
            if (i < 19) {
                return;
            }
            this.d = qw7Var.I();
            this.e = qw7Var.I();
            qw7Var.P(11);
            this.f = qw7Var.I();
            this.g = qw7Var.I();
        }

        public final void g(qw7 qw7Var, int i) {
            if (i % 5 != 2) {
                return;
            }
            qw7Var.P(2);
            Arrays.fill(this.b, 0);
            int i2 = i / 5;
            for (int i3 = 0; i3 < i2; i3++) {
                int iC = qw7Var.C();
                int iC2 = qw7Var.C();
                int iC3 = qw7Var.C();
                int iC4 = qw7Var.C();
                double d = iC2;
                double d2 = iC3 - 128;
                double d3 = iC4 - 128;
                this.b[iC] = (blb.p((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 0, 255) << 8) | (qw7Var.C() << 24) | (blb.p((int) ((1.402d * d2) + d), 0, 255) << 16) | blb.p((int) (d + (d3 * 1.772d)), 0, 255);
            }
            this.c = true;
        }

        public void h() {
            this.d = 0;
            this.e = 0;
            this.f = 0;
            this.g = 0;
            this.h = 0;
            this.i = 0;
            this.a.K(0);
            this.c = false;
        }
    }

    public y08() {
        super("PgsDecoder");
        this.o = new qw7();
        this.p = new qw7();
        this.q = new a();
    }

    public static jm1 y(qw7 qw7Var, a aVar) {
        int iF = qw7Var.f();
        int iC = qw7Var.C();
        int I = qw7Var.I();
        int iE = qw7Var.e() + I;
        jm1 jm1VarD = null;
        if (iE > iF) {
            qw7Var.O(iF);
            return null;
        }
        if (iC != 128) {
            switch (iC) {
                case 20:
                    aVar.g(qw7Var, I);
                    break;
                case 21:
                    aVar.e(qw7Var, I);
                    break;
                case 22:
                    aVar.f(qw7Var, I);
                    break;
            }
        } else {
            jm1VarD = aVar.d();
            aVar.h();
        }
        qw7Var.O(iE);
        return jm1VarD;
    }

    @Override
    public l2a v(byte[] bArr, int i, boolean z) {
        this.o.M(bArr, i);
        x(this.o);
        this.q.h();
        ArrayList arrayList = new ArrayList();
        while (this.o.a() >= 3) {
            jm1 jm1VarY = y(this.o, this.q);
            if (jm1VarY != null) {
                arrayList.add(jm1VarY);
            }
        }
        return new z08(Collections.unmodifiableList(arrayList));
    }

    public final void x(qw7 qw7Var) {
        if (qw7Var.a() <= 0 || qw7Var.h() != 120) {
            return;
        }
        if (this.r == null) {
            this.r = new Inflater();
        }
        if (blb.j0(qw7Var, this.p, this.r)) {
            qw7Var.M(this.p.d(), this.p.f());
        }
    }
}
