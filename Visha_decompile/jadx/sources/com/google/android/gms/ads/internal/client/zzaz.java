package com.google.android.gms.ads.internal.client;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;
import com.google.android.gms.internal.ads.zzbfx;
import com.google.android.gms.internal.ads.zzbgd;
import com.google.android.gms.internal.ads.zzbkl;
import com.google.android.gms.internal.ads.zzboy;
import com.google.android.gms.internal.ads.zzbsr;
import com.google.android.gms.internal.ads.zzbsy;
import com.google.android.gms.internal.ads.zzbwd;
import com.google.android.gms.internal.ads.zzbyi;
import defpackage.ahe;
import defpackage.eje;
import defpackage.eue;
import defpackage.gse;
import defpackage.iae;
import defpackage.iaf;
import defpackage.jle;
import defpackage.n1f;
import defpackage.ncf;
import defpackage.o1f;
import defpackage.pce;
import defpackage.roe;
import defpackage.u7e;
import defpackage.ume;
import defpackage.vee;
import defpackage.waf;
import defpackage.z5e;
import java.util.HashMap;

public final class zzaz {
    public final zzk a;
    public final zzi b;
    public final zzfa c;
    public final n1f d;
    public final iaf e;
    public final o1f f;
    public waf g;
    public final zzl h;

    public zzaz(zzk zzkVar, zzi zziVar, zzfa zzfaVar, n1f n1fVar, ncf ncfVar, iaf iafVar, o1f o1fVar, zzl zzlVar) {
        this.a = zzkVar;
        this.b = zziVar;
        this.c = zzfaVar;
        this.d = n1fVar;
        this.e = iafVar;
        this.f = o1fVar;
        this.h = zzlVar;
    }

    public static void j(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        zzbb.zzb().zzo(context, zzbb.zzc().afmaVersion, "gmob-apps", bundle, true);
    }

    public final zzbt zzd(Context context, String str, zzboy zzboyVar) {
        return (zzbt) new ume(this, context, str, zzboyVar).d(context, false);
    }

    public final zzbx zze(Context context, zzr zzrVar, String str, zzboy zzboyVar) {
        return (zzbx) new eje(this, context, zzrVar, str, zzboyVar).d(context, false);
    }

    public final zzbx zzf(Context context, zzr zzrVar, String str, zzboy zzboyVar) {
        return (zzbx) new jle(this, context, zzrVar, str, zzboyVar).d(context, false);
    }

    public final zzch zzg(Context context, zzboy zzboyVar) {
        return (zzch) new roe(this, context, zzboyVar).d(context, false);
    }

    @Nullable
    public final zzdt zzh(Context context, zzboy zzboyVar) {
        return (zzdt) new iae(this, context, zzboyVar).d(context, false);
    }

    public final zzbfx zzj(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return (zzbfx) new gse(this, frameLayout, frameLayout2, context).d(context, false);
    }

    public final zzbgd zzk(View view, HashMap map, HashMap map2) {
        return (zzbgd) new eue(this, view, map, map2).d(view.getContext(), false);
    }

    public final zzbkl zzn(Context context, zzboy zzboyVar, OnH5AdsEventListener onH5AdsEventListener) {
        return (zzbkl) new ahe(this, context, zzboyVar, onH5AdsEventListener).d(context, false);
    }

    @Nullable
    public final zzbsr zzo(Context context, zzboy zzboyVar) {
        return (zzbsr) new vee(this, context, zzboyVar).d(context, false);
    }

    @Nullable
    public final zzbsy zzq(Activity activity) {
        u7e u7eVar = new u7e(this, activity);
        Intent intent = activity.getIntent();
        boolean booleanExtra = false;
        if (intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            booleanExtra = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        } else {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("useClientJar flag not found in activity intent extras.");
        }
        return (zzbsy) u7eVar.d(activity, booleanExtra);
    }

    public final zzbwd zzs(Context context, String str, zzboy zzboyVar) {
        return (zzbwd) new z5e(this, context, str, zzboyVar).d(context, false);
    }

    @Nullable
    public final zzbyi zzt(Context context, zzboy zzboyVar) {
        return (zzbyi) new pce(this, context, zzboyVar).d(context, false);
    }
}
