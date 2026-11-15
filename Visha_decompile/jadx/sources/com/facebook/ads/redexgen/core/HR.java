package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.flac.VorbisComment;

public class HR implements Parcelable.Creator<VorbisComment> {
    @Override
    public final VorbisComment createFromParcel(Parcel parcel) {
        return new VorbisComment(parcel);
    }

    @Override
    public final VorbisComment[] newArray(int i) {
        return new VorbisComment[i];
    }
}
