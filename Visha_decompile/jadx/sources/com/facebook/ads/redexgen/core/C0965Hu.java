package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.scte35.SpliceInsertCommand;

public class C0965Hu implements Parcelable.Creator<SpliceInsertCommand> {
    @Override
    public final SpliceInsertCommand createFromParcel(Parcel parcel) {
        return new SpliceInsertCommand(parcel, null);
    }

    @Override
    public final SpliceInsertCommand[] newArray(int i) {
        return new SpliceInsertCommand[i];
    }
}
