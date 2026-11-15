package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.scte35.PrivateCommand;

public class C0964Ht implements Parcelable.Creator<PrivateCommand> {
    @Override
    public final PrivateCommand createFromParcel(Parcel parcel) {
        return new PrivateCommand(parcel, null);
    }

    @Override
    public final PrivateCommand[] newArray(int i) {
        return new PrivateCommand[i];
    }
}
