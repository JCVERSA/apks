package com.mbridge.msdk.playercommon.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;

public final class SpliceNullCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceNullCommand> CREATOR = new Parcelable.Creator<SpliceNullCommand>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public SpliceNullCommand createFromParcel(Parcel parcel) {
            return new SpliceNullCommand();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public SpliceNullCommand[] newArray(int i10) {
            return new SpliceNullCommand[i10];
        }
    };

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
    }
}
