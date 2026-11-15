package com.transsion.apiinvoke.ipc;

import android.os.Parcel;
import android.os.Parcelable;
import com.transsion.apiinvoke.invoke.TransformData;

public class ParcelTransformData<T extends TransformData> implements Parcelable {
    public static final Parcelable.Creator<ParcelTransformData> CREATOR = new Parcelable.Creator<ParcelTransformData>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ParcelTransformData createFromParcel(Parcel parcel) {
            return new ParcelTransformData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ParcelTransformData[] newArray(int i) {
            return new ParcelTransformData[i];
        }
    };
    T data;

    public ParcelTransformData(T t) {
        this.data = t;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public T getData() {
        return this.data;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        T t = this.data;
        Class<?> cls = t != null ? t.getClass() : TransformData.class;
        parcel.writeSerializable(cls);
        TypeParcelFactor.getFactor().writeToParcel(parcel, cls, this.data, i);
    }

    public ParcelTransformData(Parcel parcel) {
        this.data = (T) TypeParcelFactor.getFactor().readFormParcel(parcel, (Class) parcel.readSerializable());
    }
}
