package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.ApicFrame;

public class HW implements Parcelable.Creator<ApicFrame> {
    @Override
    public final ApicFrame createFromParcel(Parcel parcel) {
        return new ApicFrame(parcel);
    }

    @Override
    public final ApicFrame[] newArray(int i) {
        return new ApicFrame[i];
    }
}
