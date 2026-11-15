package com.mbridge.msdk.playercommon.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;

public final class InternalFrame extends Id3Frame {
    public static final Parcelable.Creator<InternalFrame> CREATOR = new Parcelable.Creator<InternalFrame>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public InternalFrame createFromParcel(Parcel parcel) {
            return new InternalFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public InternalFrame[] newArray(int i10) {
            return new InternalFrame[i10];
        }
    };
    public static final String ID = "----";
    public final String description;
    public final String domain;
    public final String text;

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
        return Util.areEqual(this.description, internalFrame.description) && Util.areEqual(this.domain, internalFrame.domain) && Util.areEqual(this.text, internalFrame.text);
    }

    public int hashCode() {
        String str = this.domain;
        int iHashCode = ((str != null ? str.hashCode() : 0) + 527) * 31;
        String str2 = this.description;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.text;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override
    public String toString() {
        return this.f35951id + ": domain=" + this.domain + ", description=" + this.description;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f35951id);
        parcel.writeString(this.domain);
        parcel.writeString(this.text);
    }

    InternalFrame(Parcel parcel) {
        super("----");
        this.domain = (String) Assertions.checkNotNull(parcel.readString());
        this.description = (String) Assertions.checkNotNull(parcel.readString());
        this.text = (String) Assertions.checkNotNull(parcel.readString());
    }
}
