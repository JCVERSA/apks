package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.icy.IcyHeaders;

public class HT implements Parcelable.Creator<IcyHeaders> {
    @Override
    public final IcyHeaders createFromParcel(Parcel parcel) {
        return new IcyHeaders(parcel);
    }

    @Override
    public final IcyHeaders[] newArray(int i) {
        return new IcyHeaders[i];
    }
}
