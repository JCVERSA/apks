package defpackage;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.exoplayer2.k;

public final class r4 implements m83 {
    public final pw7 a;
    public final qw7 b;
    public final String c;
    public String d;
    public fva e;
    public int f;
    public int g;
    public boolean h;
    public boolean i;
    public long j;
    public k k;
    public int l;
    public long m;

    public r4() {
        this(null);
    }

    private boolean d(qw7 qw7Var, byte[] bArr, int i) {
        int iMin = Math.min(qw7Var.a(), i - this.g);
        qw7Var.j(bArr, this.g, iMin);
        int i2 = this.g + iMin;
        this.g = i2;
        return i2 == i;
    }

    private void e() {
        this.a.p(0);
        s4.b bVarD = s4.d(this.a);
        k kVar = this.k;
        if (kVar == null || bVarD.c != kVar.z || bVarD.b != kVar.A || !MimeTypes.AUDIO_AC4.equals(kVar.m)) {
            k kVarE = new k.b().S(this.d).e0(MimeTypes.AUDIO_AC4).H(bVarD.c).f0(bVarD.b).V(this.c).E();
            this.k = kVarE;
            this.e.b(kVarE);
        }
        this.l = bVarD.d;
        this.j = (((long) bVarD.e) * 1000000) / ((long) this.k.A);
    }

    private boolean f(qw7 qw7Var) {
        while (true) {
            if (qw7Var.a() <= 0) {
                return false;
            }
            if (this.h) {
                int iC = qw7Var.C();
                this.h = iC == 172;
                if (iC == 64 || iC == 65) {
                    this.i = iC == 65;
                    return true;
                }
            } else {
                this.h = qw7Var.C() == 172;
            }
        }
    }

    @Override
    public void a(qw7 qw7Var) {
        zi.i(this.e);
        while (qw7Var.a() > 0) {
            int i = this.f;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int iMin = Math.min(qw7Var.a(), this.l - this.g);
                        this.e.d(qw7Var, iMin);
                        int i2 = this.g + iMin;
                        this.g = i2;
                        int i3 = this.l;
                        if (i2 == i3) {
                            long j = this.m;
                            if (j != C.TIME_UNSET) {
                                this.e.e(j, 1, i3, 0, null);
                                this.m += this.j;
                            }
                            this.f = 0;
                        }
                    }
                } else if (d(qw7Var, this.b.d(), 16)) {
                    e();
                    this.b.O(0);
                    this.e.d(this.b, 16);
                    this.f = 2;
                }
            } else if (f(qw7Var)) {
                this.f = 1;
                this.b.d()[0] = -84;
                this.b.d()[1] = (byte) (this.i ? 65 : 64);
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

    @Override
    public void packetStarted(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.m = j;
        }
    }

    @Override
    public void seek() {
        this.f = 0;
        this.g = 0;
        this.h = false;
        this.i = false;
        this.m = C.TIME_UNSET;
    }

    public r4(String str) {
        pw7 pw7Var = new pw7(new byte[16]);
        this.a = pw7Var;
        this.b = new qw7(pw7Var.a);
        this.f = 0;
        this.g = 0;
        this.h = false;
        this.i = false;
        this.m = C.TIME_UNSET;
        this.c = str;
    }
}
