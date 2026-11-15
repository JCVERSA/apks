package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.scte35.SpliceNullCommand;

public class C0967Hw implements Parcelable.Creator<SpliceNullCommand> {
    @Override
    public final SpliceNullCommand createFromParcel(Parcel parcel) {
        return new SpliceNullCommand();
    }

    @Override
    public final SpliceNullCommand[] newArray(int i) {
        return new SpliceNullCommand[i];
    }
}
