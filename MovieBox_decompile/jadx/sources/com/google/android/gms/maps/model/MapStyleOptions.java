package com.google.android.gms.maps.model;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;

@SafeParcelable.Class(creator = "MapStyleOptionsCreator")
@SafeParcelable.Reserved({1})
public final class MapStyleOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MapStyleOptions> CREATOR = new zzg();
    private static final String TAG = "MapStyleOptions";

    @SafeParcelable.Field(getter = "getJson", id = 2)
    private String zzdl;

    @SafeParcelable.Constructor
    public MapStyleOptions(@SafeParcelable.Param(id = 2) String str) {
        this.zzdl = str;
    }

    public static MapStyleOptions loadRawResourceStyle(Context context, int i10) throws Resources.NotFoundException {
        try {
            return new MapStyleOptions(new String(IOUtils.readInputStreamFully(context.getResources().openRawResource(i10)), "UTF-8"));
        } catch (IOException e10) {
            String strValueOf = String.valueOf(e10);
            StringBuilder sb2 = new StringBuilder(strValueOf.length() + 37);
            sb2.append("Failed to read resource ");
            sb2.append(i10);
            sb2.append(": ");
            sb2.append(strValueOf);
            throw new Resources.NotFoundException(sb2.toString());
        }
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zzdl, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
