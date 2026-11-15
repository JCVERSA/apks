package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.mp4.MdtaMetadataEntry;

public class C0956Hk implements Parcelable.Creator<MdtaMetadataEntry> {
    @Override
    public final MdtaMetadataEntry createFromParcel(Parcel parcel) {
        return new MdtaMetadataEntry(parcel, null);
    }

    @Override
    public final MdtaMetadataEntry[] newArray(int i) {
        return new MdtaMetadataEntry[i];
    }
}
