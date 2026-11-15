package defpackage;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenRequest;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

public final class v3e implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        PendingIntent pendingIntent = null;
        String strP = null;
        String strP2 = null;
        ArrayList arrayListR = null;
        String strP3 = null;
        int iE = 0;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    pendingIntent = (PendingIntent) SafeParcelReader.o(parcel, iC, PendingIntent.CREATOR);
                    break;
                case 2:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 4:
                    arrayListR = SafeParcelReader.r(parcel, iC);
                    break;
                case 5:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 6:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new SaveAccountLinkingTokenRequest(pendingIntent, strP, strP2, arrayListR, strP3, iE);
    }

    @Override
    public final Object[] newArray(int i) {
        return new SaveAccountLinkingTokenRequest[i];
    }
}
