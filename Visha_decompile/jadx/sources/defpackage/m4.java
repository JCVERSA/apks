package defpackage;

import androidx.media3.common.C;
import com.google.android.exoplayer2.k;
import org.mozilla.classfile.ByteCode;

public final class m4 implements m83 {
    public final pw7 a;
    public final qw7 b;
    public final String c;
    public String d;
    public fva e;
    public int f;
    public int g;
    public boolean h;
    public long i;
    public k j;
    public int k;
    public long l;

    public m4() {
        this(null);
    }

    @Override
    public void a(qw7 qw7Var) {
        zi.i(this.e);
        while (qw7Var.a() > 0) {
            int i = this.f;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int iMin = Math.min(qw7Var.a(), this.k - this.g);
                        this.e.d(qw7Var, iMin);
                        int i2 = this.g + iMin;
                        this.g = i2;
                        int i3 = this.k;
                        if (i2 == i3) {
                            long j = this.l;
                            if (j != C.TIME_UNSET) {
                                this.e.e(j, 1, i3, 0, null);
                                this.l += this.i;
                            }
                            this.f = 0;
                        }
                    }
                } else if (d(qw7Var, this.b.d(), 128)) {
                    e();
                    this.b.O(0);
                    this.e.d(this.b, 128);
                    this.f = 2;
                }
            } else if (f(qw7Var)) {
                this.f = 1;
                this.b.d()[0] = ByteCode.T_LONG;
                this.b.d()[1] = 119;
                this.g = 2;
            }
        }
    }

    @Override
    public void b() {
    }

    @Override
    public void c(qk3 qk3Var, nab.d dVar) {
        dVar.a();
        this.d = dVar.b();
        this.e = qk3Var.track(dVar.c(), 1);
    }

    public final boolean d(qw7 qw7Var, byte[] bArr, int i) {
        int iMin = Math.min(qw7Var.a(), i - this.g);
        qw7Var.j(bArr, this.g, iMin);
        int i2 = this.g + iMin;
        this.g = i2;
        return i2 == i;
    }

    public final void e() {
        this.a.p(0);
        n4.b bVarE = n4.e(this.a);
        k kVar = this.j;
        if (kVar == null || bVarE.d != kVar.z || bVarE.c != kVar.A || !blb.c(bVarE.a, kVar.m)) {
            k kVarE = new k.b().S(this.d).e0(bVarE.a).H(bVarE.d).f0(bVarE.c).V(this.c).E();
            this.j = kVarE;
            this.e.b(kVarE);
        }
        this.k = bVarE.e;
        this.i = (((long) bVarE.f) * 1000000) / ((long) this.j.A);
    }

    public final boolean f(qw7 qw7Var) {
        while (true) {
            if (qw7Var.a() <= 0) {
                return false;
            }
            if (this.h) {
                int iC = qw7Var.C();
                if (iC == 119) {
                    this.h = false;
                    return true;
                }
                this.h = iC == 11;
            } else {
                this.h = qw7Var.C() == 11;
            }
        }
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
        this.h = false;
        this.l = C.TIME_UNSET;
    }

    public m4(String str) {
        pw7 pw7Var = new pw7(new byte[128]);
        this.a = pw7Var;
        this.b = new qw7(pw7Var.a);
        this.f = 0;
        this.l = C.TIME_UNSET;
        this.c = str;
    }
}
