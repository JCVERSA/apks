package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.C;
import defpackage.poa;
import defpackage.qw7;

public final class TimeSignalCommand extends SpliceCommand {
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new a();
    public final long playbackPositionUs;
    public final long ptsTime;

    public class a implements Parcelable.Creator {
        @Override
        public TimeSignalCommand createFromParcel(Parcel parcel) {
            return new TimeSignalCommand(parcel.readLong(), parcel.readLong(), null);
        }

        @Override
        public TimeSignalCommand[] newArray(int i) {
            return new TimeSignalCommand[i];
        }
    }

    public TimeSignalCommand(long j, long j2, a aVar) {
        this(j, j2);
    }

    public static TimeSignalCommand parseFromSection(qw7 qw7Var, long j, poa poaVar) {
        long spliceTime = parseSpliceTime(qw7Var, j);
        return new TimeSignalCommand(spliceTime, poaVar.b(spliceTime));
    }

    public static long parseSpliceTime(qw7 qw7Var, long j) {
        long jC = qw7Var.C();
        return (128 & jC) != 0 ? 8589934591L & ((((jC & 1) << 32) | qw7Var.E()) + j) : C.TIME_UNSET;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.ptsTime);
        parcel.writeLong(this.playbackPositionUs);
    }

    private TimeSignalCommand(long j, long j2) {
        this.ptsTime = j;
        this.playbackPositionUs = j2;
    }
}
