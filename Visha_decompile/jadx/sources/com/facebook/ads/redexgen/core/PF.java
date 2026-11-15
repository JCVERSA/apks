package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.internal.androidx.support.v4.view.ViewPager$SavedState;

public class PF implements Parcelable.ClassLoaderCreator<ViewPager$SavedState> {
    @Override
    public final ViewPager$SavedState createFromParcel(Parcel parcel) {
        return new ViewPager$SavedState(parcel, null);
    }

    @Override
    public final ViewPager$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new ViewPager$SavedState(parcel, classLoader);
    }

    @Override
    public final ViewPager$SavedState[] newArray(int i) {
        return new ViewPager$SavedState[i];
    }
}
