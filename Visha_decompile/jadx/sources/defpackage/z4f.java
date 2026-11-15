package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.zzbj;
import java.util.ArrayList;

public final class z4f implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        ArrayList arrayListT = null;
        boolean zW = false;
        boolean zW2 = false;
        zzbj zzbjVar = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                arrayListT = SafeParcelReader.t(parcel, iC, LocationRequest.CREATOR);
            } else if (iV == 2) {
                zW = SafeParcelReader.w(parcel, iC);
            } else if (iV == 3) {
                zW2 = SafeParcelReader.w(parcel, iC);
            } else if (iV != 5) {
                SafeParcelReader.K(parcel, iC);
            } else {
                zzbjVar = (zzbj) SafeParcelReader.o(parcel, iC, zzbj.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new LocationSettingsRequest(arrayListT, zW, zW2, zzbjVar);
    }

    @Override
    public final Object[] newArray(int i) {
        return new LocationSettingsRequest[i];
    }
}
