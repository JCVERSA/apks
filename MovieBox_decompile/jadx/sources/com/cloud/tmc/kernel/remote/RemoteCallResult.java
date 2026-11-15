package com.cloud.tmc.kernel.remote;

import android.os.Parcel;
import android.os.Parcelable;

public class RemoteCallResult implements Parcelable {
    public static final Parcelable.Creator<RemoteCallResult> CREATOR = new Parcelable.Creator<RemoteCallResult>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public RemoteCallResult createFromParcel(Parcel parcel) {
            return new RemoteCallResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public RemoteCallResult[] newArray(int i10) {
            return new RemoteCallResult[i10];
        }
    };
    private boolean isError;
    private Object value;

    public RemoteCallResult(Object obj) {
        this.isError = false;
        if (obj instanceof Throwable) {
            this.isError = true;
        }
        this.value = obj;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public Object getValue() {
        return this.value;
    }

    public boolean isError() {
        return this.isError;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeByte(this.isError ? (byte) 1 : (byte) 0);
        parcel.writeValue(this.value);
    }

    protected RemoteCallResult(Parcel parcel) {
        this.isError = false;
        this.isError = parcel.readByte() != 0;
        this.value = parcel.readValue(getClass().getClassLoader());
    }
}
