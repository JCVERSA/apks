package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.GeobFrame;

public class C0947Hb implements Parcelable.Creator<GeobFrame> {
    @Override
    public final GeobFrame createFromParcel(Parcel parcel) {
        return new GeobFrame(parcel);
    }

    @Override
    public final GeobFrame[] newArray(int i) {
        return new GeobFrame[i];
    }
}
