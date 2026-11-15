package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p0;

public final class UrlLinkFrame extends Id3Frame {
    public static final Parcelable.Creator<UrlLinkFrame> CREATOR = new a();

    @Nullable
    public final String description;
    public final String url;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public UrlLinkFrame createFromParcel(Parcel parcel) {
            return new UrlLinkFrame(parcel);
        }

        @Override
        public UrlLinkFrame[] newArray(int i10) {
            return new UrlLinkFrame[i10];
        }
    }

    public UrlLinkFrame(String str, @Nullable String str2, String str3) {
        super(str);
        this.description = str2;
        this.url = str3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || UrlLinkFrame.class != obj.getClass()) {
            return false;
        }
        UrlLinkFrame urlLinkFrame = (UrlLinkFrame) obj;
        return this.f24796id.equals(urlLinkFrame.f24796id) && p0.c(this.description, urlLinkFrame.description) && p0.c(this.url, urlLinkFrame.url);
    }

    public int hashCode() {
        int iHashCode = (527 + this.f24796id.hashCode()) * 31;
        String str = this.description;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.url;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @Override
    public String toString() {
        return this.f24796id + ": url=" + this.url;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f24796id);
        parcel.writeString(this.description);
        parcel.writeString(this.url);
    }

    UrlLinkFrame(Parcel parcel) {
        super((String) p0.j(parcel.readString()));
        this.description = parcel.readString();
        this.url = (String) p0.j(parcel.readString());
    }
}
