package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.LocationRequest;
import java.util.List;

public final class e implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        List<ClientIdentity> listT = zzba.zza;
        LocationRequest locationRequest = null;
        String strP = null;
        String strP2 = null;
        String strP3 = null;
        boolean zW = false;
        boolean zW2 = false;
        boolean zW3 = false;
        boolean zW4 = false;
        boolean zW5 = false;
        long jG = Long.MAX_VALUE;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV != 1) {
                switch (iV) {
                    case 5:
                        listT = SafeParcelReader.t(parcel, iC, ClientIdentity.CREATOR);
                        break;
                    case 6:
                        strP = SafeParcelReader.p(parcel, iC);
                        break;
                    case 7:
                        zW = SafeParcelReader.w(parcel, iC);
                        break;
                    case 8:
                        zW2 = SafeParcelReader.w(parcel, iC);
                        break;
                    case 9:
                        zW3 = SafeParcelReader.w(parcel, iC);
                        break;
                    case 10:
                        strP2 = SafeParcelReader.p(parcel, iC);
                        break;
                    case 11:
                        zW4 = SafeParcelReader.w(parcel, iC);
                        break;
                    case 12:
                        zW5 = SafeParcelReader.w(parcel, iC);
                        break;
                    case 13:
                        strP3 = SafeParcelReader.p(parcel, iC);
                        break;
                    case 14:
                        jG = SafeParcelReader.G(parcel, iC);
                        break;
                    default:
                        SafeParcelReader.K(parcel, iC);
                        break;
                }
            } else {
                locationRequest = (LocationRequest) SafeParcelReader.o(parcel, iC, LocationRequest.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzba(locationRequest, listT, strP, zW, zW2, zW3, strP2, zW4, zW5, strP3, jG);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzba[i];
    }
}
