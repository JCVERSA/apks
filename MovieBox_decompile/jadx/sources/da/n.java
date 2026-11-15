package da;

import java.util.List;

public abstract class n extends com.google.android.exoplayer2.decoder.f implements i {

    private i f58984d;

    private long f58985e;

    @Override
    public void b() {
        super.b();
        this.f58984d = null;
    }

    @Override
    public List getCues(long j10) {
        return ((i) com.google.android.exoplayer2.util.a.e(this.f58984d)).getCues(j10 - this.f58985e);
    }

    @Override
    public long getEventTime(int i10) {
        return ((i) com.google.android.exoplayer2.util.a.e(this.f58984d)).getEventTime(i10) + this.f58985e;
    }

    @Override
    public int getEventTimeCount() {
        return ((i) com.google.android.exoplayer2.util.a.e(this.f58984d)).getEventTimeCount();
    }

    @Override
    public int getNextEventTimeIndex(long j10) {
        return ((i) com.google.android.exoplayer2.util.a.e(this.f58984d)).getNextEventTimeIndex(j10 - this.f58985e);
    }

    public void m(long j10, i iVar, long j11) {
        this.f24246b = j10;
        this.f58984d = iVar;
        if (j11 != Long.MAX_VALUE) {
            j10 = j11;
        }
        this.f58985e = j10;
    }
}
