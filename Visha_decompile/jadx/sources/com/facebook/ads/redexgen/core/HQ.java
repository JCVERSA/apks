package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.flac.PictureFrame;

public class HQ implements Parcelable.Creator<PictureFrame> {
    @Override
    public final PictureFrame createFromParcel(Parcel parcel) {
        return new PictureFrame(parcel);
    }

    @Override
    public final PictureFrame[] newArray(int i) {
        return new PictureFrame[i];
    }
}
