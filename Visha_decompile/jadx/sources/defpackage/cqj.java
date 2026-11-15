package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.accounttransfer.DeviceMetaData;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class cqj implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        int iE = 0;
        boolean zW = false;
        boolean zW2 = false;
        long jG = 0;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 2) {
                zW = SafeParcelReader.w(parcel, iC);
            } else if (iV == 3) {
                jG = SafeParcelReader.G(parcel, iC);
            } else if (iV != 4) {
                SafeParcelReader.K(parcel, iC);
            } else {
                zW2 = SafeParcelReader.w(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new DeviceMetaData(iE, zW, jG, zW2);
    }

    @Override
    public final Object[] newArray(int i) {
        return new DeviceMetaData[i];
    }
}
