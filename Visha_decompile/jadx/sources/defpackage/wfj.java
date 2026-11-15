package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.accounttransfer.zzo;
import com.google.android.gms.auth.api.accounttransfer.zzs;
import com.google.android.gms.auth.api.accounttransfer.zzu;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
import java.util.HashSet;

public final class wfj implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        HashSet hashSet = new HashSet();
        int iE = 0;
        ArrayList arrayListT = null;
        zzs zzsVar = null;
        int iE2 = 0;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE2 = SafeParcelReader.E(parcel, iC);
                hashSet.add(1);
            } else if (iV == 2) {
                arrayListT = SafeParcelReader.t(parcel, iC, zzu.CREATOR);
                hashSet.add(2);
            } else if (iV == 3) {
                iE = SafeParcelReader.E(parcel, iC);
                hashSet.add(3);
            } else if (iV != 4) {
                SafeParcelReader.K(parcel, iC);
            } else {
                zzsVar = (zzs) SafeParcelReader.o(parcel, iC, zzs.CREATOR);
                hashSet.add(4);
            }
        }
        if (parcel.dataPosition() == iL) {
            return new zzo(hashSet, iE2, arrayListT, iE, zzsVar);
        }
        throw new SafeParcelReader.ParseException("Overread allowed size end=" + iL, parcel);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzo[i];
    }
}
