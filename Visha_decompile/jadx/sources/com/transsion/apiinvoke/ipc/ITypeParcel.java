package com.transsion.apiinvoke.ipc;

import android.os.Parcel;

public interface ITypeParcel<T> {
    T readFormParcel(Parcel parcel, Class cls);

    void writeToParcel(Parcel parcel, Class cls, T t, int i);
}
