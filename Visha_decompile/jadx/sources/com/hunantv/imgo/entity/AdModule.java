package com.hunantv.imgo.entity;

import android.os.Parcel;
import android.os.Parcelable;

public class AdModule implements Parcelable, com.mgtv.json.JsonInterface {
    public static final Parcelable.Creator<AdModule> CREATOR = new Parcelable.Creator<AdModule>() {
        @Override
        public AdModule createFromParcel(Parcel parcel) {
            return new AdModule(parcel);
        }

        @Override
        public AdModule[] newArray(int i) {
            return new AdModule[i];
        }
    };
    public int isADCache;
    public int useADSdk;
    public int videoPPStatus;

    public AdModule(Parcel parcel) {
        this.videoPPStatus = parcel.readInt();
        this.isADCache = parcel.readInt();
        this.useADSdk = parcel.readInt();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.videoPPStatus);
        parcel.writeInt(this.isADCache);
        parcel.writeInt(this.useADSdk);
    }
}
