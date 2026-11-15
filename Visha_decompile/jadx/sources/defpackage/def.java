package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.ads.zzbym;

public final class def implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        String strP = null;
        String strP2 = null;
        zzr zzrVar = null;
        zzm zzmVar = null;
        String strP3 = null;
        int iE = 0;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 2:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    zzrVar = (zzr) SafeParcelReader.o(parcel, iC, zzr.CREATOR);
                    break;
                case 4:
                    zzmVar = (zzm) SafeParcelReader.o(parcel, iC, zzm.CREATOR);
                    break;
                case 5:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 6:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzbym(strP, strP2, zzrVar, zzmVar, iE, strP3);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzbym[i];
    }
}
