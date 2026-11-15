package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.MlltFrame;

public class C0951Hf implements Parcelable.Creator<MlltFrame> {
    @Override
    public final MlltFrame createFromParcel(Parcel parcel) {
        return new MlltFrame(parcel);
    }

    @Override
    public final MlltFrame[] newArray(int i) {
        return new MlltFrame[i];
    }
}
