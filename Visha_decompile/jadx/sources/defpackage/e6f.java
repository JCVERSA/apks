package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.LocationSettingsStates;

public final class e6f implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        boolean zW = false;
        boolean zW2 = false;
        boolean zW3 = false;
        boolean zW4 = false;
        boolean zW5 = false;
        boolean zW6 = false;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 2:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 3:
                    zW3 = SafeParcelReader.w(parcel, iC);
                    break;
                case 4:
                    zW4 = SafeParcelReader.w(parcel, iC);
                    break;
                case 5:
                    zW5 = SafeParcelReader.w(parcel, iC);
                    break;
                case 6:
                    zW6 = SafeParcelReader.w(parcel, iC);
                    break;
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new LocationSettingsStates(zW, zW2, zW3, zW4, zW5, zW6);
    }

    @Override
    public final Object[] newArray(int i) {
        return new LocationSettingsStates[i];
    }
}
