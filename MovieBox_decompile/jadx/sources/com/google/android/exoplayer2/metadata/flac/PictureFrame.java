package com.google.android.exoplayer2.metadata.flac;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.common.base.c;
import java.util.Arrays;

public final class PictureFrame implements Metadata.Entry {
    public static final Parcelable.Creator<PictureFrame> CREATOR = new a();
    public final int colors;
    public final int depth;
    public final String description;
    public final int height;
    public final String mimeType;
    public final byte[] pictureData;
    public final int pictureType;
    public final int width;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public PictureFrame createFromParcel(Parcel parcel) {
            return new PictureFrame(parcel);
        }

        @Override
        public PictureFrame[] newArray(int i10) {
            return new PictureFrame[i10];
        }
    }

    public PictureFrame(int i10, String str, String str2, int i11, int i12, int i13, int i14, byte[] bArr) {
        this.pictureType = i10;
        this.mimeType = str;
        this.description = str2;
        this.width = i11;
        this.height = i12;
        this.depth = i13;
        this.colors = i14;
        this.pictureData = bArr;
    }

    public static PictureFrame fromPictureBlock(d0 d0Var) {
        int iN = d0Var.n();
        String strB = d0Var.B(d0Var.n(), c.f29401a);
        String strA = d0Var.A(d0Var.n());
        int iN2 = d0Var.n();
        int iN3 = d0Var.n();
        int iN4 = d0Var.n();
        int iN5 = d0Var.n();
        int iN6 = d0Var.n();
        byte[] bArr = new byte[iN6];
        d0Var.j(bArr, 0, iN6);
        return new PictureFrame(iN, strB, strA, iN2, iN3, iN4, iN5, bArr);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || PictureFrame.class != obj.getClass()) {
            return false;
        }
        PictureFrame pictureFrame = (PictureFrame) obj;
        return this.pictureType == pictureFrame.pictureType && this.mimeType.equals(pictureFrame.mimeType) && this.description.equals(pictureFrame.description) && this.width == pictureFrame.width && this.height == pictureFrame.height && this.depth == pictureFrame.depth && this.colors == pictureFrame.colors && Arrays.equals(this.pictureData, pictureFrame.pictureData);
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
        return ((((((((((((((527 + this.pictureType) * 31) + this.mimeType.hashCode()) * 31) + this.description.hashCode()) * 31) + this.width) * 31) + this.height) * 31) + this.depth) * 31) + this.colors) * 31) + Arrays.hashCode(this.pictureData);
    }

    @Override
    public void populateMediaMetadata(b2.b bVar) {
        bVar.G(this.pictureData, this.pictureType);
    }

    public String toString() {
        return "Picture: mimeType=" + this.mimeType + ", description=" + this.description;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.pictureType);
        parcel.writeString(this.mimeType);
        parcel.writeString(this.description);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeInt(this.depth);
        parcel.writeInt(this.colors);
        parcel.writeByteArray(this.pictureData);
    }

    PictureFrame(Parcel parcel) {
        this.pictureType = parcel.readInt();
        this.mimeType = (String) p0.j(parcel.readString());
        this.description = (String) p0.j(parcel.readString());
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.depth = parcel.readInt();
        this.colors = parcel.readInt();
        this.pictureData = (byte[]) p0.j(parcel.createByteArray());
    }
}
