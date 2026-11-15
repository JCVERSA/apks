package com.google.android.gms.gcm;

import android.os.Parcel;
import android.os.Parcelable;

final class zzi implements Parcelable.Creator<OneoffTask> {
    zzi() {
    }

    @Override
    public final OneoffTask createFromParcel(Parcel parcel) {
        return new OneoffTask(parcel, (zzi) null);
    }

    @Override
    public final OneoffTask[] newArray(int i10) {
        return new OneoffTask[i10];
    }
}
