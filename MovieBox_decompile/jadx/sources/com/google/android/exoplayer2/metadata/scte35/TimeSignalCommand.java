package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.l0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class TimeSignalCommand extends SpliceCommand {
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new a();
    public final long playbackPositionUs;
    public final long ptsTime;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public TimeSignalCommand createFromParcel(Parcel parcel) {
            return new TimeSignalCommand(parcel.readLong(), parcel.readLong(), null);
        }

        @Override
        public TimeSignalCommand[] newArray(int i10) {
            return new TimeSignalCommand[i10];
        }
    }

    TimeSignalCommand(long j10, long j11, a aVar) {
        this(j10, j11);
    }

    static TimeSignalCommand parseFromSection(d0 d0Var, long j10, l0 l0Var) {
        long spliceTime = parseSpliceTime(d0Var, j10);
        return new TimeSignalCommand(spliceTime, l0Var.b(spliceTime));
    }

    static long parseSpliceTime(d0 d0Var, long j10) {
        long jD = d0Var.D();
        return (128 & jD) != 0 ? 8589934591L & ((((jD & 1) << 32) | d0Var.F()) + j10) : C.TIME_UNSET;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.ptsTime);
        parcel.writeLong(this.playbackPositionUs);
    }

    private TimeSignalCommand(long j10, long j11) {
        this.ptsTime = j10;
        this.playbackPositionUs = j11;
    }
}
