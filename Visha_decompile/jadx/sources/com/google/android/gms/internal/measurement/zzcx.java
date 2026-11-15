package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import defpackage.izh;
import defpackage.wd8;

final class zzcx extends zzdt {
    final String zza;
    final String zzb;
    final Context zzc;
    final Bundle zzd;
    final b zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcx(b bVar, String str, String str2, Context context, Bundle bundle) {
        super(bVar, true);
        this.zze = bVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = context;
        this.zzd = bundle;
    }

    @Override
    public final void zza() {
        String str;
        String str2;
        String str3;
        try {
            b bVar = this.zze;
            if (b.t(this.zza, this.zzb)) {
                str3 = this.zzb;
                str2 = this.zza;
                str = this.zze.a;
            } else {
                str = null;
                str2 = null;
                str3 = null;
            }
            wd8.l(this.zzc);
            b bVar2 = this.zze;
            bVar2.i = bVar2.z(this.zzc, true);
            if (this.zze.i == null) {
                Log.w(this.zze.a, "Failed to connect to measurement client.");
                return;
            }
            int iA = DynamiteModule.a(this.zzc, ModuleDescriptor.MODULE_ID);
            int iC = DynamiteModule.c(this.zzc, ModuleDescriptor.MODULE_ID);
            ((zzcc) wd8.l(this.zze.i)).initialize(ObjectWrapper.wrap(this.zzc), new zzcl(73000L, Math.max(iA, iC), iC < iA, str, str2, str3, this.zzd, izh.a(this.zzc)), this.zzh);
        } catch (Exception e) {
            this.zze.q(e, true, false);
        }
    }
}
