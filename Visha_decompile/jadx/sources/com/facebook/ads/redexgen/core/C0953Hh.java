package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.TextInformationFrame;

public class C0953Hh implements Parcelable.Creator<TextInformationFrame> {
    @Override
    public final TextInformationFrame createFromParcel(Parcel parcel) {
        return new TextInformationFrame(parcel, null);
    }

    @Override
    public final TextInformationFrame[] newArray(int i) {
        return new TextInformationFrame[i];
    }
}
