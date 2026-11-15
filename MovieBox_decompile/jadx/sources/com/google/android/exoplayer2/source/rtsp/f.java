package com.google.android.exoplayer2.source.rtsp;

import android.os.SystemClock;
import com.mbridge.msdk.playercommon.exoplayer2.C;

final class f implements i9.l {

    private final ba.j f25698a;

    private final int f25701d;

    private i9.n f25704g;

    private boolean f25705h;

    private boolean f25708k;

    private final com.google.android.exoplayer2.util.d0 f25699b = new com.google.android.exoplayer2.util.d0(65507);

    private final com.google.android.exoplayer2.util.d0 f25700c = new com.google.android.exoplayer2.util.d0();

    private final Object f25702e = new Object();

    private final i f25703f = new i();

    private volatile long f25706i = C.TIME_UNSET;

    private volatile int f25707j = -1;

    private long f25709l = C.TIME_UNSET;

    private long f25710m = C.TIME_UNSET;

    public f(j jVar, int i10) {
        this.f25701d = i10;
        this.f25698a = (ba.j) com.google.android.exoplayer2.util.a.e(new ba.a().a(jVar));
    }

    private static long a(long j10) {
        return j10 - 30;
    }

    @Override
    public void b(i9.n nVar) {
        this.f25698a.c(nVar, this.f25701d);
        nVar.endTracks();
        nVar.g(new i9.b0.b(C.TIME_UNSET));
        this.f25704g = nVar;
    }

    @Override
    public boolean c(i9.m mVar) {
        throw new UnsupportedOperationException("RTP packets are transmitted in a packet stream do not support sniffing.");
    }

    @Override
    public int d(i9.m mVar, i9.a0 a0Var) {
        com.google.android.exoplayer2.util.a.e(this.f25704g);
        int i10 = mVar.read(this.f25699b.d(), 0, 65507);
        if (i10 == -1) {
            return -1;
        }
        if (i10 == 0) {
            return 0;
        }
        this.f25699b.P(0);
        this.f25699b.O(i10);
        g gVarD = g.d(this.f25699b);
        if (gVarD == null) {
            return 0;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jA = a(jElapsedRealtime);
        this.f25703f.e(gVarD, jElapsedRealtime);
        g gVarF = this.f25703f.f(jA);
        if (gVarF == null) {
            return 0;
        }
        if (!this.f25705h) {
            if (this.f25706i == C.TIME_UNSET) {
                this.f25706i = gVarF.f25722h;
            }
            if (this.f25707j == -1) {
                this.f25707j = gVarF.f25721g;
            }
            this.f25698a.b(this.f25706i, this.f25707j);
            this.f25705h = true;
        }
        synchronized (this.f25702e) {
            try {
                if (!this.f25708k) {
                    do {
                        this.f25700c.M(gVarF.f25725k);
                        this.f25698a.a(this.f25700c, gVarF.f25722h, gVarF.f25721g, gVarF.f25719e);
                        gVarF = this.f25703f.f(jA);
                    } while (gVarF != null);
                } else if (this.f25709l != C.TIME_UNSET && this.f25710m != C.TIME_UNSET) {
                    this.f25703f.g();
                    this.f25698a.seek(this.f25709l, this.f25710m);
                    this.f25708k = false;
                    this.f25709l = C.TIME_UNSET;
                    this.f25710m = C.TIME_UNSET;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return 0;
    }

    public boolean e() {
        return this.f25705h;
    }

    public void f() {
        synchronized (this.f25702e) {
            this.f25708k = true;
        }
    }

    public void g(int i10) {
        this.f25707j = i10;
    }

    public void h(long j10) {
        this.f25706i = j10;
    }

    @Override
    public void seek(long j10, long j11) {
        synchronized (this.f25702e) {
            this.f25709l = j10;
            this.f25710m = j11;
        }
    }

    @Override
    public void release() {
    }
}
