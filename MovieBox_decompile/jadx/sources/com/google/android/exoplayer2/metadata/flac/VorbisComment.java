package com.google.android.exoplayer2.metadata.flac;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;

@Deprecated
public class VorbisComment implements Metadata.Entry {
    public static final Parcelable.Creator<VorbisComment> CREATOR = new a();
    public final String key;
    public final String value;

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
        this.key = str;
        this.value = str2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        VorbisComment vorbisComment = (VorbisComment) obj;
        return this.key.equals(vorbisComment.key) && this.value.equals(vorbisComment.value);
    }

    @Override
    public byte[] getWrappedMetadataBytes() {
        return com.google.android.exoplayer2.metadata.a.a(this);
    }

    @Override
    public p1 getWrappedMetadataFormat() {
        return com.google.android.exoplayer2.metadata.a.b(this);
    }

    public int hashCode() {
        return ((527 + this.key.hashCode()) * 31) + this.value.hashCode();
    }

    @Override
    public void populateMediaMetadata(b2.b bVar) {
        String str = this.key;
        str.hashCode();
        switch (str) {
            case "ALBUM":
                bVar.L(this.value);
                break;
            case "TITLE":
                bVar.i0(this.value);
                break;
            case "DESCRIPTION":
                bVar.S(this.value);
                break;
            case "ALBUMARTIST":
                bVar.K(this.value);
                break;
            case "ARTIST":
                bVar.M(this.value);
                break;
        }
    }

    public String toString() {
        return "VC: " + this.key + UrlUtils.EQUAL_MARK + this.value;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.key);
        parcel.writeString(this.value);
    }

    protected VorbisComment(Parcel parcel) {
        this.key = (String) p0.j(parcel.readString());
        this.value = (String) p0.j(parcel.readString());
    }
}
