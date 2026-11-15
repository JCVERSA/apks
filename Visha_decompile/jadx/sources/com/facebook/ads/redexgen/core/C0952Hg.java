package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.PrivFrame;

public class C0952Hg implements Parcelable.Creator<PrivFrame> {
    @Override
    public final PrivFrame createFromParcel(Parcel parcel) {
        return new PrivFrame(parcel);
    }

    @Override
    public final PrivFrame[] newArray(int i) {
        return new PrivFrame[i];
    }
}
