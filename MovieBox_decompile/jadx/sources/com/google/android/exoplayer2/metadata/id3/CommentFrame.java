package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p0;

public final class CommentFrame extends Id3Frame {
    public static final Parcelable.Creator<CommentFrame> CREATOR = new a();
    public static final String ID = "COMM";
    public final String description;
    public final String language;
    public final String text;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public CommentFrame createFromParcel(Parcel parcel) {
            return new CommentFrame(parcel);
        }

        @Override
        public CommentFrame[] newArray(int i10) {
            return new CommentFrame[i10];
        }
    }

    public CommentFrame(String str, String str2, String str3) {
        super("COMM");
        this.language = str;
        this.description = str2;
        this.text = str3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || CommentFrame.class != obj.getClass()) {
            return false;
        }
        CommentFrame commentFrame = (CommentFrame) obj;
        return p0.c(this.description, commentFrame.description) && p0.c(this.language, commentFrame.language) && p0.c(this.text, commentFrame.text);
    }

    public int hashCode() {
        String str = this.language;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.description;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.text;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override
    public String toString() {
        return this.f24796id + ": language=" + this.language + ", description=" + this.description;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f24796id);
        parcel.writeString(this.language);
        parcel.writeString(this.text);
    }

    CommentFrame(Parcel parcel) {
        super("COMM");
        this.language = (String) p0.j(parcel.readString());
        this.description = (String) p0.j(parcel.readString());
        this.text = (String) p0.j(parcel.readString());
    }
}
