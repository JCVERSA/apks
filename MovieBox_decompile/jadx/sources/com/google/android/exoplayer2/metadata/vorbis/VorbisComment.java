package com.google.android.exoplayer2.metadata.vorbis;

import android.os.Parcel;
import android.os.Parcelable;

public final class VorbisComment extends com.google.android.exoplayer2.metadata.flac.VorbisComment {
    public static final Parcelable.Creator<VorbisComment> CREATOR = new a();

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public VorbisComment createFromParcel(Parcel parcel) {
            return new VorbisComment(parcel);
        }

        @Override
        public VorbisComment[] newArray(int i10) {
            return new VorbisComment[i10];
        }
    }

    public VorbisComment(String str, String str2) {
        super(str, str2);
    }

    VorbisComment(Parcel parcel) {
        super(parcel);
    }
}
