package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.ads.internal.client.zzbk;
import com.google.android.gms.ads.internal.client.zzbq;
import com.google.android.gms.ads.internal.client.zzbs;
import com.google.android.gms.ads.internal.client.zzcp;
import defpackage.cnh;
import defpackage.lkf;
import defpackage.mdg;
import defpackage.sdg;
import java.util.ArrayList;

public final class zzeiu extends zzbs {

    @VisibleForTesting
    final cnh zza;

    @VisibleForTesting
    final mdg zzb;
    private final Context zzc;
    private final lkf zzd;
    private zzbk zze;

    public zzeiu(lkf lkfVar, Context context, String str) {
        cnh cnhVar = new cnh();
        this.zza = cnhVar;
        this.zzb = new mdg();
        this.zzd = lkfVar;
        cnhVar.P(str);
        this.zzc = context;
    }

    @Override
    public final zzbq zze() {
        sdg sdgVarG = this.zzb.g();
        ArrayList arrayListI = sdgVarG.i();
        cnh cnhVar = this.zza;
        cnhVar.e(arrayListI);
        cnhVar.f(sdgVarG.h());
        if (cnhVar.D() == null) {
            cnhVar.O(com.google.android.gms.ads.internal.client.zzr.zzc());
        }
        return new zzeiv(this.zzc, this.zzd, cnhVar, sdgVarG, this.zze);
    }

    @Override
    public final void zzf(zzbgr zzbgrVar) {
        this.zzb.a(zzbgrVar);
    }

    @Override
    public final void zzg(zzbgu zzbguVar) {
        this.zzb.b(zzbguVar);
    }

    @Override
    public final void zzh(String str, zzbha zzbhaVar, @Nullable zzbgx zzbgxVar) {
        this.zzb.c(str, zzbhaVar, zzbgxVar);
    }

    @Override
    public final void zzi(zzbmc zzbmcVar) {
        this.zzb.d(zzbmcVar);
    }

    @Override
    public final void zzj(zzbhe zzbheVar, com.google.android.gms.ads.internal.client.zzr zzrVar) {
        this.zzb.e(zzbheVar);
        this.zza.O(zzrVar);
    }

    @Override
    public final void zzk(zzbhh zzbhhVar) {
        this.zzb.f(zzbhhVar);
    }

    @Override
    public final void zzl(zzbk zzbkVar) {
        this.zze = zzbkVar;
    }

    @Override
    public final void zzm(AdManagerAdViewOptions adManagerAdViewOptions) {
        this.zza.N(adManagerAdViewOptions);
    }

    @Override
    public final void zzn(zzblt zzbltVar) {
        this.zza.S(zzbltVar);
    }

    @Override
    public final void zzo(zzbfi zzbfiVar) {
        this.zza.d(zzbfiVar);
    }

    @Override
    public final void zzp(PublisherAdViewOptions publisherAdViewOptions) {
        this.zza.g(publisherAdViewOptions);
    }

    @Override
    public final void zzq(zzcp zzcpVar) {
        this.zza.v(zzcpVar);
    }
}
