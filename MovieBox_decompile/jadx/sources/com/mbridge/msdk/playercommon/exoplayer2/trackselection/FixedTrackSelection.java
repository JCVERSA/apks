package com.mbridge.msdk.playercommon.exoplayer2.trackselection;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroup;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;

public final class FixedTrackSelection extends BaseTrackSelection {

    @Nullable
    private final Object data;
    private final int reason;

    public static final class Factory implements TrackSelection.Factory {

        @Nullable
        private final Object data;
        private final int reason;

        public Factory() {
            this.reason = 0;
            this.data = null;
        }

        @Override
        public FixedTrackSelection createTrackSelection(TrackGroup trackGroup, int... iArr) {
            Assertions.checkArgument(iArr.length == 1);
            return new FixedTrackSelection(trackGroup, iArr[0], this.reason, this.data);
        }

        public Factory(int i10, @Nullable Object obj) {
            this.reason = i10;
            this.data = obj;
        }
    }

    public FixedTrackSelection(TrackGroup trackGroup, int i10) {
        this(trackGroup, i10, 0, null);
    }

    @Override
    public int getSelectedIndex() {
        return 0;
    }

    @Override
    @Nullable
    public Object getSelectionData() {
        return this.data;
    }

    @Override
    public int getSelectionReason() {
        return this.reason;
    }

    @Override
    public void updateSelectedTrack(long j10, long j11, long j12) {
    }

    public FixedTrackSelection(TrackGroup trackGroup, int i10, int i11, @Nullable Object obj) {
        super(trackGroup, i10);
        this.reason = i11;
        this.data = obj;
    }
}
