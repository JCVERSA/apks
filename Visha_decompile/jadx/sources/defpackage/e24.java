package defpackage;

import androidx.media3.common.C;
import com.google.android.exoplayer2.extractor.flv.a;
import com.google.android.exoplayer2.extractor.flv.b;

public final class e24 implements nk3 {
    public static final uk3 q = new uk3() {
        @Override
        public final nk3[] createExtractors() {
            return e24.g();
        }
    };
    public qk3 f;
    public boolean h;
    public long i;
    public int j;
    public int k;
    public int l;
    public long m;
    public boolean n;
    public a o;
    public b p;
    public final qw7 a = new qw7(4);
    public final qw7 b = new qw7(9);
    public final qw7 c = new qw7(11);
    public final qw7 d = new qw7();
    public final g39 e = new g39();
    public int g = 1;

    public static nk3[] g() {
        return new nk3[]{new e24()};
    }

    @Override
    public void a(qk3 qk3Var) {
        this.f = qk3Var;
    }

    @Override
    public int b(pk3 pk3Var, id8 id8Var) {
        zi.i(this.f);
        while (true) {
            int i = this.g;
            if (i != 1) {
                if (i == 2) {
                    l(pk3Var);
                } else if (i != 3) {
                    if (i != 4) {
                        throw new IllegalStateException();
                    }
                    if (j(pk3Var)) {
                        return 0;
                    }
                } else if (!k(pk3Var)) {
                    return -1;
                }
            } else if (!i(pk3Var)) {
                return -1;
            }
        }
    }

    @Override
    public boolean c(pk3 pk3Var) {
        pk3Var.peekFully(this.a.d(), 0, 3);
        this.a.O(0);
        if (this.a.F() != 4607062) {
            return false;
        }
        pk3Var.peekFully(this.a.d(), 0, 2);
        this.a.O(0);
        if ((this.a.I() & 250) != 0) {
            return false;
        }
        pk3Var.peekFully(this.a.d(), 0, 4);
        this.a.O(0);
        int iN = this.a.n();
        pk3Var.resetPeekPosition();
        pk3Var.advancePeekPosition(iN);
        pk3Var.peekFully(this.a.d(), 0, 4);
        this.a.O(0);
        return this.a.n() == 0;
    }

    public final void e() {
        if (this.n) {
            return;
        }
        this.f.d(new ja9.b(C.TIME_UNSET));
        this.n = true;
    }

    public final long f() {
        if (this.h) {
            return this.i + this.m;
        }
        if (this.e.d() == C.TIME_UNSET) {
            return 0L;
        }
        return this.m;
    }

    public final qw7 h(pk3 pk3Var) {
        if (this.l > this.d.b()) {
            qw7 qw7Var = this.d;
            qw7Var.M(new byte[Math.max(qw7Var.b() * 2, this.l)], 0);
        } else {
            this.d.O(0);
        }
        this.d.N(this.l);
        pk3Var.readFully(this.d.d(), 0, this.l);
        return this.d;
    }

    public final boolean i(pk3 pk3Var) {
        if (!pk3Var.readFully(this.b.d(), 0, 9, true)) {
            return false;
        }
        this.b.O(0);
        this.b.P(4);
        int iC = this.b.C();
        boolean z = (iC & 4) != 0;
        boolean z2 = (iC & 1) != 0;
        if (z && this.o == null) {
            this.o = new a(this.f.track(8, 1));
        }
        if (z2 && this.p == null) {
            this.p = new b(this.f.track(9, 2));
        }
        this.f.endTracks();
        this.j = this.b.n() - 5;
        this.g = 2;
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0087  */
    /* JADX WARN: Code duplicated, block: B:27:0x008b  */
    public final boolean j(pk3 pk3Var) {
        boolean zA;
        boolean z;
        long j;
        long jF = f();
        int i = this.k;
        if (i == 8 && this.o != null) {
            e();
            zA = this.o.a(h(pk3Var), jF);
        } else {
            if (i != 9 || this.p == null) {
                if (i != 18 || this.n) {
                    pk3Var.skipFully(this.l);
                    zA = false;
                    z = false;
                } else {
                    zA = this.e.a(h(pk3Var), jF);
                    long jD = this.e.d();
                    if (jD != C.TIME_UNSET) {
                        this.f.d(new jz4(this.e.e(), this.e.f(), jD));
                        this.n = true;
                    }
                }
                if (!this.h && zA) {
                    this.h = true;
                    if (this.e.d() == C.TIME_UNSET) {
                        j = -this.m;
                    } else {
                        j = 0;
                    }
                    this.i = j;
                }
                this.j = 4;
                this.g = 2;
                return z;
            }
            e();
            zA = this.p.a(h(pk3Var), jF);
        }
        z = true;
        if (!this.h) {
            this.h = true;
            if (this.e.d() == C.TIME_UNSET) {
                j = -this.m;
            } else {
                j = 0;
            }
            this.i = j;
        }
        this.j = 4;
        this.g = 2;
        return z;
    }

    public final boolean k(pk3 pk3Var) {
        if (!pk3Var.readFully(this.c.d(), 0, 11, true)) {
            return false;
        }
        this.c.O(0);
        this.k = this.c.C();
        this.l = this.c.F();
        this.m = this.c.F();
        this.m = (((long) (this.c.C() << 24)) | this.m) * 1000;
        this.c.P(3);
        this.g = 4;
        return true;
    }

    public final void l(pk3 pk3Var) {
        pk3Var.skipFully(this.j);
        this.j = 0;
        this.g = 3;
    }

    @Override
    public void release() {
    }

    @Override
    public void seek(long j, long j2) {
        if (j == 0) {
            this.g = 1;
            this.h = false;
        } else {
            this.g = 3;
        }
        this.j = 0;
    }
}
