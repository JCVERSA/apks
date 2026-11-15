package com.mbridge.msdk.playercommon.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.util.Arrays;

public final class PrivFrame extends Id3Frame {
    public static final Parcelable.Creator<PrivFrame> CREATOR = new Parcelable.Creator<PrivFrame>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PrivFrame createFromParcel(Parcel parcel) {
            return new PrivFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PrivFrame[] newArray(int i10) {
            return new PrivFrame[i10];
        }
    };
    public static final String ID = "PRIV";
    public final String owner;
    public final byte[] privateData;

    public PrivFrame(String str, byte[] bArr) {
        super("PRIV");
        this.owner = str;
        this.privateData = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || PrivFrame.class != obj.getClass()) {
            return false;
        }
        PrivFrame privFrame = (PrivFrame) obj;
        return Util.areEqual(this.owner, privFrame.owner) && Arrays.equals(this.privateData, privFrame.privateData);
    }

    public int hashCode() {
        String str = this.owner;
        return (((str != null ? str.hashCode() : 0) + 527) * 31) + Arrays.hashCode(this.privateData);
    }

    @Override
    public String toString() {
        return this.f35951id + ": owner=" + this.owner;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.owner);
        parcel.writeByteArray(this.privateData);
    }

    PrivFrame(Parcel parcel) {
        super("PRIV");
        this.owner = parcel.readString();
        this.privateData = parcel.createByteArray();
    }
}
