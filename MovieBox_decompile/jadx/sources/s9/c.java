package s9;

import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class c implements m {

    private final com.google.android.exoplayer2.util.c0 f71638a;

    private final com.google.android.exoplayer2.util.d0 f71639b;

    private final String f71640c;

    private String f71641d;

    private i9.e0 f71642e;

    private int f71643f;

    private int f71644g;

    private boolean f71645h;

    private long f71646i;

    private p1 f71647j;

    private int f71648k;

    private long f71649l;

    public c() {
        this(null);
    }

    private boolean a(com.google.android.exoplayer2.util.d0 d0Var, byte[] bArr, int i10) {
        int iMin = Math.min(d0Var.a(), i10 - this.f71644g);
        d0Var.j(bArr, this.f71644g, iMin);
        int i11 = this.f71644g + iMin;
        this.f71644g = i11;
        return i11 == i10;
    }

    private void e() {
        this.f71638a.p(0);
        com.google.android.exoplayer2.audio.b.C0341b c0341bE = com.google.android.exoplayer2.audio.b.e(this.f71638a);
        p1 p1Var = this.f71647j;
        if (p1Var == null || c0341bE.f23919d != p1Var.f24914y || c0341bE.f23918c != p1Var.f24915z || !p0.c(c0341bE.f23916a, p1Var.f24901l)) {
            p1 p1VarE = new p1.b().S(this.f71641d).e0(c0341bE.f23916a).H(c0341bE.f23919d).f0(c0341bE.f23918c).V(this.f71640c).E();
            this.f71647j = p1VarE;
            this.f71642e.d(p1VarE);
        }
        this.f71648k = c0341bE.f23920e;
        this.f71646i = (((long) c0341bE.f23921f) * 1000000) / ((long) this.f71647j.f24915z);
    }

    private boolean f(com.google.android.exoplayer2.util.d0 d0Var) {
        while (true) {
            if (d0Var.a() <= 0) {
                return false;
            }
            if (this.f71645h) {
                int iD = d0Var.D();
                if (iD == 119) {
                    this.f71645h = false;
                    return true;
                }
                this.f71645h = iD == 11;
            } else {
                this.f71645h = d0Var.D() == 11;
            }
        }
    }

    @Override
    public void b(com.google.android.exoplayer2.util.d0 d0Var) {
        com.google.android.exoplayer2.util.a.i(this.f71642e);
        while (d0Var.a() > 0) {
            int i10 = this.f71643f;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        int iMin = Math.min(d0Var.a(), this.f71648k - this.f71644g);
                        this.f71642e.c(d0Var, iMin);
                        int i11 = this.f71644g + iMin;
                        this.f71644g = i11;
                        int i12 = this.f71648k;
                        if (i11 == i12) {
                            long j10 = this.f71649l;
                            if (j10 != C.TIME_UNSET) {
                                this.f71642e.e(j10, 1, i12, 0, null);
                                this.f71649l += this.f71646i;
                            }
                            this.f71643f = 0;
                        }
                    }
                } else if (a(d0Var, this.f71639b.d(), 128)) {
                    e();
                    this.f71639b.P(0);
                    this.f71642e.c(this.f71639b, 128);
                    this.f71643f = 2;
                }
            } else if (f(d0Var)) {
                this.f71643f = 1;
                this.f71639b.d()[0] = 11;
                this.f71639b.d()[1] = 119;
                this.f71644g = 2;
            }
        }
    }

    @Override
    public void c(long j10, int i10) {
        if (j10 != C.TIME_UNSET) {
            this.f71649l = j10;
        }
    }

    @Override
    public void d(i9.n nVar, i0.d dVar) {
        dVar.a();
        this.f71641d = dVar.b();
        this.f71642e = nVar.track(dVar.c(), 1);
    }

    @Override
    public void seek() {
        this.f71643f = 0;
        this.f71644g = 0;
        this.f71645h = false;
        this.f71649l = C.TIME_UNSET;
    }

    public c(String str) {
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(new byte[128]);
        this.f71638a = c0Var;
        this.f71639b = new com.google.android.exoplayer2.util.d0(c0Var.f26788a);
        this.f71643f = 0;
        this.f71649l = C.TIME_UNSET;
        this.f71640c = str;
    }

    @Override
    public void packetFinished() {
    }
}
