package com.google.android.gms.gcm;

import android.os.Parcel;
import android.os.Parcelable;

final class zzj implements Parcelable.Creator<PendingCallback> {
    zzj() {
    }

    @Override
    public final PendingCallback createFromParcel(Parcel parcel) {
        return new PendingCallback(parcel);
    }

    @Override
    public final PendingCallback[] newArray(int i10) {
        return new PendingCallback[i10];
    }
}
