package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import defpackage.kzf;
import defpackage.ndf;
import defpackage.rdf;
import defpackage.v7g;

public final class k4 implements kzf, v7g {
    public final ndf b;
    public final Context c;
    public final rdf d;
    public final View e;
    public String f;
    public final zzbbn$zza$zza g;

    public k4(ndf ndfVar, Context context, rdf rdfVar, View view, zzbbn$zza$zza zzbbn_zza_zza) {
        this.b = ndfVar;
        this.c = context;
        this.d = rdfVar;
        this.e = view;
        this.g = zzbbn_zza_zza;
    }

    @Override
    public final void a(zzbvk zzbvkVar, String str, String str2) {
        rdf rdfVar = this.d;
        Context context = this.c;
        if (rdfVar.p(context)) {
            try {
                rdfVar.l(context, rdfVar.b(context), this.b.a(), zzbvkVar.zzc(), zzbvkVar.zzb());
            } catch (RemoteException e) {
                int i = zze.zza;
                zzo.zzk("Remote Exception to get reward item.", e);
            }
        }
    }

    @Override
    public final void zza() {
        this.b.b(false);
    }

    @Override
    public final void zzb() {
    }

    @Override
    public final void zzc() {
        View view = this.e;
        if (view != null && this.f != null) {
            this.d.o(view.getContext(), this.f);
        }
        this.b.b(true);
    }

    @Override
    public final void zze() {
    }

    @Override
    public final void zzf() {
    }

    @Override
    public final void zzu() {
    }

    @Override
    public final void zzv() {
        zzbbn$zza$zza zzbbn_zza_zza = this.g;
        if (zzbbn_zza_zza == zzbbn$zza$zza.APP_OPEN) {
            return;
        }
        String strD = this.d.d(this.c);
        this.f = strD;
        this.f = String.valueOf(strD).concat(zzbbn_zza_zza == zzbbn$zza$zza.REWARD_BASED_VIDEO_AD ? "/Rewarded" : "/Interstitial");
    }
}
