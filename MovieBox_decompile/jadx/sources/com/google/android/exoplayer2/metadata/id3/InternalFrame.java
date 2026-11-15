package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p0;

public final class InternalFrame extends Id3Frame {
    public static final Parcelable.Creator<InternalFrame> CREATOR = new a();
    public static final String ID = "----";
    public final String description;
    public final String domain;
    public final String text;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public InternalFrame createFromParcel(Parcel parcel) {
            return new InternalFrame(parcel);
        }

        @Override
        public InternalFrame[] newArray(int i10) {
            return new InternalFrame[i10];
        }
    }

    public InternalFrame(String str, String str2, String str3) {
        super("----");
        this.domain = str;
        this.description = str2;
        this.text = str3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || InternalFrame.class != obj.getClass()) {
            return false;
        }
        InternalFrame internalFrame = (InternalFrame) obj;
        return p0.c(this.description, internalFrame.description) && p0.c(this.domain, internalFrame.domain) && p0.c(this.text, internalFrame.text);
    }

    public int hashCode() {
        String str = this.domain;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.description;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.text;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override
    public String toString() {
        return this.f24796id + ": domain=" + this.domain + ", description=" + this.description;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f24796id);
        parcel.writeString(this.domain);
        parcel.writeString(this.text);
    }

    InternalFrame(Parcel parcel) {
        super("----");
        this.domain = (String) p0.j(parcel.readString());
        this.description = (String) p0.j(parcel.readString());
        this.text = (String) p0.j(parcel.readString());
    }
}
