package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$SavedState;

public class QY implements Parcelable.ClassLoaderCreator<RecyclerView$SavedState> {
    @Override
    public final RecyclerView$SavedState createFromParcel(Parcel parcel) {
        return new RecyclerView$SavedState(parcel, null);
    }

    @Override
    public final RecyclerView$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new RecyclerView$SavedState(parcel, classLoader);
    }

    @Override
    public final RecyclerView$SavedState[] newArray(int i) {
        return new RecyclerView$SavedState[i];
    }
}
