package com.transsion.apiinvoke.ipc.typeparcel;

import android.os.Parcel;
import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.ipc.ITypeParcel;

public abstract class AbstractTypeParcel<T> implements ITypeParcel<T> {
    private static final String TAG = "AbstractTypeParcel";

    public boolean hasDescribeContents(Parcel parcel) {
        return false;
    }

    public void initParcelHeader(ParcelHeader parcelHeader) {
    }

    @Override
    public T readFormParcel(Parcel parcel, Class cls) {
        ParcelHeader parcelHeaderEmpty;
        if (hasDescribeContents(parcel)) {
            parcelHeaderEmpty = readHeader(parcel);
            ApiInvokeLog.logInfo(TAG, "readFormParcel, readHeader " + cls.getName());
        } else {
            parcelHeaderEmpty = ParcelHeader.empty();
            ApiInvokeLog.logInfo(TAG, "readFormParcel, oldVersion " + cls.getName());
        }
        return readParcel(parcel, cls, parcelHeaderEmpty);
    }

    public ParcelHeader readHeader(Parcel parcel) {
        return ParcelHeader.readParcelHeader(parcel);
    }

    public abstract T readParcel(Parcel parcel, Class cls, ParcelHeader parcelHeader);

    public void writeHeader(Parcel parcel, ParcelHeader parcelHeader) {
        parcelHeader.writeParcelHeader(parcel, parcelHeader);
    }

    public abstract void writeParcel(Parcel parcel, Class cls, T t, int i);

    @Override
    public void writeToParcel(Parcel parcel, Class cls, T t, int i) {
        ParcelHeader parcelHeader = new ParcelHeader();
        initParcelHeader(parcelHeader);
        writeHeader(parcel, parcelHeader);
        ApiInvokeLog.logInfo(TAG, "writeToParcel, writeHeader " + cls.getName());
        writeParcel(parcel, cls, t, i);
    }
}
