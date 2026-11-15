package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.exoplayer.scheduler.Requirements;

public class C0804Bm implements Parcelable.Creator<Requirements> {
    @Override
    public final Requirements createFromParcel(Parcel parcel) {
        return new Requirements(parcel.readInt());
    }

    @Override
    public final Requirements[] newArray(int i) {
        return new Requirements[i];
    }
}
