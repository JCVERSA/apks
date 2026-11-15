package s9;

import com.google.android.exoplayer2.p1;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class f implements m {

    private final com.google.android.exoplayer2.util.c0 f71666a;

    private final com.google.android.exoplayer2.util.d0 f71667b;

    private final String f71668c;

    private String f71669d;

    private i9.e0 f71670e;

    private int f71671f;

    private int f71672g;

    private boolean f71673h;

    private boolean f71674i;

    private long f71675j;

    private p1 f71676k;

    private int f71677l;

    private long f71678m;

    public f() {
        this(null);
    }

    private boolean a(com.google.android.exoplayer2.util.d0 d0Var, byte[] bArr, int i10) {
        int iMin = Math.min(d0Var.a(), i10 - this.f71672g);
        d0Var.j(bArr, this.f71672g, iMin);
        int i11 = this.f71672g + iMin;
        this.f71672g = i11;
        return i11 == i10;
    }

    private void e() {
        this.f71666a.p(0);
        com.google.android.exoplayer2.audio.c.b bVarD = com.google.android.exoplayer2.audio.c.d(this.f71666a);
        p1 p1Var = this.f71676k;
        if (p1Var == null || bVarD.f23939c != p1Var.f24914y || bVarD.f23938b != p1Var.f24915z || !"audio/ac4".equals(p1Var.f24901l)) {
            p1 p1VarE = new p1.b().S(this.f71669d).e0("audio/ac4").H(bVarD.f23939c).f0(bVarD.f23938b).V(this.f71668c).E();
            this.f71676k = p1VarE;
            this.f71670e.d(p1VarE);
        }
        this.f71677l = bVarD.f23940d;
        this.f71675j = (((long) bVarD.f23941e) * 1000000) / ((long) this.f71676k.f24915z);
    }

    private boolean f(com.google.android.exoplayer2.util.d0 d0Var) {
        while (true) {
            if (d0Var.a() <= 0) {
                return false;
            }
            if (this.f71673h) {
                int iD = d0Var.D();
                this.f71673h = iD == 172;
                if (iD == 64 || iD == 65) {
                    this.f71674i = iD == 65;
                    return true;
                }
            } else {
                this.f71673h = d0Var.D() == 172;
            }
        }
    }

    @Override
    public void b(com.google.android.exoplayer2.util.d0 d0Var) {
        com.google.android.exoplayer2.util.a.i(this.f71670e);
        while (d0Var.a() > 0) {
            int i10 = this.f71671f;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        int iMin = Math.min(d0Var.a(), this.f71677l - this.f71672g);
                        this.f71670e.c(d0Var, iMin);
                        int i11 = this.f71672g + iMin;
                        this.f71672g = i11;
                        int i12 = this.f71677l;
                        if (i11 == i12) {
                            long j10 = this.f71678m;
                            if (j10 != C.TIME_UNSET) {
                                this.f71670e.e(j10, 1, i12, 0, null);
                                this.f71678m += this.f71675j;
                            }
                            this.f71671f = 0;
                        }
                    }
                } else if (a(d0Var, this.f71667b.d(), 16)) {
                    e();
                    this.f71667b.P(0);
                    this.f71670e.c(this.f71667b, 16);
                    this.f71671f = 2;
                }
            } else if (f(d0Var)) {
                this.f71671f = 1;
                this.f71667b.d()[0] = -84;
                this.f71667b.d()[1] = (byte) (this.f71674i ? 65 : 64);
                this.f71672g = 2;
            }
        }
    }

    @Override
    public void c(long j10, int i10) {
        if (j10 != C.TIME_UNSET) {
            this.f71678m = j10;
        }
    }

    @Override
    public void d(i9.n nVar, i0.d dVar) {
        dVar.a();
        this.f71669d = dVar.b();
        this.f71670e = nVar.track(dVar.c(), 1);
    }

    @Override
    public void seek() {
        this.f71671f = 0;
        this.f71672g = 0;
        this.f71673h = false;
        this.f71674i = false;
        this.f71678m = C.TIME_UNSET;
    }

    public f(String str) {
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(new byte[16]);
        this.f71666a = c0Var;
        this.f71667b = new com.google.android.exoplayer2.util.d0(c0Var.f26788a);
        this.f71671f = 0;
        this.f71672g = 0;
        this.f71673h = false;
        this.f71674i = false;
        this.f71678m = C.TIME_UNSET;
        this.f71668c = str;
    }

    @Override
    public void packetFinished() {
    }
}
