package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.List;

public final class c implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        List<Location> listT = LocationResult.zza;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 1) {
                SafeParcelReader.K(parcel, iC);
            } else {
                listT = SafeParcelReader.t(parcel, iC, Location.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new LocationResult(listT);
    }

    @Override
    public final Object[] newArray(int i) {
        return new LocationResult[i];
    }
}
