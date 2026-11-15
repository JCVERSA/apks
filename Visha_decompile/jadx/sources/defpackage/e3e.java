package defpackage;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.identity.BeginSignInResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class e3e implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 1) {
                SafeParcelReader.K(parcel, iC);
            } else {
                pendingIntent = (PendingIntent) SafeParcelReader.o(parcel, iC, PendingIntent.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new BeginSignInResult(pendingIntent);
    }

    @Override
    public final Object[] newArray(int i) {
        return new BeginSignInResult[i];
    }
}
