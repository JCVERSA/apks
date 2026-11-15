package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.BinaryFrame;

public class HX implements Parcelable.Creator<BinaryFrame> {
    @Override
    public final BinaryFrame createFromParcel(Parcel parcel) {
        return new BinaryFrame(parcel);
    }

    @Override
    public final BinaryFrame[] newArray(int i) {
        return new BinaryFrame[i];
    }
}
