package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p0;
import java.util.Arrays;

public final class BinaryFrame extends Id3Frame {
    public static final Parcelable.Creator<BinaryFrame> CREATOR = new a();
    public final byte[] data;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public BinaryFrame createFromParcel(Parcel parcel) {
            return new BinaryFrame(parcel);
        }

        @Override
        public BinaryFrame[] newArray(int i10) {
            return new BinaryFrame[i10];
        }
    }

    public BinaryFrame(String str, byte[] bArr) {
        super(str);
        this.data = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || BinaryFrame.class != obj.getClass()) {
            return false;
        }
        BinaryFrame binaryFrame = (BinaryFrame) obj;
        return this.f24796id.equals(binaryFrame.f24796id) && Arrays.equals(this.data, binaryFrame.data);
    }

    public int hashCode() {
        return ((527 + this.f24796id.hashCode()) * 31) + Arrays.hashCode(this.data);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f24796id);
        parcel.writeByteArray(this.data);
    }

    BinaryFrame(Parcel parcel) {
        super((String) p0.j(parcel.readString()));
        this.data = (byte[]) p0.j(parcel.createByteArray());
    }
}
