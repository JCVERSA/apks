package defpackage;

import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;

public final class kz4 implements ma9 {
    public final long a;
    public final zq5 b;
    public final zq5 c;
    public long d;

    public kz4(long j, long j2, long j3) {
        this.d = j;
        this.a = j3;
        zq5 zq5Var = new zq5();
        this.b = zq5Var;
        zq5 zq5Var2 = new zq5();
        this.c = zq5Var2;
        zq5Var.a(0L);
        zq5Var2.a(j2);
    }

    public boolean a(long j) {
        zq5 zq5Var = this.b;
        return j - zq5Var.b(zq5Var.c() - 1) < SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US;
    }

    public void b(long j, long j2) {
        if (a(j)) {
            return;
        }
        this.b.a(j);
        this.c.a(j2);
    }

    public void c(long j) {
        this.d = j;
    }

    @Override
    public long getDataEndPosition() {
        return this.a;
    }

    @Override
    public long getDurationUs() {
        return this.d;
    }

    @Override
    public ja9.a getSeekPoints(long j) {
        int iF = blb.f(this.b, j, true, true);
        la9 la9Var = new la9(this.b.b(iF), this.c.b(iF));
        if (la9Var.a == j || iF == this.b.c() - 1) {
            return new ja9.a(la9Var);
        }
        int i = iF + 1;
        return new ja9.a(la9Var, new la9(this.b.b(i), this.c.b(i)));
    }

    @Override
    public long getTimeUs(long j) {
        return this.b.b(blb.f(this.c, j, true, true));
    }

    @Override
    public boolean isSeekable() {
        return true;
    }
}
