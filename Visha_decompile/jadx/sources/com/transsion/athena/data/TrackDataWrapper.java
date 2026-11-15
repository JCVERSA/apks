package com.transsion.athena.data;

import android.os.Parcel;
import android.os.Parcelable;

public class TrackDataWrapper implements Parcelable {
    public static final Parcelable.Creator<TrackDataWrapper> CREATOR = new athena();
    private String a;
    private TrackData b;
    private long c;

    public class athena implements Parcelable.Creator<TrackDataWrapper> {
        @Override
        public TrackDataWrapper createFromParcel(Parcel parcel) {
            return new TrackDataWrapper(parcel);
        }

        @Override
        public TrackDataWrapper[] newArray(int i) {
            return new TrackDataWrapper[i];
        }
    }

    public TrackDataWrapper(String str, TrackData trackData, long j) {
        this.a = str;
        this.b = trackData;
        this.c = j;
    }

    public String a() {
        String str = this.a;
        return str == null ? "" : str;
    }

    public long b() {
        return this.c;
    }

    public TrackData c() {
        return this.b;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeParcelable(this.b, i);
        parcel.writeLong(this.c);
    }

    public TrackDataWrapper(Parcel parcel) {
        this.a = parcel.readString();
        this.b = (TrackData) parcel.readParcelable(TrackData.class.getClassLoader());
        this.c = parcel.readLong();
    }
}
