package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.measurement.internal.zzlc;

public final class t8j implements Parcelable.Creator {
    public static void a(zzlc zzlcVar, Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, zzlcVar.zza);
        z09.D(parcel, 2, zzlcVar.zzb, false);
        z09.w(parcel, 3, zzlcVar.zzc);
        z09.y(parcel, 4, zzlcVar.zzd, false);
        z09.q(parcel, 5, null, false);
        z09.D(parcel, 6, zzlcVar.zze, false);
        z09.D(parcel, 7, zzlcVar.zzf, false);
        z09.n(parcel, 8, zzlcVar.zzg, false);
        z09.b(parcel, iA);
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        int iE = 0;
        String strP = null;
        Long lH = null;
        Float fB = null;
        String strP2 = null;
        String strP3 = null;
        Double dZ = null;
        long jG = 0;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 2:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                case 4:
                    lH = SafeParcelReader.H(parcel, iC);
                    break;
                case 5:
                    fB = SafeParcelReader.B(parcel, iC);
                    break;
                case 6:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 7:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 8:
                    dZ = SafeParcelReader.z(parcel, iC);
                    break;
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzlc(iE, strP, jG, lH, fB, strP2, strP3, dZ);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzlc[i];
    }
}
