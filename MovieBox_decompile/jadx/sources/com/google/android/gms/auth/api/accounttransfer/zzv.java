package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.HashSet;

public final class zzv implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        HashSet hashSet = new HashSet();
        zzw zzwVar = null;
        String strCreateString = null;
        String strCreateString2 = null;
        String strCreateString3 = null;
        int i10 = 0;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId == 1) {
                i10 = SafeParcelReader.readInt(parcel, header);
                hashSet.add(1);
            } else if (fieldId == 2) {
                zzwVar = (zzw) SafeParcelReader.createParcelable(parcel, header, zzw.CREATOR);
                hashSet.add(2);
            } else if (fieldId == 3) {
                strCreateString = SafeParcelReader.createString(parcel, header);
                hashSet.add(3);
            } else if (fieldId == 4) {
                strCreateString2 = SafeParcelReader.createString(parcel, header);
                hashSet.add(4);
            } else if (fieldId != 5) {
                SafeParcelReader.skipUnknownField(parcel, header);
            } else {
                strCreateString3 = SafeParcelReader.createString(parcel, header);
                hashSet.add(5);
            }
        }
        if (parcel.dataPosition() == iValidateObjectHeader) {
            return new zzu(hashSet, i10, zzwVar, strCreateString, strCreateString2, strCreateString3);
        }
        throw new SafeParcelReader.ParseException("Overread allowed size end=" + iValidateObjectHeader, parcel);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzu[i10];
    }
}
