package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.ChapterTocFrame;

public class HZ implements Parcelable.Creator<ChapterTocFrame> {
    @Override
    public final ChapterTocFrame createFromParcel(Parcel parcel) {
        return new ChapterTocFrame(parcel);
    }

    @Override
    public final ChapterTocFrame[] newArray(int i) {
        return new ChapterTocFrame[i];
    }
}
