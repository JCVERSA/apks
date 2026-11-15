package defpackage;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class v5e implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        Intent intent = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 1) {
                SafeParcelReader.K(parcel, iC);
            } else {
                intent = (Intent) SafeParcelReader.o(parcel, iC, Intent.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new CloudMessage(intent);
    }

    @Override
    public final Object[] newArray(int i) {
        return new CloudMessage[i];
    }
}
