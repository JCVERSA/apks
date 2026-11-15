package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.bdf;
import defpackage.z09;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzbxf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbxf> CREATOR = new bdf();
    public final String zza;
    public final String zzb;
    public final boolean zzc;
    public final boolean zzd;
    public final List zze;
    public final boolean zzf;
    public final boolean zzg;
    public final List zzh;

    public zzbxf(String str, String str2, boolean z, boolean z2, List list, boolean z3, boolean z4, List list2) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = z;
        this.zzd = z2;
        this.zze = list;
        this.zzf = z3;
        this.zzg = z4;
        this.zzh = list2 == null ? new ArrayList() : list2;
    }

    @Nullable
    public static zzbxf zza(JSONObject jSONObject) throws JSONException {
        return new zzbxf(jSONObject.optString("click_string", ""), jSONObject.optString("report_url", ""), jSONObject.optBoolean("rendered_ad_enabled", false), jSONObject.optBoolean("non_malicious_reporting_enabled", false), zzbs.zzc(jSONObject.optJSONArray("allowed_headers"), null), jSONObject.optBoolean("protection_enabled", false), jSONObject.optBoolean("malicious_reporting_enabled", false), zzbs.zzc(jSONObject.optJSONArray("webview_permissions"), null));
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int iA = z09.a(parcel);
        z09.D(parcel, 2, str, false);
        z09.D(parcel, 3, this.zzb, false);
        z09.g(parcel, 4, this.zzc);
        z09.g(parcel, 5, this.zzd);
        z09.F(parcel, 6, this.zze, false);
        z09.g(parcel, 7, this.zzf);
        z09.g(parcel, 8, this.zzg);
        z09.F(parcel, 9, this.zzh, false);
        z09.b(parcel, iA);
    }
}
