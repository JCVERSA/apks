package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.internal.androidx.support.v7.widget.LinearLayoutManager$SavedState;

public class Q4 implements Parcelable.Creator<LinearLayoutManager$SavedState> {
    @Override
    public final LinearLayoutManager$SavedState createFromParcel(Parcel parcel) {
        return new LinearLayoutManager$SavedState(parcel);
    }

    @Override
    public final LinearLayoutManager$SavedState[] newArray(int i) {
        return new LinearLayoutManager$SavedState[i];
    }
}
