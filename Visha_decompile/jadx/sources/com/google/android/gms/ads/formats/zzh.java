package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class zzh implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        IBinder iBinderD = null;
        boolean zW = false;
        IBinder iBinderD2 = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                zW = SafeParcelReader.w(parcel, iC);
            } else if (iV == 2) {
                iBinderD = SafeParcelReader.D(parcel, iC);
            } else if (iV != 3) {
                SafeParcelReader.K(parcel, iC);
            } else {
                iBinderD2 = SafeParcelReader.D(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new PublisherAdViewOptions(zW, iBinderD, iBinderD2);
    }

    @Override
    public final Object[] newArray(int i) {
        return new PublisherAdViewOptions[i];
    }
}
