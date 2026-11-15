package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.fcf;
import defpackage.jc7;
import defpackage.z09;
import org.json.JSONArray;
import org.json.JSONException;

public final class zzbvw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbvw> CREATOR = new fcf();
    public final String zza;
    public final int zzb;

    public zzbvw(String str, int i) {
        this.zza = str;
        this.zzb = i;
    }

    @Nullable
    public static zzbvw zza(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        return new zzbvw(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzbvw)) {
            zzbvw zzbvwVar = (zzbvw) obj;
            if (jc7.a(this.zza, zzbvwVar.zza)) {
                if (jc7.a(Integer.valueOf(this.zzb), Integer.valueOf(zzbvwVar.zzb))) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return jc7.b(this.zza, Integer.valueOf(this.zzb));
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int iA = z09.a(parcel);
        z09.D(parcel, 2, str, false);
        z09.s(parcel, 3, this.zzb);
        z09.b(parcel, iA);
    }
}
