package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbsr;
import defpackage.cye;
import defpackage.ejf;
import defpackage.fhj;
import defpackage.r1f;
import defpackage.t8g;
import defpackage.ufj;
import defpackage.wzf;
import defpackage.z09;
import defpackage.z1f;
import defpackage.zef;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

public final class AdOverlayInfoParcel extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new zzo();
    private static final AtomicLong zzy = new AtomicLong(0);
    private static final ConcurrentHashMap zzz = new ConcurrentHashMap();
    public final zzc zza;
    public final com.google.android.gms.ads.internal.client.zza zzb;
    public final zzr zzc;
    public final ejf zzd;
    public final z1f zze;

    @NonNull
    public final String zzf;
    public final boolean zzg;

    @NonNull
    public final String zzh;
    public final zzac zzi;
    public final int zzj;
    public final int zzk;

    @NonNull
    public final String zzl;

    @NonNull
    public final VersionInfoParcel zzm;

    @NonNull
    public final String zzn;
    public final com.google.android.gms.ads.internal.zzl zzo;
    public final r1f zzp;

    @NonNull
    public final String zzq;

    @NonNull
    public final String zzr;

    @NonNull
    public final String zzs;
    public final wzf zzt;
    public final t8g zzu;
    public final zzbsr zzv;
    public final boolean zzw;
    public final long zzx;

    public AdOverlayInfoParcel(com.google.android.gms.ads.internal.client.zza zzaVar, zzr zzrVar, r1f r1fVar, z1f z1fVar, zzac zzacVar, ejf ejfVar, boolean z, int i, String str, VersionInfoParcel versionInfoParcel, t8g t8gVar, zzbsr zzbsrVar, boolean z2) {
        this.zza = null;
        this.zzb = zzaVar;
        this.zzc = zzrVar;
        this.zzd = ejfVar;
        this.zzp = r1fVar;
        this.zze = z1fVar;
        this.zzf = null;
        this.zzg = z;
        this.zzh = null;
        this.zzi = zzacVar;
        this.zzj = i;
        this.zzk = 3;
        this.zzl = str;
        this.zzm = versionInfoParcel;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = t8gVar;
        this.zzv = zzbsrVar;
        this.zzw = z2;
        this.zzx = zzy.getAndIncrement();
    }

    @Nullable
    public static AdOverlayInfoParcel zza(@NonNull Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception e) {
            if (!((Boolean) zzbd.zzc().b(cye.Wc)).booleanValue()) {
                return null;
            }
            com.google.android.gms.ads.internal.zzv.zzp().x(e, "AdOverlayInfoParcel.getFromIntent");
            return null;
        }
    }

    @Nullable
    private static final IBinder zzc(Object obj) {
        if (((Boolean) zzbd.zzc().b(cye.Wc)).booleanValue()) {
            return null;
        }
        return ObjectWrapper.wrap(obj).asBinder();
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.B(parcel, 2, this.zza, i, false);
        com.google.android.gms.ads.internal.client.zza zzaVar = this.zzb;
        z09.r(parcel, 3, zzc(zzaVar), false);
        zzr zzrVar = this.zzc;
        z09.r(parcel, 4, zzc(zzrVar), false);
        ejf ejfVar = this.zzd;
        z09.r(parcel, 5, zzc(ejfVar), false);
        z1f z1fVar = this.zze;
        z09.r(parcel, 6, zzc(z1fVar), false);
        z09.D(parcel, 7, this.zzf, false);
        z09.g(parcel, 8, this.zzg);
        z09.D(parcel, 9, this.zzh, false);
        zzac zzacVar = this.zzi;
        z09.r(parcel, 10, zzc(zzacVar), false);
        z09.s(parcel, 11, this.zzj);
        z09.s(parcel, 12, this.zzk);
        z09.D(parcel, 13, this.zzl, false);
        z09.B(parcel, 14, this.zzm, i, false);
        z09.D(parcel, 16, this.zzn, false);
        z09.B(parcel, 17, this.zzo, i, false);
        r1f r1fVar = this.zzp;
        z09.r(parcel, 18, zzc(r1fVar), false);
        z09.D(parcel, 19, this.zzq, false);
        z09.D(parcel, 24, this.zzr, false);
        z09.D(parcel, 25, this.zzs, false);
        wzf wzfVar = this.zzt;
        z09.r(parcel, 26, zzc(wzfVar), false);
        t8g t8gVar = this.zzu;
        z09.r(parcel, 27, zzc(t8gVar), false);
        zzbsr zzbsrVar = this.zzv;
        z09.r(parcel, 28, zzc(zzbsrVar), false);
        z09.g(parcel, 29, this.zzw);
        long j = this.zzx;
        z09.w(parcel, 30, j);
        z09.b(parcel, iA);
        if (((Boolean) zzbd.zzc().b(cye.Wc)).booleanValue()) {
            zzz.put(Long.valueOf(j), new ufj(zzaVar, zzrVar, ejfVar, r1fVar, z1fVar, zzacVar, wzfVar, t8gVar, zzbsrVar, zef.d.schedule(new fhj(j), ((Integer) zzbd.zzc().b(cye.Yc)).intValue(), TimeUnit.SECONDS)));
        }
    }

    public AdOverlayInfoParcel(com.google.android.gms.ads.internal.client.zza zzaVar, zzr zzrVar, r1f r1fVar, z1f z1fVar, zzac zzacVar, ejf ejfVar, boolean z, int i, String str, String str2, VersionInfoParcel versionInfoParcel, t8g t8gVar, zzbsr zzbsrVar) {
        this.zza = null;
        this.zzb = zzaVar;
        this.zzc = zzrVar;
        this.zzd = ejfVar;
        this.zzp = r1fVar;
        this.zze = z1fVar;
        this.zzf = str2;
        this.zzg = z;
        this.zzh = str;
        this.zzi = zzacVar;
        this.zzj = i;
        this.zzk = 3;
        this.zzl = null;
        this.zzm = versionInfoParcel;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = t8gVar;
        this.zzv = zzbsrVar;
        this.zzw = false;
        this.zzx = zzy.getAndIncrement();
    }

    public AdOverlayInfoParcel(com.google.android.gms.ads.internal.client.zza zzaVar, zzr zzrVar, zzac zzacVar, ejf ejfVar, int i, VersionInfoParcel versionInfoParcel, String str, com.google.android.gms.ads.internal.zzl zzlVar, String str2, String str3, String str4, wzf wzfVar, zzbsr zzbsrVar, String str5) {
        this.zza = null;
        this.zzb = null;
        this.zzc = zzrVar;
        this.zzd = ejfVar;
        this.zzp = null;
        this.zze = null;
        this.zzg = false;
        if (((Boolean) zzbd.zzc().b(cye.X0)).booleanValue()) {
            this.zzf = null;
            this.zzh = null;
        } else {
            this.zzf = str2;
            this.zzh = str3;
        }
        this.zzi = null;
        this.zzj = i;
        this.zzk = 1;
        this.zzl = null;
        this.zzm = versionInfoParcel;
        this.zzn = str;
        this.zzo = zzlVar;
        this.zzq = str5;
        this.zzr = null;
        this.zzs = str4;
        this.zzt = wzfVar;
        this.zzu = null;
        this.zzv = zzbsrVar;
        this.zzw = false;
        this.zzx = zzy.getAndIncrement();
    }

    public AdOverlayInfoParcel(com.google.android.gms.ads.internal.client.zza zzaVar, zzr zzrVar, zzac zzacVar, ejf ejfVar, boolean z, int i, VersionInfoParcel versionInfoParcel, t8g t8gVar, zzbsr zzbsrVar) {
        this.zza = null;
        this.zzb = zzaVar;
        this.zzc = zzrVar;
        this.zzd = ejfVar;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = z;
        this.zzh = null;
        this.zzi = zzacVar;
        this.zzj = i;
        this.zzk = 2;
        this.zzl = null;
        this.zzm = versionInfoParcel;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = t8gVar;
        this.zzv = zzbsrVar;
        this.zzw = false;
        this.zzx = zzy.getAndIncrement();
    }

    public AdOverlayInfoParcel(zzc zzcVar, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String str, boolean z, String str2, IBinder iBinder5, int i, int i2, String str3, VersionInfoParcel versionInfoParcel, String str4, com.google.android.gms.ads.internal.zzl zzlVar, IBinder iBinder6, String str5, String str6, String str7, IBinder iBinder7, IBinder iBinder8, IBinder iBinder9, boolean z2, long j) {
        this.zza = zzcVar;
        this.zzf = str;
        this.zzg = z;
        this.zzh = str2;
        this.zzj = i;
        this.zzk = i2;
        this.zzl = str3;
        this.zzm = versionInfoParcel;
        this.zzn = str4;
        this.zzo = zzlVar;
        this.zzq = str5;
        this.zzr = str6;
        this.zzs = str7;
        this.zzw = z2;
        this.zzx = j;
        if (((Boolean) zzbd.zzc().b(cye.Wc)).booleanValue()) {
            ufj ufjVar = (ufj) zzz.remove(Long.valueOf(j));
            if (ufjVar != null) {
                this.zzb = ufjVar.a;
                this.zzc = ufjVar.b;
                this.zzd = ufjVar.c;
                this.zzp = ufjVar.d;
                this.zze = ufjVar.e;
                this.zzt = ufjVar.g;
                this.zzu = ufjVar.h;
                this.zzv = ufjVar.i;
                this.zzi = ufjVar.f;
                ufjVar.j.cancel(false);
                return;
            }
            throw new NullPointerException("AdOverlayObjects is null");
        }
        this.zzb = (com.google.android.gms.ads.internal.client.zza) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder));
        this.zzc = (zzr) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder2));
        this.zzd = (ejf) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder3));
        this.zzp = (r1f) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder6));
        this.zze = (z1f) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder4));
        this.zzi = (zzac) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder5));
        this.zzt = (wzf) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder7));
        this.zzu = (t8g) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder8));
        this.zzv = (zzbsr) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder9));
    }

    public AdOverlayInfoParcel(zzc zzcVar, com.google.android.gms.ads.internal.client.zza zzaVar, zzr zzrVar, zzac zzacVar, VersionInfoParcel versionInfoParcel, ejf ejfVar, t8g t8gVar, String str) {
        this.zza = zzcVar;
        this.zzb = zzaVar;
        this.zzc = zzrVar;
        this.zzd = ejfVar;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = false;
        this.zzh = null;
        this.zzi = zzacVar;
        this.zzj = -1;
        this.zzk = 4;
        this.zzl = null;
        this.zzm = versionInfoParcel;
        this.zzn = null;
        this.zzo = null;
        this.zzq = str;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = t8gVar;
        this.zzv = null;
        this.zzw = false;
        this.zzx = zzy.getAndIncrement();
    }

    public AdOverlayInfoParcel(zzr zzrVar, ejf ejfVar, int i, VersionInfoParcel versionInfoParcel) {
        this.zzc = zzrVar;
        this.zzd = ejfVar;
        this.zzj = 1;
        this.zzm = versionInfoParcel;
        this.zza = null;
        this.zzb = null;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = false;
        this.zzh = null;
        this.zzi = null;
        this.zzk = 1;
        this.zzl = null;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = null;
        this.zzv = null;
        this.zzw = false;
        this.zzx = zzy.getAndIncrement();
    }

    public AdOverlayInfoParcel(ejf ejfVar, VersionInfoParcel versionInfoParcel, String str, String str2, int i, zzbsr zzbsrVar) {
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
        this.zzd = ejfVar;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = false;
        this.zzh = null;
        this.zzi = null;
        this.zzj = 14;
        this.zzk = 5;
        this.zzl = null;
        this.zzm = versionInfoParcel;
        this.zzn = null;
        this.zzo = null;
        this.zzq = str;
        this.zzr = str2;
        this.zzs = null;
        this.zzt = null;
        this.zzu = null;
        this.zzv = zzbsrVar;
        this.zzw = false;
        this.zzx = zzy.getAndIncrement();
    }
}
