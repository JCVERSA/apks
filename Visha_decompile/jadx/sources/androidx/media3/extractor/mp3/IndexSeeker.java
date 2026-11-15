package androidx.media3.extractor.mp3;

import androidx.annotation.VisibleForTesting;
import androidx.media3.common.C;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.IndexSeekMap;
import androidx.media3.extractor.SeekMap;
import java.math.RoundingMode;

final class IndexSeeker implements Seeker {

    @VisibleForTesting
    static final long MIN_TIME_BETWEEN_POINTS_US = 100000;
    private final int averageBitrate;
    private final long dataEndPosition;
    private final IndexSeekMap indexSeekMap;

    public IndexSeeker(long j, long j2, long j3) {
        this.indexSeekMap = new IndexSeekMap(new long[]{j2}, new long[]{0}, j);
        this.dataEndPosition = j3;
        int i = C.RATE_UNSET_INT;
        if (j == C.TIME_UNSET) {
            this.averageBitrate = C.RATE_UNSET_INT;
            return;
        }
        long jScaleLargeValue = Util.scaleLargeValue(j2 - j3, 8L, j, RoundingMode.HALF_UP);
        if (jScaleLargeValue > 0 && jScaleLargeValue <= 2147483647L) {
            i = (int) jScaleLargeValue;
        }
        this.averageBitrate = i;
    }

    @Override
    public int getAverageBitrate() {
        return this.averageBitrate;
    }

    @Override
    public long getDataEndPosition() {
        return this.dataEndPosition;
    }

    @Override
    public long getDurationUs() {
        return this.indexSeekMap.getDurationUs();
    }

    @Override
    public SeekMap.SeekPoints getSeekPoints(long j) {
        return this.indexSeekMap.getSeekPoints(j);
    }

    @Override
    public long getTimeUs(long j) {
        return this.indexSeekMap.getTimeUs(j);
    }

    @Override
    public boolean isSeekable() {
        return this.indexSeekMap.isSeekable();
    }

    public boolean isTimeUsInIndex(long j) {
        return this.indexSeekMap.isTimeUsInIndex(j, 100000L);
    }

    public void maybeAddSeekPoint(long j, long j2) {
        if (isTimeUsInIndex(j)) {
            return;
        }
        this.indexSeekMap.addSeekPoint(j, j2);
    }

    public void setDurationUs(long j) {
        this.indexSeekMap.setDurationUs(j);
    }
}
