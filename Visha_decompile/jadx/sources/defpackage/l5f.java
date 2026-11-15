package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.location.LocationSettingsStates;

public final class l5f implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        Status status = null;
        LocationSettingsStates locationSettingsStates = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                status = (Status) SafeParcelReader.o(parcel, iC, Status.CREATOR);
            } else if (iV != 2) {
                SafeParcelReader.K(parcel, iC);
            } else {
                locationSettingsStates = (LocationSettingsStates) SafeParcelReader.o(parcel, iC, LocationSettingsStates.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new LocationSettingsResult(status, locationSettingsStates);
    }

    @Override
    public final Object[] newArray(int i) {
        return new LocationSettingsResult[i];
    }
}
