package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.mp4.MotionPhotoMetadata;

public class C0957Hl implements Parcelable.Creator<MotionPhotoMetadata> {
    @Override
    public final MotionPhotoMetadata createFromParcel(Parcel parcel) {
        return new MotionPhotoMetadata(parcel, null);
    }

    @Override
    public final MotionPhotoMetadata[] newArray(int i) {
        return new MotionPhotoMetadata[i];
    }
}
