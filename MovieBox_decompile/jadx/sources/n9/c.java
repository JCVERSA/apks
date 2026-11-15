package n9;

import i9.m;
import i9.w;

final class c extends w {

    private final long f66973b;

    public c(m mVar, long j10) {
        super(mVar);
        com.google.android.exoplayer2.util.a.a(mVar.getPosition() >= j10);
        this.f66973b = j10;
    }

    @Override
    public long getLength() {
        return super.getLength() - this.f66973b;
    }

    @Override
    public long getPeekPosition() {
        return super.getPeekPosition() - this.f66973b;
    }

    @Override
    public long getPosition() {
        return super.getPosition() - this.f66973b;
    }
}
