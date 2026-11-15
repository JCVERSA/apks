package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.measurement.internal.zzac;
import com.google.android.gms.measurement.internal.zzaw;
import com.google.android.gms.measurement.internal.zzlc;

public final class x8e implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        String strP = null;
        String strP2 = null;
        zzlc zzlcVar = null;
        String strP3 = null;
        zzaw zzawVar = null;
        zzaw zzawVar2 = null;
        zzaw zzawVar3 = null;
        long jG = 0;
        long jG2 = 0;
        long jG3 = 0;
        boolean zW = false;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 2:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 4:
                    zzlcVar = (zzlc) SafeParcelReader.o(parcel, iC, zzlc.CREATOR);
                    break;
                case 5:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                case 6:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 7:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 8:
                    zzawVar = (zzaw) SafeParcelReader.o(parcel, iC, zzaw.CREATOR);
                    break;
                case 9:
                    jG2 = SafeParcelReader.G(parcel, iC);
                    break;
                case 10:
                    zzawVar2 = (zzaw) SafeParcelReader.o(parcel, iC, zzaw.CREATOR);
                    break;
                case 11:
                    jG3 = SafeParcelReader.G(parcel, iC);
                    break;
                case 12:
                    zzawVar3 = (zzaw) SafeParcelReader.o(parcel, iC, zzaw.CREATOR);
                    break;
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzac(strP, strP2, zzlcVar, jG, zW, strP3, zzawVar, jG2, zzawVar2, jG3, zzawVar3);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzac[i];
    }
}
