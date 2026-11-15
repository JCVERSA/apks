package s9;

import com.google.android.exoplayer2.p1;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class k implements m {

    private final String f71765b;

    private String f71766c;

    private i9.e0 f71767d;

    private int f71769f;

    private int f71770g;

    private long f71771h;

    private p1 f71772i;

    private int f71773j;

    private final com.google.android.exoplayer2.util.d0 f71764a = new com.google.android.exoplayer2.util.d0(new byte[18]);

    private int f71768e = 0;

    private long f71774k = C.TIME_UNSET;

    public k(String str) {
        this.f71765b = str;
    }

    private boolean a(com.google.android.exoplayer2.util.d0 d0Var, byte[] bArr, int i10) {
        int iMin = Math.min(d0Var.a(), i10 - this.f71769f);
        d0Var.j(bArr, this.f71769f, iMin);
        int i11 = this.f71769f + iMin;
        this.f71769f = i11;
        return i11 == i10;
    }

    private void e() {
        byte[] bArrD = this.f71764a.d();
        if (this.f71772i == null) {
            p1 p1VarG = com.google.android.exoplayer2.audio.y.g(bArrD, this.f71766c, this.f71765b, null);
            this.f71772i = p1VarG;
            this.f71767d.d(p1VarG);
        }
        this.f71773j = com.google.android.exoplayer2.audio.y.a(bArrD);
        this.f71771h = (int) ((((long) com.google.android.exoplayer2.audio.y.f(bArrD)) * 1000000) / ((long) this.f71772i.f24915z));
    }

    private boolean f(com.google.android.exoplayer2.util.d0 d0Var) {
        while (d0Var.a() > 0) {
            int i10 = this.f71770g << 8;
            this.f71770g = i10;
            int iD = i10 | d0Var.D();
            this.f71770g = iD;
            if (com.google.android.exoplayer2.audio.y.d(iD)) {
                byte[] bArrD = this.f71764a.d();
                int i11 = this.f71770g;
                bArrD[0] = (byte) ((i11 >> 24) & 255);
                bArrD[1] = (byte) ((i11 >> 16) & 255);
                bArrD[2] = (byte) ((i11 >> 8) & 255);
                bArrD[3] = (byte) (i11 & 255);
                this.f71769f = 4;
                this.f71770g = 0;
                return true;
            }
        }
        return false;
    }

    @Override
    public void b(com.google.android.exoplayer2.util.d0 d0Var) {
        com.google.android.exoplayer2.util.a.i(this.f71767d);
        while (d0Var.a() > 0) {
            int i10 = this.f71768e;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        throw new IllegalStateException();
                    }
                    int iMin = Math.min(d0Var.a(), this.f71773j - this.f71769f);
                    this.f71767d.c(d0Var, iMin);
                    int i11 = this.f71769f + iMin;
                    this.f71769f = i11;
                    int i12 = this.f71773j;
                    if (i11 == i12) {
                        long j10 = this.f71774k;
                        if (j10 != C.TIME_UNSET) {
                            this.f71767d.e(j10, 1, i12, 0, null);
                            this.f71774k += this.f71771h;
                        }
                        this.f71768e = 0;
                    }
                } else if (a(d0Var, this.f71764a.d(), 18)) {
                    e();
                    this.f71764a.P(0);
                    this.f71767d.c(this.f71764a, 18);
                    this.f71768e = 2;
                }
            } else if (f(d0Var)) {
                this.f71768e = 1;
            }
        }
    }

    @Override
    public void c(long j10, int i10) {
        if (j10 != C.TIME_UNSET) {
            this.f71774k = j10;
        }
    }

    @Override
    public void d(i9.n nVar, i0.d dVar) {
        dVar.a();
        this.f71766c = dVar.b();
        this.f71767d = nVar.track(dVar.c(), 1);
    }

    @Override
    public void seek() {
        this.f71768e = 0;
        this.f71769f = 0;
        this.f71770g = 0;
        this.f71774k = C.TIME_UNSET;
    }

    @Override
    public void packetFinished() {
    }
}
