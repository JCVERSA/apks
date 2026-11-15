package defpackage;

import android.util.SparseArray;
import androidx.core.view.InputDeviceCompat;
import androidx.media3.common.C;

public final class fk8 implements nk3 {
    public static final uk3 l = new uk3() {
        @Override
        public final nk3[] createExtractors() {
            return fk8.e();
        }
    };
    public final poa a;
    public final SparseArray b;
    public final qw7 c;
    public final ck8 d;
    public boolean e;
    public boolean f;
    public boolean g;
    public long h;
    public bk8 i;
    public qk3 j;
    public boolean k;

    public static final class a {
        public final m83 a;
        public final poa b;
        public final pw7 c = new pw7(new byte[64]);
        public boolean d;
        public boolean e;
        public boolean f;
        public int g;
        public long h;

        public a(m83 m83Var, poa poaVar) {
            this.a = m83Var;
            this.b = poaVar;
        }

        public void a(qw7 qw7Var) {
            qw7Var.j(this.c.a, 0, 3);
            this.c.p(0);
            b();
            qw7Var.j(this.c.a, 0, this.g);
            this.c.p(0);
            c();
            this.a.packetStarted(this.h, 4);
            this.a.a(qw7Var);
            this.a.b();
        }

        public final void b() {
            this.c.r(8);
            this.d = this.c.g();
            this.e = this.c.g();
            this.c.r(6);
            this.g = this.c.h(8);
        }

        public final void c() {
            this.h = 0L;
            if (this.d) {
                this.c.r(4);
                long jH = ((long) this.c.h(3)) << 30;
                this.c.r(1);
                long jH2 = jH | ((long) (this.c.h(15) << 15));
                this.c.r(1);
                long jH3 = jH2 | ((long) this.c.h(15));
                this.c.r(1);
                if (!this.f && this.e) {
                    this.c.r(4);
                    long jH4 = ((long) this.c.h(3)) << 30;
                    this.c.r(1);
                    long jH5 = jH4 | ((long) (this.c.h(15) << 15));
                    this.c.r(1);
                    long jH6 = jH5 | ((long) this.c.h(15));
                    this.c.r(1);
                    this.b.b(jH6);
                    this.f = true;
                }
                this.h = this.b.b(jH3);
            }
        }

        public void d() {
            this.f = false;
            this.a.seek();
        }
    }

    public fk8() {
        this(new poa(0L));
    }

    public static nk3[] e() {
        return new nk3[]{new fk8()};
    }

    @Override
    public void a(qk3 qk3Var) {
        this.j = qk3Var;
    }

    @Override
    public int b(pk3 pk3Var, id8 id8Var) {
        m83 ok4Var;
        zi.i(this.j);
        long length = pk3Var.getLength();
        if (length != -1 && !this.d.e()) {
            return this.d.g(pk3Var, id8Var);
        }
        f(length);
        bk8 bk8Var = this.i;
        if (bk8Var != null && bk8Var.d()) {
            return this.i.c(pk3Var, id8Var);
        }
        pk3Var.resetPeekPosition();
        long peekPosition = length != -1 ? length - pk3Var.getPeekPosition() : -1L;
        if ((peekPosition != -1 && peekPosition < 4) || !pk3Var.peekFully(this.c.d(), 0, 4, true)) {
            return -1;
        }
        this.c.O(0);
        int iN = this.c.n();
        if (iN == 441) {
            return -1;
        }
        if (iN == 442) {
            pk3Var.peekFully(this.c.d(), 0, 10);
            this.c.O(9);
            pk3Var.skipFully((this.c.C() & 7) + 14);
            return 0;
        }
        if (iN == 443) {
            pk3Var.peekFully(this.c.d(), 0, 2);
            this.c.O(0);
            pk3Var.skipFully(this.c.I() + 6);
            return 0;
        }
        if (((iN & InputDeviceCompat.SOURCE_ANY) >> 8) != 1) {
            pk3Var.skipFully(1);
            return 0;
        }
        int i = iN & 255;
        a aVar = (a) this.b.get(i);
        if (!this.e) {
            if (aVar == null) {
                if (i == 189) {
                    ok4Var = new m4();
                    this.f = true;
                    this.h = pk3Var.getPosition();
                } else if ((iN & 224) == 192) {
                    ok4Var = new tr6();
                    this.f = true;
                    this.h = pk3Var.getPosition();
                } else if ((iN & 240) == 224) {
                    ok4Var = new ok4();
                    this.g = true;
                    this.h = pk3Var.getPosition();
                } else {
                    ok4Var = null;
                }
                if (ok4Var != null) {
                    ok4Var.c(this.j, new nab.d(i, 256));
                    aVar = new a(ok4Var, this.a);
                    this.b.put(i, aVar);
                }
            }
            if (pk3Var.getPosition() > ((this.f && this.g) ? this.h + 8192 : 1048576L)) {
                this.e = true;
                this.j.endTracks();
            }
        }
        pk3Var.peekFully(this.c.d(), 0, 2);
        this.c.O(0);
        int I = this.c.I() + 6;
        if (aVar == null) {
            pk3Var.skipFully(I);
        } else {
            this.c.K(I);
            pk3Var.readFully(this.c.d(), 0, I);
            this.c.O(6);
            aVar.a(this.c);
            qw7 qw7Var = this.c;
            qw7Var.N(qw7Var.b());
        }
        return 0;
    }

    @Override
    public boolean c(pk3 pk3Var) {
        byte[] bArr = new byte[14];
        pk3Var.peekFully(bArr, 0, 14);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        pk3Var.advancePeekPosition(bArr[13] & 7);
        pk3Var.peekFully(bArr, 0, 3);
        return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
    }

    public final void f(long j) {
        if (this.k) {
            return;
        }
        this.k = true;
        if (this.d.c() == C.TIME_UNSET) {
            this.j.d(new ja9.b(this.d.c()));
            return;
        }
        bk8 bk8Var = new bk8(this.d.d(), this.d.c(), j);
        this.i = bk8Var;
        this.j.d(bk8Var.b());
    }

    @Override
    public void release() {
    }

    @Override
    public void seek(long j, long j2) {
        boolean z = this.a.e() == C.TIME_UNSET;
        if (!z) {
            long jC = this.a.c();
            z = (jC == C.TIME_UNSET || jC == 0 || jC == j2) ? false : true;
        }
        if (z) {
            this.a.g(j2);
        }
        bk8 bk8Var = this.i;
        if (bk8Var != null) {
            bk8Var.h(j2);
        }
        for (int i = 0; i < this.b.size(); i++) {
            ((a) this.b.valueAt(i)).d();
        }
    }

    public fk8(poa poaVar) {
        this.a = poaVar;
        this.c = new qw7(4096);
        this.b = new SparseArray();
        this.d = new ck8();
    }
}
