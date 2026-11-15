package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.z09;

public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new zzb();
    public final String zza;
    public final String zzb;
    public final String zzc;
    public final String zzd;
    public final String zze;
    public final String zzf;
    public final String zzg;
    public final Intent zzh;
    public final zzaa zzi;
    public final boolean zzj;

    public zzc(Intent intent, zzaa zzaaVar) {
        this(null, null, null, null, null, null, null, intent, ObjectWrapper.wrap(zzaaVar).asBinder(), false);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int iA = z09.a(parcel);
        z09.D(parcel, 2, str, false);
        z09.D(parcel, 3, this.zzb, false);
        z09.D(parcel, 4, this.zzc, false);
        z09.D(parcel, 5, this.zzd, false);
        z09.D(parcel, 6, this.zze, false);
        z09.D(parcel, 7, this.zzf, false);
        z09.D(parcel, 8, this.zzg, false);
        z09.B(parcel, 9, this.zzh, i, false);
        z09.r(parcel, 10, ObjectWrapper.wrap(this.zzi).asBinder(), false);
        z09.g(parcel, 11, this.zzj);
        z09.b(parcel, iA);
    }

    public zzc(String str, String str2, String str3, String str4, String str5, String str6, String str7, Intent intent, IBinder iBinder, boolean z) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = str4;
        this.zze = str5;
        this.zzf = str6;
        this.zzg = str7;
        this.zzh = intent;
        this.zzi = (zzaa) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder));
        this.zzj = z;
    }

    public zzc(String str, String str2, String str3, String str4, String str5, String str6, String str7, zzaa zzaaVar) {
        this(str, str2, str3, str4, str5, str6, str7, null, ObjectWrapper.wrap(zzaaVar).asBinder(), false);
    }
}
