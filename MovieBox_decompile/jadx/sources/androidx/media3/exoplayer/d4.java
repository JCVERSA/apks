package androidx.media3.exoplayer;

public final class d4 implements x2 {

    private final androidx.media3.common.util.i f11041a;

    private boolean f11042b;

    private long f11043c;

    private long f11044d;

    private androidx.media3.common.z f11045e = androidx.media3.common.z.f10251d;

    public d4(androidx.media3.common.util.i iVar) {
        this.f11041a = iVar;
    }

    public void a(long j10) {
        this.f11043c = j10;
        if (this.f11042b) {
            this.f11044d = this.f11041a.elapsedRealtime();
        }
    }

    @Override
    public void b(androidx.media3.common.z zVar) {
        if (this.f11042b) {
            a(getPositionUs());
        }
        this.f11045e = zVar;
    }

    public void c() {
        if (this.f11042b) {
            return;
        }
        this.f11044d = this.f11041a.elapsedRealtime();
        this.f11042b = true;
    }

    public void d() {
        if (this.f11042b) {
            a(getPositionUs());
            this.f11042b = false;
        }
    }

    @Override
    public androidx.media3.common.z getPlaybackParameters() {
        return this.f11045e;
    }

    @Override
    public long getPositionUs() {
        long j10 = this.f11043c;
        if (!this.f11042b) {
            return j10;
        }
        long jElapsedRealtime = this.f11041a.elapsedRealtime() - this.f11044d;
        androidx.media3.common.z zVar = this.f11045e;
        return j10 + (zVar.f10254a == 1.0f ? androidx.media3.common.util.a1.R0(jElapsedRealtime) : zVar.a(jElapsedRealtime));
    }

    @Override
    public boolean h() {
        return w2.a(this);
    }
}
