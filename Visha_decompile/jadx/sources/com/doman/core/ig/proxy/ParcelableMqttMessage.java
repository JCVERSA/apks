package com.doman.core.ig.proxy;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.tod;

public class ParcelableMqttMessage extends tod implements Parcelable {
    public static final Parcelable.Creator<ParcelableMqttMessage> CREATOR = new Parcelable.Creator<ParcelableMqttMessage>() {
        @Override
        public final ParcelableMqttMessage createFromParcel(Parcel parcel) {
            return new ParcelableMqttMessage(parcel);
        }

        @Override
        public final ParcelableMqttMessage[] newArray(int i) {
            return new ParcelableMqttMessage[i];
        }
    };
    String a;

    public ParcelableMqttMessage(Parcel parcel) {
        super(parcel.createByteArray());
        this.a = null;
        setQos(parcel.readInt());
        boolean[] zArrCreateBooleanArray = parcel.createBooleanArray();
        setRetained(zArrCreateBooleanArray[0]);
        setDuplicate(zArrCreateBooleanArray[1]);
        this.a = parcel.readString();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByteArray(getPayload());
        parcel.writeInt(getQos());
        parcel.writeBooleanArray(new boolean[]{isRetained(), isDuplicate()});
        parcel.writeString(this.a);
    }

    public ParcelableMqttMessage(tod todVar) {
        super(todVar.getPayload());
        this.a = null;
        setQos(todVar.getQos());
        setRetained(todVar.isRetained());
        setDuplicate(todVar.isDuplicate());
    }
}
