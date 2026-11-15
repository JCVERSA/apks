package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.UrlLinkFrame;

public class C0954Hi implements Parcelable.Creator<UrlLinkFrame> {
    @Override
    public final UrlLinkFrame createFromParcel(Parcel parcel) {
        return new UrlLinkFrame(parcel);
    }

    @Override
    public final UrlLinkFrame[] newArray(int i) {
        return new UrlLinkFrame[i];
    }
}
