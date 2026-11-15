package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.CommentFrame;

public class C0946Ha implements Parcelable.Creator<CommentFrame> {
    @Override
    public final CommentFrame createFromParcel(Parcel parcel) {
        return new CommentFrame(parcel);
    }

    @Override
    public final CommentFrame[] newArray(int i) {
        return new CommentFrame[i];
    }
}
