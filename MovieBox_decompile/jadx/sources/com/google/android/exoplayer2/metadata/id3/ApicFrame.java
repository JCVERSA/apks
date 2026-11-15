package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.util.p0;
import java.util.Arrays;

public final class ApicFrame extends Id3Frame {
    public static final Parcelable.Creator<ApicFrame> CREATOR = new a();
    public static final String ID = "APIC";

    @Nullable
    public final String description;
    public final String mimeType;
    public final byte[] pictureData;
    public final int pictureType;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public ApicFrame createFromParcel(Parcel parcel) {
            return new ApicFrame(parcel);
        }

        @Override
        public ApicFrame[] newArray(int i10) {
            return new ApicFrame[i10];
        }
    }

    public ApicFrame(String str, @Nullable String str2, int i10, byte[] bArr) {
        super("APIC");
        this.mimeType = str;
        this.description = str2;
        this.pictureType = i10;
        this.pictureData = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ApicFrame.class != obj.getClass()) {
            return false;
        }
        ApicFrame apicFrame = (ApicFrame) obj;
        return this.pictureType == apicFrame.pictureType && p0.c(this.mimeType, apicFrame.mimeType) && p0.c(this.description, apicFrame.description) && Arrays.equals(this.pictureData, apicFrame.pictureData);
    }

    public int hashCode() {
        int i10 = (527 + this.pictureType) * 31;
        String str = this.mimeType;
        int iHashCode = (i10 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.description;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.pictureData);
    }

    @Override
    public void populateMediaMetadata(b2.b bVar) {
        bVar.G(this.pictureData, this.pictureType);
    }

    @Override
    public String toString() {
        return this.f24796id + ": mimeType=" + this.mimeType + ", description=" + this.description;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.mimeType);
        parcel.writeString(this.description);
        parcel.writeInt(this.pictureType);
        parcel.writeByteArray(this.pictureData);
    }

    ApicFrame(Parcel parcel) {
        super("APIC");
        this.mimeType = (String) p0.j(parcel.readString());
        this.description = parcel.readString();
        this.pictureType = parcel.readInt();
        this.pictureData = (byte[]) p0.j(parcel.createByteArray());
    }
}
