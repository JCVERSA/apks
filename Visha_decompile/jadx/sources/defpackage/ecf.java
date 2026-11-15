package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.ads.zzbvr;

public final class ecf implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        zzm zzmVar = null;
        String strP = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                zzmVar = (zzm) SafeParcelReader.o(parcel, iC, zzm.CREATOR);
            } else if (iV != 3) {
                SafeParcelReader.K(parcel, iC);
            } else {
                strP = SafeParcelReader.p(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzbvr(zzmVar, strP);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzbvr[i];
    }
}
