package k2;

public final class p0 implements m0 {

    private final long f63684a;

    private final long f63685b;

    public p0(long j10) {
        this(j10, 0L);
    }

    @Override
    public long getDurationUs() {
        return this.f63684a;
    }

    @Override
    public m0.a getSeekPoints(long j10) {
        return new m0.a(new n0(j10, this.f63685b));
    }

    @Override
    public boolean isSeekable() {
        return true;
    }

    public p0(long j10, long j11) {
        this.f63684a = j10;
        this.f63685b = j11;
    }
}
