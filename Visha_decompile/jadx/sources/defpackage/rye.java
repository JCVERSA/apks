package defpackage;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.location.zzba;
import com.google.android.gms.internal.location.zzbc;

public final class rye implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        int iE = 1;
        zzba zzbaVar = null;
        IBinder iBinderD = null;
        PendingIntent pendingIntent = null;
        IBinder iBinderD2 = null;
        IBinder iBinderD3 = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 2:
                    zzbaVar = (zzba) SafeParcelReader.o(parcel, iC, zzba.CREATOR);
                    break;
                case 3:
                    iBinderD = SafeParcelReader.D(parcel, iC);
                    break;
                case 4:
                    pendingIntent = (PendingIntent) SafeParcelReader.o(parcel, iC, PendingIntent.CREATOR);
                    break;
                case 5:
                    iBinderD2 = SafeParcelReader.D(parcel, iC);
                    break;
                case 6:
                    iBinderD3 = SafeParcelReader.D(parcel, iC);
                    break;
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzbc(iE, zzbaVar, iBinderD, pendingIntent, iBinderD2, iBinderD3);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzbc[i];
    }
}
