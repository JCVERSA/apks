package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "StreetViewSourceCreator")
@SafeParcelable.Reserved({1})
public final class StreetViewSource extends AbstractSafeParcelable {
    public static final Parcelable.Creator<StreetViewSource> CREATOR = new zzq();
    public static final StreetViewSource DEFAULT = new StreetViewSource(0);
    public static final StreetViewSource OUTDOOR = new StreetViewSource(1);
    private static final String TAG = "StreetViewSource";

    @SafeParcelable.Field(getter = "getType", id = 2)
    private final int type;

    @SafeParcelable.Constructor
    public StreetViewSource(@SafeParcelable.Param(id = 2) int i10) {
        this.type = i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof StreetViewSource) && this.type == ((StreetViewSource) obj).type;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.type));
    }

    public final String toString() {
        String str;
        int i10 = this.type;
        if (i10 != 0) {
            str = i10 != 1 ? String.format("UNKNOWN(%s)", Integer.valueOf(i10)) : "OUTDOOR";
        } else {
            str = "DEFAULT";
        }
        return String.format("StreetViewSource:%s", str);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.type);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
