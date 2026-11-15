package androidx.media3.exoplayer.source;

import androidx.annotation.Nullable;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
public abstract class ForwardingTimeline extends Timeline {
    protected final Timeline timeline;

    public ForwardingTimeline(Timeline timeline) {
        this.timeline = timeline;
    }

    @Override
    public final boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }

    @Override
    public int getFirstWindowIndex(boolean z) {
        return this.timeline.getFirstWindowIndex(z);
    }

    @Override
    public int getIndexOfPeriod(Object obj) {
        return this.timeline.getIndexOfPeriod(obj);
    }

    @Override
    public int getLastWindowIndex(boolean z) {
        return this.timeline.getLastWindowIndex(z);
    }

    @Override
    public int getNextWindowIndex(int i, int i2, boolean z) {
        return this.timeline.getNextWindowIndex(i, i2, z);
    }

    @Override
    public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
        return this.timeline.getPeriod(i, period, z);
    }

    @Override
    public final Timeline.Period getPeriodByUid(Object obj, Timeline.Period period) {
        return super.getPeriodByUid(obj, period);
    }

    @Override
    public int getPeriodCount() {
        return this.timeline.getPeriodCount();
    }

    @Override
    public int getPreviousWindowIndex(int i, int i2, boolean z) {
        return this.timeline.getPreviousWindowIndex(i, i2, z);
    }

    @Override
    public Object getUidOfPeriod(int i) {
        return this.timeline.getUidOfPeriod(i);
    }

    @Override
    public Timeline.Window getWindow(int i, Timeline.Window window, long j) {
        return this.timeline.getWindow(i, window, j);
    }

    @Override
    public int getWindowCount() {
        return this.timeline.getWindowCount();
    }

    @Override
    public final int hashCode() {
        return super.hashCode();
    }
}
