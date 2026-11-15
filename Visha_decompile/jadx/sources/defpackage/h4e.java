package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.p000authapi.zbp;

public final class h4e implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        Credential credential = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 1) {
                SafeParcelReader.K(parcel, iC);
            } else {
                credential = (Credential) SafeParcelReader.o(parcel, iC, Credential.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new zbp(credential);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zbp[i];
    }
}
