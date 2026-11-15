package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.icy.IcyInfo;

public class HU implements Parcelable.Creator<IcyInfo> {
    @Override
    public final IcyInfo createFromParcel(Parcel parcel) {
        return new IcyInfo(parcel);
    }

    @Override
    public final IcyInfo[] newArray(int i) {
        return new IcyInfo[i];
    }
}
