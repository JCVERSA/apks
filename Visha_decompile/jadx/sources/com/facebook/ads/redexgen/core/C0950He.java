package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.InternalFrame;

public class C0950He implements Parcelable.Creator<InternalFrame> {
    @Override
    public final InternalFrame createFromParcel(Parcel parcel) {
        return new InternalFrame(parcel);
    }

    @Override
    public final InternalFrame[] newArray(int i) {
        return new InternalFrame[i];
    }
}
