package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.ActivityTransitionEvent;
import com.google.android.gms.location.ActivityTransitionResult;
import java.util.ArrayList;

public final class bgj implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        ArrayList arrayListT = null;
        Bundle bundleF = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                arrayListT = SafeParcelReader.t(parcel, iC, ActivityTransitionEvent.CREATOR);
            } else if (iV != 2) {
                SafeParcelReader.K(parcel, iC);
            } else {
                bundleF = SafeParcelReader.f(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new ActivityTransitionResult(arrayListT, bundleF);
    }

    @Override
    public final Object[] newArray(int i) {
        return new ActivityTransitionResult[i];
    }
}
