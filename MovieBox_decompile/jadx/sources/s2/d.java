package s2;

import k2.c0;
import k2.s;

final class d extends c0 {

    private final long f71474b;

    public d(s sVar, long j10) {
        super(sVar);
        androidx.media3.common.util.a.a(sVar.getPosition() >= j10);
        this.f71474b = j10;
    }

    @Override
    public long getLength() {
        return super.getLength() - this.f71474b;
    }

    @Override
    public long getPeekPosition() {
        return super.getPeekPosition() - this.f71474b;
    }

    @Override
    public long getPosition() {
        return super.getPosition() - this.f71474b;
    }
}
