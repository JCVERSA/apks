package com.mbridge.msdk.playercommon.exoplayer2.source;

import com.mbridge.msdk.playercommon.exoplayer2.Timeline;

public abstract class ForwardingTimeline extends Timeline {
    protected final Timeline timeline;

    public ForwardingTimeline(Timeline timeline) {
        this.timeline = timeline;
    }

    @Override
    public int getFirstWindowIndex(boolean z10) {
        return this.timeline.getFirstWindowIndex(z10);
    }

    @Override
    public int getIndexOfPeriod(Object obj) {
        return this.timeline.getIndexOfPeriod(obj);
    }

    @Override
    public int getLastWindowIndex(boolean z10) {
        return this.timeline.getLastWindowIndex(z10);
    }

    @Override
    public int getNextWindowIndex(int i10, int i11, boolean z10) {
        return this.timeline.getNextWindowIndex(i10, i11, z10);
    }

    @Override
    public Timeline.Period getPeriod(int i10, Timeline.Period period, boolean z10) {
        return this.timeline.getPeriod(i10, period, z10);
    }

    @Override
    public int getPeriodCount() {
        return this.timeline.getPeriodCount();
    }

    @Override
    public int getPreviousWindowIndex(int i10, int i11, boolean z10) {
        return this.timeline.getPreviousWindowIndex(i10, i11, z10);
    }

    @Override
    public Timeline.Window getWindow(int i10, Timeline.Window window, boolean z10, long j10) {
        return this.timeline.getWindow(i10, window, z10, j10);
    }

    @Override
    public int getWindowCount() {
        return this.timeline.getWindowCount();
    }
}
