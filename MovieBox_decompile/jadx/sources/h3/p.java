package h3;

import java.util.List;

public abstract class p extends androidx.media3.decoder.h implements k {

    private k f61261a;

    private long f61262b;

    public void a(long j10, k kVar, long j11) {
        this.timeUs = j10;
        this.f61261a = kVar;
        if (j11 != Long.MAX_VALUE) {
            j10 = j11;
        }
        this.f61262b = j10;
    }

    @Override
    public void clear() {
        super.clear();
        this.f61261a = null;
    }

    @Override
    public List getCues(long j10) {
        return ((k) androidx.media3.common.util.a.e(this.f61261a)).getCues(j10 - this.f61262b);
    }

    @Override
    public long getEventTime(int i10) {
        return ((k) androidx.media3.common.util.a.e(this.f61261a)).getEventTime(i10) + this.f61262b;
    }

    @Override
    public int getEventTimeCount() {
        return ((k) androidx.media3.common.util.a.e(this.f61261a)).getEventTimeCount();
    }

    @Override
    public int getNextEventTimeIndex(long j10) {
        return ((k) androidx.media3.common.util.a.e(this.f61261a)).getNextEventTimeIndex(j10 - this.f61262b);
    }
}
