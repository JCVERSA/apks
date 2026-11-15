package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

public final class zzl implements Parcelable.Creator<PolylineOptions> {
    @Override
    public final PolylineOptions createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        ArrayList arrayListCreateTypedList = null;
        Cap cap = null;
        Cap cap2 = null;
        ArrayList arrayListCreateTypedList2 = null;
        float f10 = 0.0f;
        float f11 = 0.0f;
        int i10 = 0;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        int i11 = 0;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 2:
                    arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, LatLng.CREATOR);
                    break;
                case 3:
                    f10 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 4:
                    i10 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 5:
                    f11 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 6:
                    z10 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 7:
                    z11 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 8:
                    z12 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 9:
                    cap = (Cap) SafeParcelReader.createParcelable(parcel, header, Cap.CREATOR);
                    break;
                case 10:
                    cap2 = (Cap) SafeParcelReader.createParcelable(parcel, header, Cap.CREATOR);
                    break;
                case 11:
                    i11 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 12:
                    arrayListCreateTypedList2 = SafeParcelReader.createTypedList(parcel, header, PatternItem.CREATOR);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new PolylineOptions(arrayListCreateTypedList, f10, i10, f11, z10, z11, z12, cap, cap2, i11, arrayListCreateTypedList2);
    }

    @Override
    public final PolylineOptions[] newArray(int i10) {
        return new PolylineOptions[i10];
    }
}
