package com.google.android.gms.gcm;

import android.os.Parcel;
import android.os.Parcelable;

final class zzk implements Parcelable.Creator<PeriodicTask> {
    zzk() {
    }

    @Override
    public final PeriodicTask createFromParcel(Parcel parcel) {
        return new PeriodicTask(parcel, (zzk) null);
    }

    @Override
    public final PeriodicTask[] newArray(int i10) {
        return new PeriodicTask[i10];
    }
}
