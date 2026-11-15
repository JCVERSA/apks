package com.transsion.apiinvoke.ipc;

import android.os.Parcel;
import android.os.Parcelable;
import com.transsion.apiinvoke.invoke.ApiResponse;

public class ParcelResponse<T extends ApiResponse> implements Parcelable {
    public static final Parcelable.Creator<ParcelResponse> CREATOR = new Parcelable.Creator<ParcelResponse>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ParcelResponse createFromParcel(Parcel parcel) {
            return new ParcelResponse(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ParcelResponse[] newArray(int i) {
            return new ParcelResponse[i];
        }
    };
    private T response;

    public ParcelResponse(T t) {
        this.response = t;
    }

    @Override
    public int describeContents() {
        return 1;
    }

    public T getResponse() {
        return this.response;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        T t = this.response;
        Class<?> cls = t == null ? ApiResponse.class : t.getClass();
        parcel.writeSerializable(cls);
        TypeParcelFactor.getFactor().writeToParcel(parcel, cls, this.response, i);
    }

    public ParcelResponse(Parcel parcel) {
        this.response = (T) TypeParcelFactor.getFactor().readFormParcel(parcel, (Class) parcel.readSerializable());
    }
}
