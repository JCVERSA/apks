package com.transsion.letswitch.ipc.type;

import android.os.Parcel;
import androidx.annotation.Keep;

@Keep
public interface ITypeParcel<T> {
    T readFormParcel(Parcel parcel, Class cls);

    void writeToParcel(Parcel parcel, Class cls, T t, int i);
}
