package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.scte35.TimeSignalCommand;

public class I0 implements Parcelable.Creator<TimeSignalCommand> {
    @Override
    public final TimeSignalCommand createFromParcel(Parcel parcel) {
        return new TimeSignalCommand(parcel.readLong(), parcel.readLong(), null);
    }

    @Override
    public final TimeSignalCommand[] newArray(int i) {
        return new TimeSignalCommand[i];
    }
}
