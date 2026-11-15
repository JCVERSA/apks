package com.bytedance.adsdk.ugeno.Dq;

import android.os.Parcel;
import android.os.Parcelable;

public abstract class Sj implements Parcelable {
    private final Parcelable sP;
    public static final Sj Sj = new Sj() {
    };
    public static final Parcelable.Creator<Sj> CREATOR = new Parcelable.ClassLoaderCreator<Sj>() {
        @Override
        public Sj createFromParcel(Parcel parcel) {
            return createFromParcel(parcel, null);
        }

        @Override
        public Sj createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) == null) {
                return Sj.Sj;
            }
            throw new IllegalStateException("superState must be null");
        }

        @Override
        public Sj[] newArray(int i10) {
            return new Sj[i10];
        }
    };

    public final Parcelable Sj() {
        return this.sP;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.sP, i10);
    }

    private Sj() {
        this.sP = null;
    }

    protected Sj(Parcelable parcelable) {
        if (parcelable != null) {
            this.sP = parcelable == Sj ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    protected Sj(Parcel parcel, ClassLoader classLoader) {
        Parcelable parcelable = parcel.readParcelable(classLoader);
        this.sP = parcelable == null ? Sj : parcelable;
    }
}
