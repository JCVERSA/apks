package com.google.android.exoplayer2.util;

import com.google.android.exoplayer2.o2;

public final class h0 implements u {

    private final e f26814a;

    private boolean f26815b;

    private long f26816c;

    private long f26817d;

    private o2 f26818e = o2.f24843d;

    public h0(e eVar) {
        this.f26814a = eVar;
    }

    public void a(long j10) {
        this.f26816c = j10;
        if (this.f26815b) {
            this.f26817d = this.f26814a.elapsedRealtime();
        }
    }

    @Override
    public void b(o2 o2Var) {
        if (this.f26815b) {
            a(getPositionUs());
        }
        this.f26818e = o2Var;
    }

    public void c() {
        if (this.f26815b) {
            return;
        }
        this.f26817d = this.f26814a.elapsedRealtime();
        this.f26815b = true;
    }

    public void d() {
        if (this.f26815b) {
            a(getPositionUs());
            this.f26815b = false;
        }
    }

    @Override
    public o2 getPlaybackParameters() {
        return this.f26818e;
    }

    @Override
    public long getPositionUs() {
        long j10 = this.f26816c;
        if (!this.f26815b) {
            return j10;
        }
        long jElapsedRealtime = this.f26814a.elapsedRealtime() - this.f26817d;
        o2 o2Var = this.f26818e;
        return j10 + (o2Var.f24845a == 1.0f ? p0.B0(jElapsedRealtime) : o2Var.b(jElapsedRealtime));
    }
}
