package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.location.zzj;
import com.google.android.gms.internal.location.zzl;

public final class gaj implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        zzj zzjVar = null;
        int iE = 1;
        IBinder iBinderD = null;
        IBinder iBinderD2 = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 2) {
                zzjVar = (zzj) SafeParcelReader.o(parcel, iC, zzj.CREATOR);
            } else if (iV == 3) {
                iBinderD = SafeParcelReader.D(parcel, iC);
            } else if (iV != 4) {
                SafeParcelReader.K(parcel, iC);
            } else {
                iBinderD2 = SafeParcelReader.D(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzl(iE, zzjVar, iBinderD, iBinderD2);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzl[i];
    }
}
