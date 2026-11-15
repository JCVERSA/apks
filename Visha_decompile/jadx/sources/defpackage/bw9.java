package defpackage;

import com.google.android.exoplayer2.s;

public final class bw9 implements nd6 {
    public final ey0 b;
    public boolean c;
    public long d;
    public long e;
    public s f = s.e;

    public bw9(ey0 ey0Var) {
        this.b = ey0Var;
    }

    public void a(long j) {
        this.d = j;
        if (this.c) {
            this.e = this.b.elapsedRealtime();
        }
    }

    @Override
    public void b(s sVar) {
        if (this.c) {
            a(getPositionUs());
        }
        this.f = sVar;
    }

    public void c() {
        if (this.c) {
            return;
        }
        this.e = this.b.elapsedRealtime();
        this.c = true;
    }

    public void d() {
        if (this.c) {
            a(getPositionUs());
            this.c = false;
        }
    }

    @Override
    public s getPlaybackParameters() {
        return this.f;
    }

    @Override
    public long getPositionUs() {
        long j = this.d;
        if (!this.c) {
            return j;
        }
        long jElapsedRealtime = this.b.elapsedRealtime() - this.e;
        s sVar = this.f;
        return j + (sVar.b == 1.0f ? blb.t0(jElapsedRealtime) : sVar.b(jElapsedRealtime));
    }
}
