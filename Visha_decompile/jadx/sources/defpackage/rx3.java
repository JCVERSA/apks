package defpackage;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;

public final class rx3 implements nk3 {
    public static final uk3 o = new uk3() {
        @Override
        public final nk3[] createExtractors() {
            return rx3.i();
        }
    };
    public final byte[] a;
    public final qw7 b;
    public final boolean c;
    public final sx3.a d;
    public qk3 e;
    public fva f;
    public int g;
    public Metadata h;
    public wx3 i;
    public int j;
    public int k;
    public ox3 l;
    public int m;
    public long n;

    public rx3() {
        this(0);
    }

    public static nk3[] i() {
        return new nk3[]{new rx3()};
    }

    @Override
    public void a(qk3 qk3Var) {
        this.e = qk3Var;
        this.f = qk3Var.track(0, 1);
        qk3Var.endTracks();
    }

    @Override
    public int b(pk3 pk3Var, id8 id8Var) throws ParserException {
        int i = this.g;
        if (i == 0) {
            l(pk3Var);
            return 0;
        }
        if (i == 1) {
            h(pk3Var);
            return 0;
        }
        if (i == 2) {
            n(pk3Var);
            return 0;
        }
        if (i == 3) {
            m(pk3Var);
            return 0;
        }
        if (i == 4) {
            f(pk3Var);
            return 0;
        }
        if (i == 5) {
            return k(pk3Var, id8Var);
        }
        throw new IllegalStateException();
    }

    @Override
    public boolean c(pk3 pk3Var) {
        tx3.c(pk3Var, false);
        return tx3.a(pk3Var);
    }

    public final long e(qw7 qw7Var, boolean z) {
        boolean zD;
        zi.e(this.i);
        int iE = qw7Var.e();
        while (iE <= qw7Var.f() - 16) {
            qw7Var.O(iE);
            if (sx3.d(qw7Var, this.i, this.k, this.d)) {
                qw7Var.O(iE);
                return this.d.a;
            }
            iE++;
        }
        if (!z) {
            qw7Var.O(iE);
            return -1L;
        }
        while (iE <= qw7Var.f() - this.j) {
            qw7Var.O(iE);
            try {
                zD = sx3.d(qw7Var, this.i, this.k, this.d);
            } catch (IndexOutOfBoundsException unused) {
                zD = false;
            }
            if (qw7Var.e() <= qw7Var.f() ? zD : false) {
                qw7Var.O(iE);
                return this.d.a;
            }
            iE++;
        }
        qw7Var.O(qw7Var.f());
        return -1L;
    }

    public final void f(pk3 pk3Var) {
        this.k = tx3.b(pk3Var);
        ((qk3) blb.j(this.e)).d(g(pk3Var.getPosition(), pk3Var.getLength()));
        this.g = 5;
    }

    public final ja9 g(long j, long j2) {
        zi.e(this.i);
        wx3 wx3Var = this.i;
        if (wx3Var.k != null) {
            return new vx3(wx3Var, j);
        }
        if (j2 == -1 || wx3Var.j <= 0) {
            return new ja9.b(wx3Var.f());
        }
        ox3 ox3Var = new ox3(wx3Var, this.k, j, j2);
        this.l = ox3Var;
        return ox3Var.b();
    }

    public final void h(pk3 pk3Var) {
        byte[] bArr = this.a;
        pk3Var.peekFully(bArr, 0, bArr.length);
        pk3Var.resetPeekPosition();
        this.g = 2;
    }

    public final void j() {
        ((fva) blb.j(this.f)).e((this.n * 1000000) / ((long) ((wx3) blb.j(this.i)).e), 1, this.m, 0, null);
    }

    public final int k(pk3 pk3Var, id8 id8Var) {
        boolean z;
        zi.e(this.f);
        zi.e(this.i);
        ox3 ox3Var = this.l;
        if (ox3Var != null && ox3Var.d()) {
            return this.l.c(pk3Var, id8Var);
        }
        if (this.n == -1) {
            this.n = sx3.i(pk3Var, this.i);
            return 0;
        }
        int iF = this.b.f();
        if (iF < 32768) {
            int i = pk3Var.read(this.b.d(), iF, 32768 - iF);
            z = i == -1;
            if (!z) {
                this.b.N(iF + i);
            } else if (this.b.a() == 0) {
                j();
                return -1;
            }
        } else {
            z = false;
        }
        int iE = this.b.e();
        int i2 = this.m;
        int i3 = this.j;
        if (i2 < i3) {
            qw7 qw7Var = this.b;
            qw7Var.P(Math.min(i3 - i2, qw7Var.a()));
        }
        long jE = e(this.b, z);
        int iE2 = this.b.e() - iE;
        this.b.O(iE);
        this.f.d(this.b, iE2);
        this.m += iE2;
        if (jE != -1) {
            j();
            this.m = 0;
            this.n = jE;
        }
        if (this.b.a() < 16) {
            int iA = this.b.a();
            System.arraycopy(this.b.d(), this.b.e(), this.b.d(), 0, iA);
            this.b.O(0);
            this.b.N(iA);
        }
        return 0;
    }

    public final void l(pk3 pk3Var) {
        this.h = tx3.d(pk3Var, !this.c);
        this.g = 1;
    }

    public final void m(pk3 pk3Var) {
        tx3.a aVar = new tx3.a(this.i);
        boolean zE = false;
        while (!zE) {
            zE = tx3.e(pk3Var, aVar);
            this.i = (wx3) blb.j(aVar.a);
        }
        zi.e(this.i);
        this.j = Math.max(this.i.c, 6);
        ((fva) blb.j(this.f)).b(this.i.g(this.a, this.h));
        this.g = 4;
    }

    public final void n(pk3 pk3Var) throws ParserException {
        tx3.i(pk3Var);
        this.g = 3;
    }

    @Override
    public void release() {
    }

    @Override
    public void seek(long j, long j2) {
        if (j == 0) {
            this.g = 0;
        } else {
            ox3 ox3Var = this.l;
            if (ox3Var != null) {
                ox3Var.h(j2);
            }
        }
        this.n = j2 != 0 ? -1L : 0L;
        this.m = 0;
        this.b.K(0);
    }

    public rx3(int i) {
        this.a = new byte[42];
        this.b = new qw7(new byte[32768], 0);
        this.c = (i & 1) != 0;
        this.d = new sx3.a();
        this.g = 0;
    }
}
