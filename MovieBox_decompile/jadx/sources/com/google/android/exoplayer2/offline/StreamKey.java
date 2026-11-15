package com.google.android.exoplayer2.offline;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

public final class StreamKey implements Comparable<StreamKey>, Parcelable {
    public static final Parcelable.Creator<StreamKey> CREATOR = new a();
    public final int groupIndex;
    public final int periodIndex;
    public final int streamIndex;

    @Deprecated
    public final int trackIndex;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public StreamKey createFromParcel(Parcel parcel) {
            return new StreamKey(parcel);
        }

        @Override
        public StreamKey[] newArray(int i10) {
            return new StreamKey[i10];
        }
    }

    public StreamKey(int i10, int i11) {
        this(0, i10, i11);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || StreamKey.class != obj.getClass()) {
            return false;
        }
        StreamKey streamKey = (StreamKey) obj;
        return this.periodIndex == streamKey.periodIndex && this.groupIndex == streamKey.groupIndex && this.streamIndex == streamKey.streamIndex;
    }

    public int hashCode() {
        return (((this.periodIndex * 31) + this.groupIndex) * 31) + this.streamIndex;
    }

    public String toString() {
        return this.periodIndex + "." + this.groupIndex + "." + this.streamIndex;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.periodIndex);
        parcel.writeInt(this.groupIndex);
        parcel.writeInt(this.streamIndex);
    }

    public StreamKey(int i10, int i11, int i12) {
        this.periodIndex = i10;
        this.groupIndex = i11;
        this.streamIndex = i12;
        this.trackIndex = i12;
    }

    @Override
    public int compareTo(StreamKey streamKey) {
        int i10 = this.periodIndex - streamKey.periodIndex;
        if (i10 != 0) {
            return i10;
        }
        int i11 = this.groupIndex - streamKey.groupIndex;
        return i11 == 0 ? this.streamIndex - streamKey.streamIndex : i11;
    }

    StreamKey(Parcel parcel) {
        this.periodIndex = parcel.readInt();
        this.groupIndex = parcel.readInt();
        int i10 = parcel.readInt();
        this.streamIndex = i10;
        this.trackIndex = i10;
    }
}
