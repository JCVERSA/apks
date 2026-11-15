package defpackage;

import androidx.media3.common.C;
import com.google.android.exoplayer2.k;

public final class tr6 implements m83 {
    public final qw7 a;
    public final ur6.a b;
    public final String c;
    public fva d;
    public String e;
    public int f;
    public int g;
    public boolean h;
    public boolean i;
    public long j;
    public int k;
    public long l;

    public tr6() {
        this(null);
    }

    @Override
    public void a(qw7 qw7Var) {
        zi.i(this.d);
        while (qw7Var.a() > 0) {
            int i = this.f;
            if (i == 0) {
                d(qw7Var);
            } else if (i == 1) {
                f(qw7Var);
            } else {
                if (i != 2) {
                    throw new IllegalStateException();
                }
                e(qw7Var);
            }
        }
    }

    @Override
    public void b() {
    }

    @Override
    public void c(qk3 qk3Var, nab.d dVar) {
        dVar.a();
        this.e = dVar.b();
        this.d = qk3Var.track(dVar.c(), 1);
    }

    public final void d(qw7 qw7Var) {
        byte[] bArrD = qw7Var.d();
        int iF = qw7Var.f();
        for (int iE = qw7Var.e(); iE < iF; iE++) {
            byte b = bArrD[iE];
            boolean z = (b & 255) == 255;
            boolean z2 = this.i && (b & 224) == 224;
            this.i = z;
            if (z2) {
                qw7Var.O(iE + 1);
                this.i = false;
                this.a.d()[1] = bArrD[iE];
                this.g = 2;
                this.f = 1;
                return;
            }
        }
        qw7Var.O(iF);
    }

    public final void e(qw7 qw7Var) {
        int iMin = Math.min(qw7Var.a(), this.k - this.g);
        this.d.d(qw7Var, iMin);
        int i = this.g + iMin;
        this.g = i;
        int i2 = this.k;
        if (i < i2) {
            return;
        }
        long j = this.l;
        if (j != C.TIME_UNSET) {
            this.d.e(j, 1, i2, 0, null);
            this.l += this.j;
        }
        this.g = 0;
        this.f = 0;
    }

    public final void f(qw7 qw7Var) {
        int iMin = Math.min(qw7Var.a(), 4 - this.g);
        qw7Var.j(this.a.d(), this.g, iMin);
        int i = this.g + iMin;
        this.g = i;
        if (i < 4) {
            return;
        }
        this.a.O(0);
        if (!this.b.a(this.a.n())) {
            this.g = 0;
            this.f = 1;
            return;
        }
        ur6.a aVar = this.b;
        this.k = aVar.c;
        if (!this.h) {
            this.j = (((long) aVar.g) * 1000000) / ((long) aVar.d);
            this.d.b(new k.b().S(this.e).e0(this.b.b).W(4096).H(this.b.e).f0(this.b.d).V(this.c).E());
            this.h = true;
        }
        this.a.O(0);
        this.d.d(this.a, 4);
        this.f = 2;
    }

    @Override
    public void packetStarted(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.l = j;
        }
    }

    @Override
    public void seek() {
        this.f = 0;
        this.g = 0;
        this.i = false;
        this.l = C.TIME_UNSET;
    }

    public tr6(String str) {
        this.f = 0;
        qw7 qw7Var = new qw7(4);
        this.a = qw7Var;
        qw7Var.d()[0] = -1;
        this.b = new ur6.a();
        this.l = C.TIME_UNSET;
        this.c = str;
    }
}
