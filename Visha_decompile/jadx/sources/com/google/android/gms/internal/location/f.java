package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.zzs;
import java.util.List;

public final class f implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        zzs zzsVar = zzj.zzb;
        List<ClientIdentity> listT = zzj.zza;
        String strP = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                zzsVar = (zzs) SafeParcelReader.o(parcel, iC, zzs.CREATOR);
            } else if (iV == 2) {
                listT = SafeParcelReader.t(parcel, iC, ClientIdentity.CREATOR);
            } else if (iV != 3) {
                SafeParcelReader.K(parcel, iC);
            } else {
                strP = SafeParcelReader.p(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzj(zzsVar, listT, strP);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzj[i];
    }
}
