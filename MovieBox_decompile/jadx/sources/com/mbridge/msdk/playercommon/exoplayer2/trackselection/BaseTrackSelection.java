package com.mbridge.msdk.playercommon.exoplayer2.trackselection;

import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroup;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.MediaChunk;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

public abstract class BaseTrackSelection implements TrackSelection {
    private final long[] blacklistUntilTimes;
    private final Format[] formats;
    protected final TrackGroup group;
    private int hashCode;
    protected final int length;
    protected final int[] tracks;

    private static final class DecreasingBandwidthComparator implements Comparator<Format> {
        private DecreasingBandwidthComparator() {
        }

        @Override
        public int compare(Format format, Format format2) {
            return format2.bitrate - format.bitrate;
        }
    }

    public BaseTrackSelection(TrackGroup trackGroup, int... iArr) {
        int i10 = 0;
        Assertions.checkState(iArr.length > 0);
        this.group = (TrackGroup) Assertions.checkNotNull(trackGroup);
        int length = iArr.length;
        this.length = length;
        this.formats = new Format[length];
        for (int i11 = 0; i11 < iArr.length; i11++) {
            this.formats[i11] = trackGroup.getFormat(iArr[i11]);
        }
        Arrays.sort(this.formats, new DecreasingBandwidthComparator());
        this.tracks = new int[this.length];
        while (true) {
            int i12 = this.length;
            if (i10 >= i12) {
                this.blacklistUntilTimes = new long[i12];
                return;
            } else {
                this.tracks[i10] = trackGroup.indexOf(this.formats[i10]);
                i10++;
            }
        }
    }

    @Override
    public final boolean blacklist(int i10, long j10) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean zIsBlacklisted = isBlacklisted(i10, jElapsedRealtime);
        int i11 = 0;
        while (i11 < this.length && !zIsBlacklisted) {
            zIsBlacklisted = (i11 == i10 || isBlacklisted(i11, jElapsedRealtime)) ? false : true;
            i11++;
        }
        if (!zIsBlacklisted) {
            return false;
        }
        long[] jArr = this.blacklistUntilTimes;
        jArr[i10] = Math.max(jArr[i10], jElapsedRealtime + j10);
        return true;
    }

    @Override
    public void disable() {
    }

    @Override
    public void enable() {
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BaseTrackSelection baseTrackSelection = (BaseTrackSelection) obj;
        return this.group == baseTrackSelection.group && Arrays.equals(this.tracks, baseTrackSelection.tracks);
    }

    @Override
    public int evaluateQueueSize(long j10, List<? extends MediaChunk> list) {
        return list.size();
    }

    @Override
    public final Format getFormat(int i10) {
        return this.formats[i10];
    }

    @Override
    public final int getIndexInTrackGroup(int i10) {
        return this.tracks[i10];
    }

    @Override
    public final Format getSelectedFormat() {
        return this.formats[getSelectedIndex()];
    }

    @Override
    public final int getSelectedIndexInTrackGroup() {
        return this.tracks[getSelectedIndex()];
    }

    @Override
    public final TrackGroup getTrackGroup() {
        return this.group;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = (System.identityHashCode(this.group) * 31) + Arrays.hashCode(this.tracks);
        }
        return this.hashCode;
    }

    @Override
    public final int indexOf(Format format) {
        for (int i10 = 0; i10 < this.length; i10++) {
            if (this.formats[i10] == format) {
                return i10;
            }
        }
        return -1;
    }

    protected final boolean isBlacklisted(int i10, long j10) {
        return this.blacklistUntilTimes[i10] > j10;
    }

    @Override
    public final int length() {
        return this.tracks.length;
    }

    @Override
    public void onPlaybackSpeed(float f10) {
    }

    @Override
    public final int indexOf(int i10) {
        for (int i11 = 0; i11 < this.length; i11++) {
            if (this.tracks[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }
}
