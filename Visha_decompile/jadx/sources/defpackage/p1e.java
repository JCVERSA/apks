package defpackage;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class p1e implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        String[] strArrQ = null;
        CursorWindow[] cursorWindowArr = null;
        Bundle bundleF = null;
        int iE = 0;
        int iE2 = 0;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                strArrQ = SafeParcelReader.q(parcel, iC);
            } else if (iV == 2) {
                cursorWindowArr = (CursorWindow[]) SafeParcelReader.s(parcel, iC, CursorWindow.CREATOR);
            } else if (iV == 3) {
                iE2 = SafeParcelReader.E(parcel, iC);
            } else if (iV == 4) {
                bundleF = SafeParcelReader.f(parcel, iC);
            } else if (iV != 1000) {
                SafeParcelReader.K(parcel, iC);
            } else {
                iE = SafeParcelReader.E(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        DataHolder dataHolder = new DataHolder(iE, strArrQ, cursorWindowArr, iE2, bundleF);
        dataHolder.zad();
        return dataHolder;
    }

    @Override
    public final Object[] newArray(int i) {
        return new DataHolder[i];
    }
}
