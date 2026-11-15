package defpackage;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.accounttransfer.DeviceMetaData;
import com.google.android.gms.auth.api.accounttransfer.zzw;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.HashSet;

public final class jpj implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        HashSet hashSet = new HashSet();
        int iE = 0;
        String strP = null;
        byte[] bArrG = null;
        PendingIntent pendingIntent = null;
        DeviceMetaData deviceMetaData = null;
        int iE2 = 0;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    hashSet.add(1);
                    break;
                case 2:
                    strP = SafeParcelReader.p(parcel, iC);
                    hashSet.add(2);
                    break;
                case 3:
                    iE = SafeParcelReader.E(parcel, iC);
                    hashSet.add(3);
                    break;
                case 4:
                    bArrG = SafeParcelReader.g(parcel, iC);
                    hashSet.add(4);
                    break;
                case 5:
                    pendingIntent = (PendingIntent) SafeParcelReader.o(parcel, iC, PendingIntent.CREATOR);
                    hashSet.add(5);
                    break;
                case 6:
                    deviceMetaData = (DeviceMetaData) SafeParcelReader.o(parcel, iC, DeviceMetaData.CREATOR);
                    hashSet.add(6);
                    break;
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
            }
        }
        if (parcel.dataPosition() == iL) {
            return new zzw(hashSet, iE2, strP, iE, bArrG, pendingIntent, deviceMetaData);
        }
        throw new SafeParcelReader.ParseException("Overread allowed size end=" + iL, parcel);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzw[i];
    }
}
