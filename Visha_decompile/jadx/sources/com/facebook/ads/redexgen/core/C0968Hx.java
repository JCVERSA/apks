package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.scte35.SpliceScheduleCommand;

public class C0968Hx implements Parcelable.Creator<SpliceScheduleCommand> {
    @Override
    public final SpliceScheduleCommand createFromParcel(Parcel parcel) {
        return new SpliceScheduleCommand(parcel, null);
    }

    @Override
    public final SpliceScheduleCommand[] newArray(int i) {
        return new SpliceScheduleCommand[i];
    }
}
