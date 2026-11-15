package defpackage;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.zzbq;
import java.util.ArrayList;

public final class x8f implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        String strP = "";
        ArrayList arrayListR = null;
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                arrayListR = SafeParcelReader.r(parcel, iC);
            } else if (iV == 2) {
                pendingIntent = (PendingIntent) SafeParcelReader.o(parcel, iC, PendingIntent.CREATOR);
            } else if (iV != 3) {
                SafeParcelReader.K(parcel, iC);
            } else {
                strP = SafeParcelReader.p(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zzbq(arrayListR, pendingIntent, strP);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzbq[i];
    }
}
