package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.measurement.internal.zzau;
import com.google.android.gms.measurement.internal.zzaw;

public final class fte implements Parcelable.Creator {
    public static void a(zzaw zzawVar, Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.D(parcel, 2, zzawVar.zza, false);
        z09.B(parcel, 3, zzawVar.zzb, i, false);
        z09.D(parcel, 4, zzawVar.zzc, false);
        z09.w(parcel, 5, zzawVar.zzd);
        z09.b(parcel, iA);
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        String strP = null;
        zzau zzauVar = null;
        String strP2 = null;
        long jG = 0;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 3) {
                zzauVar = (zzau) SafeParcelReader.o(parcel, iC, zzau.CREATOR);
            } else if (iV == 4) {
                strP2 = SafeParcelReader.p(parcel, iC);
            } else if (iV != 5) {
                SafeParcelReader.K(parcel, iC);
            } else {
                jG = SafeParcelReader.G(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzaw(strP, zzauVar, strP2, jG);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzaw[i];
    }
}
