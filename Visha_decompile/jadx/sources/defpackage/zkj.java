package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.accounttransfer.zzs;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

public final class zkj implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        int iE = 0;
        ArrayList arrayListR = null;
        ArrayList arrayListR2 = null;
        ArrayList arrayListR3 = null;
        ArrayList arrayListR4 = null;
        ArrayList arrayListR5 = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 2:
                    arrayListR = SafeParcelReader.r(parcel, iC);
                    break;
                case 3:
                    arrayListR2 = SafeParcelReader.r(parcel, iC);
                    break;
                case 4:
                    arrayListR3 = SafeParcelReader.r(parcel, iC);
                    break;
                case 5:
                    arrayListR4 = SafeParcelReader.r(parcel, iC);
                    break;
                case 6:
                    arrayListR5 = SafeParcelReader.r(parcel, iC);
                    break;
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzs(iE, arrayListR, arrayListR2, arrayListR3, arrayListR4, arrayListR5);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzs[i];
    }
}
