package com.mbridge.msdk.playercommon.exoplayer2.text;

import com.mbridge.msdk.playercommon.exoplayer2.decoder.OutputBuffer;
import java.util.List;

public abstract class SubtitleOutputBuffer extends OutputBuffer implements Subtitle {
    private long subsampleOffsetUs;
    private Subtitle subtitle;

    @Override
    public void clear() {
        super.clear();
        this.subtitle = null;
    }

    @Override
    public List<Cue> getCues(long j10) {
        return this.subtitle.getCues(j10 - this.subsampleOffsetUs);
    }

    @Override
    public long getEventTime(int i10) {
        return this.subtitle.getEventTime(i10) + this.subsampleOffsetUs;
    }

    @Override
    public int getEventTimeCount() {
        return this.subtitle.getEventTimeCount();
    }

    @Override
    public int getNextEventTimeIndex(long j10) {
        return this.subtitle.getNextEventTimeIndex(j10 - this.subsampleOffsetUs);
    }

    @Override
    public abstract void release();

    public void setContent(long j10, Subtitle subtitle, long j11) {
        this.timeUs = j10;
        this.subtitle = subtitle;
        if (j11 != Long.MAX_VALUE) {
            j10 = j11;
        }
        this.subsampleOffsetUs = j10;
    }
}
