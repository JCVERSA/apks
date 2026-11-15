package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.mp4.SmtaMetadataEntry;

public class C0961Hq implements Parcelable.Creator<SmtaMetadataEntry> {
    @Override
    public final SmtaMetadataEntry createFromParcel(Parcel parcel) {
        return new SmtaMetadataEntry(parcel, (C0961Hq) null);
    }

    @Override
    public final SmtaMetadataEntry[] newArray(int i) {
        return new SmtaMetadataEntry[i];
    }
}
