package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.qwe;
import defpackage.z09;
import java.util.List;

public final class zzbas extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbas> CREATOR = new qwe();

    @Nullable
    public final String zza;
    public final long zzb;
    public final String zzc;
    public final String zzd;
    public final String zze;
    public final Bundle zzf;
    public final boolean zzg;
    public long zzh;
    public String zzi;
    public int zzj;

    public zzbas(@Nullable String str, long j, String str2, String str3, String str4, Bundle bundle, boolean z, long j2, String str5, int i) {
        this.zza = str;
        this.zzb = j;
        this.zzc = str2 == null ? "" : str2;
        this.zzd = str3 == null ? "" : str3;
        this.zze = str4 == null ? "" : str4;
        this.zzf = bundle == null ? new Bundle() : bundle;
        this.zzg = z;
        this.zzh = j2;
        this.zzi = str5;
        this.zzj = i;
    }

    @Nullable
    public static zzbas zza(Uri uri) {
        try {
            if (!"gcache".equals(uri.getScheme())) {
                return null;
            }
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments.size() != 2) {
                String str = "Expected 2 path parts for namespace and id, found :" + pathSegments.size();
                int i = zze.zza;
                zzo.zzj(str);
                return null;
            }
            String str2 = pathSegments.get(0);
            String str3 = pathSegments.get(1);
            String host = uri.getHost();
            String queryParameter = uri.getQueryParameter("url");
            boolean zEquals = "1".equals(uri.getQueryParameter("read_only"));
            String queryParameter2 = uri.getQueryParameter("expiration");
            long j = queryParameter2 == null ? 0L : Long.parseLong(queryParameter2);
            Bundle bundle = new Bundle();
            for (String str4 : uri.getQueryParameterNames()) {
                if (str4.startsWith("tag.")) {
                    bundle.putString(str4.substring(4), uri.getQueryParameter(str4));
                }
            }
            return new zzbas(queryParameter, j, host, str2, str3, bundle, zEquals, 0L, "", 0);
        } catch (NullPointerException | NumberFormatException e) {
            int i2 = zze.zza;
            zzo.zzk("Unable to parse Uri into cache offering.", e);
            return null;
        }
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int iA = z09.a(parcel);
        z09.D(parcel, 2, str, false);
        z09.w(parcel, 3, this.zzb);
        z09.D(parcel, 4, this.zzc, false);
        z09.D(parcel, 5, this.zzd, false);
        z09.D(parcel, 6, this.zze, false);
        z09.j(parcel, 7, this.zzf, false);
        z09.g(parcel, 8, this.zzg);
        z09.w(parcel, 9, this.zzh);
        z09.D(parcel, 10, this.zzi, false);
        z09.s(parcel, 11, this.zzj);
        z09.b(parcel, iA);
    }
}
