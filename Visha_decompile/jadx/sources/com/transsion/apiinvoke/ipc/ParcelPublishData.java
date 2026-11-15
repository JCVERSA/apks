package com.transsion.apiinvoke.ipc;

import android.os.Parcel;
import android.os.Parcelable;
import com.transsion.apiinvoke.subscribe.PublishData;

public class ParcelPublishData implements Parcelable {
    public static final Parcelable.Creator<ParcelPublishData> CREATOR = new Parcelable.Creator<ParcelPublishData>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ParcelPublishData createFromParcel(Parcel parcel) {
            return new ParcelPublishData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ParcelPublishData[] newArray(int i) {
            return new ParcelPublishData[i];
        }
    };
    private PublishData publishData;

    public ParcelPublishData() {
    }

    @Override
    public int describeContents() {
        return 1;
    }

    public PublishData getPublishData() {
        return this.publishData;
    }

    public void setPublishData(PublishData publishData) {
        this.publishData = publishData;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeSerializable(PublishData.class);
        TypeParcelFactor.getFactor().writeToParcel(parcel, PublishData.class, this.publishData, i);
    }

    public ParcelPublishData(PublishData publishData) {
        this.publishData = publishData;
    }

    public ParcelPublishData(Parcel parcel) {
        this.publishData = (PublishData) TypeParcelFactor.getFactor().readFormParcel(parcel, (Class) parcel.readSerializable());
    }
}
