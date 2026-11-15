package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.accounttransfer.zzu;
import com.google.android.gms.auth.api.accounttransfer.zzw;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.HashSet;

public final class jnj implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        HashSet hashSet = new HashSet();
        zzw zzwVar = null;
        String strP = null;
        String strP2 = null;
        String strP3 = null;
        int iE = 0;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
                hashSet.add(1);
            } else if (iV == 2) {
                zzwVar = (zzw) SafeParcelReader.o(parcel, iC, zzw.CREATOR);
                hashSet.add(2);
            } else if (iV == 3) {
                strP = SafeParcelReader.p(parcel, iC);
                hashSet.add(3);
            } else if (iV == 4) {
                strP2 = SafeParcelReader.p(parcel, iC);
                hashSet.add(4);
            } else if (iV != 5) {
                SafeParcelReader.K(parcel, iC);
            } else {
                strP3 = SafeParcelReader.p(parcel, iC);
                hashSet.add(5);
            }
        }
        if (parcel.dataPosition() == iL) {
            return new zzu(hashSet, iE, zzwVar, strP, strP2, strP3);
        }
        throw new SafeParcelReader.ParseException("Overread allowed size end=" + iL, parcel);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzu[i];
    }
}
