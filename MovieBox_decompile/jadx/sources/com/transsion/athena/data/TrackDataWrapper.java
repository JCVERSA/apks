package com.transsion.athena.data;

import android.os.Parcel;
import android.os.Parcelable;

public class TrackDataWrapper implements Parcelable {
    public static final Parcelable.Creator<TrackDataWrapper> CREATOR = new athena();

    private String f41535a;

    private TrackData f41536b;

    private long f41537c;

    class athena implements Parcelable.Creator<TrackDataWrapper> {
        athena() {
        }

        @Override
        public TrackDataWrapper createFromParcel(Parcel parcel) {
            return new TrackDataWrapper(parcel);
        }

        @Override
        public TrackDataWrapper[] newArray(int i10) {
            return new TrackDataWrapper[i10];
        }
    }

    public TrackDataWrapper(String str, TrackData trackData, long j10) {
        this.f41535a = str;
        this.f41536b = trackData;
        this.f41537c = j10;
    }

    public String a() {
        String str = this.f41535a;
        return str == null ? "" : str;
    }

    public long b() {
        return this.f41537c;
    }

    public TrackData c() {
        return this.f41536b;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f41535a);
        parcel.writeParcelable(this.f41536b, i10);
        parcel.writeLong(this.f41537c);
    }

    protected TrackDataWrapper(Parcel parcel) {
        this.f41535a = parcel.readString();
        this.f41536b = (TrackData) parcel.readParcelable(TrackData.class.getClassLoader());
        this.f41537c = parcel.readLong();
    }
}
