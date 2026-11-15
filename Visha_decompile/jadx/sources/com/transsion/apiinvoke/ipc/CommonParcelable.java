package com.transsion.apiinvoke.ipc;

import android.os.Parcel;
import android.os.Parcelable;
import com.transsion.apiinvoke.invoke.TypeValuePair;
import java.util.LinkedHashMap;
import java.util.Map;

public class CommonParcelable<T> implements Parcelable {
    public static final Parcelable.Creator<CommonParcelable> CREATOR = new Parcelable.Creator<CommonParcelable>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public CommonParcelable createFromParcel(Parcel parcel) {
            return new CommonParcelable(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public CommonParcelable[] newArray(int i) {
            return new CommonParcelable[i];
        }
    };
    private Map<String, TypeValuePair> mapValue;

    public CommonParcelable() {
        this.mapValue = new LinkedHashMap();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public void putValue(String str, T t) {
        this.mapValue.put(str, TypeValuePair.create(t.getClass(), t));
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeSerializable(Map.class);
        TypeParcelFactor.getFactor().writeToParcel(parcel, Map.class, this.mapValue, i);
    }

    public void putValue(String str, Class<T> cls, T t) {
        this.mapValue.put(str, TypeValuePair.create(cls, t));
    }

    public CommonParcelable(Parcel parcel) {
        this.mapValue = new LinkedHashMap();
        this.mapValue = (Map) TypeParcelFactor.getFactor().readFormParcel(parcel, (Class) parcel.readSerializable());
    }
}
