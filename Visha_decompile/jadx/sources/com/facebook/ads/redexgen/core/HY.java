package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.ChapterFrame;

public class HY implements Parcelable.Creator<ChapterFrame> {
    @Override
    public final ChapterFrame createFromParcel(Parcel parcel) {
        return new ChapterFrame(parcel);
    }

    @Override
    public final ChapterFrame[] newArray(int i) {
        return new ChapterFrame[i];
    }
}
