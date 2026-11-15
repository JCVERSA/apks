package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.LocationRequest;

public final class t0f implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        int iE = 102;
        long jG = 3600000;
        long jG2 = 600000;
        boolean zW = false;
        boolean zW2 = false;
        long jG3 = Long.MAX_VALUE;
        int iE2 = Integer.MAX_VALUE;
        float fA = 0.0f;
        long jG4 = 0;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 2:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                case 3:
                    jG2 = SafeParcelReader.G(parcel, iC);
                    break;
                case 4:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 5:
                    jG3 = SafeParcelReader.G(parcel, iC);
                    break;
                case 6:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    break;
                case 7:
                    fA = SafeParcelReader.A(parcel, iC);
                    break;
                case 8:
                    jG4 = SafeParcelReader.G(parcel, iC);
                    break;
                case 9:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new LocationRequest(iE, jG, jG2, zW, jG3, iE2, fA, jG4, zW2);
    }

    @Override
    public final Object[] newArray(int i) {
        return new LocationRequest[i];
    }
}
