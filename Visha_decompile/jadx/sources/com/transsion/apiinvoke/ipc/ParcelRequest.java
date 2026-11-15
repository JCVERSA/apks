package com.transsion.apiinvoke.ipc;

import android.os.Parcel;
import android.os.Parcelable;
import com.transsion.apiinvoke.invoke.ApiRequest;

public class ParcelRequest<T extends ApiRequest> implements Parcelable {
    public static final Parcelable.Creator<ParcelRequest> CREATOR = new Parcelable.Creator<ParcelRequest>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ParcelRequest createFromParcel(Parcel parcel) {
            return new ParcelRequest(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ParcelRequest[] newArray(int i) {
            return new ParcelRequest[i];
        }
    };
    T mRequest;

    public ParcelRequest(T t) {
        this.mRequest = t;
    }

    @Override
    public int describeContents() {
        return 1;
    }

    public T getRequest() {
        return this.mRequest;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        T t = this.mRequest;
        Class<?> cls = t != null ? t.getClass() : ApiRequest.class;
        parcel.writeSerializable(cls);
        TypeParcelFactor.getFactor().writeToParcel(parcel, cls, this.mRequest, i);
    }

    public ParcelRequest(Parcel parcel) {
        this.mRequest = (T) TypeParcelFactor.getFactor().readFormParcel(parcel, (Class) parcel.readSerializable());
    }
}
