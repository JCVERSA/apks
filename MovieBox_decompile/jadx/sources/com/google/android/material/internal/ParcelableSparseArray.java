package com.google.android.material.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class ParcelableSparseArray extends SparseArray<Parcelable> implements Parcelable {
    public static final Parcelable.Creator<ParcelableSparseArray> CREATOR = new a();

    class a implements Parcelable.ClassLoaderCreator {
        a() {
        }

        @Override
        public ParcelableSparseArray createFromParcel(Parcel parcel) {
            return new ParcelableSparseArray(parcel, null);
        }

        @Override
        public ParcelableSparseArray createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new ParcelableSparseArray(parcel, classLoader);
        }

        @Override
        public ParcelableSparseArray[] newArray(int i10) {
            return new ParcelableSparseArray[i10];
        }
    }

    public ParcelableSparseArray() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int size = size();
        int[] iArr = new int[size];
        Parcelable[] parcelableArr = new Parcelable[size];
        for (int i11 = 0; i11 < size; i11++) {
            iArr[i11] = keyAt(i11);
            parcelableArr[i11] = valueAt(i11);
        }
        parcel.writeInt(size);
        parcel.writeIntArray(iArr);
        parcel.writeParcelableArray(parcelableArr, i10);
    }

    public ParcelableSparseArray(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
        int i10 = parcel.readInt();
        int[] iArr = new int[i10];
        parcel.readIntArray(iArr);
        Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
        for (int i11 = 0; i11 < i10; i11++) {
            put(iArr[i11], parcelableArray[i11]);
        }
    }
}
