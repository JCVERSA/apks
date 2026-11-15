package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.client.zzbt;
import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.ads.internal.client.zzch;
import com.google.android.gms.ads.internal.client.zzcn;
import com.google.android.gms.ads.internal.client.zzcy;
import com.google.android.gms.ads.internal.client.zzdt;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzab;
import com.google.android.gms.ads.internal.overlay.zzaf;
import com.google.android.gms.ads.internal.overlay.zzah;
import com.google.android.gms.ads.internal.overlay.zzai;
import com.google.android.gms.ads.internal.overlay.zzw;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbfx;
import com.google.android.gms.internal.ads.zzbgd;
import com.google.android.gms.internal.ads.zzbki;
import com.google.android.gms.internal.ads.zzbkl;
import com.google.android.gms.internal.ads.zzboy;
import com.google.android.gms.internal.ads.zzbsr;
import com.google.android.gms.internal.ads.zzbsy;
import com.google.android.gms.internal.ads.zzbvn;
import com.google.android.gms.internal.ads.zzbwd;
import com.google.android.gms.internal.ads.zzbyi;
import com.google.android.gms.internal.ads.zzdik;
import com.google.android.gms.internal.ads.zzdim;
import com.google.android.gms.internal.ads.zzeiu;
import defpackage.bmh;
import defpackage.bog;
import defpackage.fkh;
import defpackage.hhh;
import defpackage.lkf;
import defpackage.rih;
import java.util.HashMap;

public class ClientApi extends zzcn {
    @Override
    public final zzbt zzb(IObjectWrapper iObjectWrapper, String str, zzboy zzboyVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return new zzeiu(lkf.f(context, zzboyVar, i), context, str);
    }

    @Override
    public final zzbx zzc(IObjectWrapper iObjectWrapper, zzr zzrVar, String str, zzboy zzboyVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        hhh hhhVarW = lkf.f(context, zzboyVar, i).w();
        hhhVarW.zza(str);
        hhhVarW.a(context);
        return hhhVarW.zzc().zza();
    }

    @Override
    public final zzbx zzd(IObjectWrapper iObjectWrapper, zzr zzrVar, String str, zzboy zzboyVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        rih rihVarX = lkf.f(context, zzboyVar, i).x();
        rihVarX.b(context);
        rihVarX.a(zzrVar);
        rihVarX.zzb(str);
        return rihVarX.zzd().zza();
    }

    @Override
    public final zzbx zze(IObjectWrapper iObjectWrapper, zzr zzrVar, String str, zzboy zzboyVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        fkh fkhVarY = lkf.f(context, zzboyVar, i).y();
        fkhVarY.b(context);
        fkhVarY.a(zzrVar);
        fkhVarY.zzb(str);
        return fkhVarY.zzd().zza();
    }

    @Override
    public final zzbx zzf(IObjectWrapper iObjectWrapper, zzr zzrVar, String str, int i) {
        return new zzu((Context) ObjectWrapper.unwrap(iObjectWrapper), zzrVar, str, new VersionInfoParcel(251410000, i, true, false));
    }

    @Override
    public final zzch zzg(IObjectWrapper iObjectWrapper, zzboy zzboyVar, int i) {
        return lkf.f((Context) ObjectWrapper.unwrap(iObjectWrapper), zzboyVar, i).D();
    }

    @Override
    public final zzcy zzh(IObjectWrapper iObjectWrapper, int i) {
        return lkf.f((Context) ObjectWrapper.unwrap(iObjectWrapper), null, i).g();
    }

    @Override
    public final zzdt zzi(IObjectWrapper iObjectWrapper, zzboy zzboyVar, int i) {
        return lkf.f((Context) ObjectWrapper.unwrap(iObjectWrapper), zzboyVar, i).q();
    }

    @Override
    public final zzbfx zzj(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return new zzdim((FrameLayout) ObjectWrapper.unwrap(iObjectWrapper), (FrameLayout) ObjectWrapper.unwrap(iObjectWrapper2), 251410000);
    }

    @Override
    public final zzbgd zzk(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        return new zzdik((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override
    public final zzbkl zzl(IObjectWrapper iObjectWrapper, zzboy zzboyVar, int i, zzbki zzbkiVar) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        bog bogVarO = lkf.f(context, zzboyVar, i).o();
        bogVarO.a(context);
        bogVarO.b(zzbkiVar);
        return bogVarO.zzc().zzd();
    }

    @Override
    public final zzbsr zzm(IObjectWrapper iObjectWrapper, zzboy zzboyVar, int i) {
        return lkf.f((Context) ObjectWrapper.unwrap(iObjectWrapper), zzboyVar, i).r();
    }

    @Override
    public final zzbsy zzn(IObjectWrapper iObjectWrapper) {
        Activity activity = (Activity) ObjectWrapper.unwrap(iObjectWrapper);
        AdOverlayInfoParcel adOverlayInfoParcelZza = AdOverlayInfoParcel.zza(activity.getIntent());
        if (adOverlayInfoParcelZza == null) {
            return new zzw(activity);
        }
        int i = adOverlayInfoParcelZza.zzk;
        if (i == 1) {
            return new com.google.android.gms.ads.internal.overlay.zzv(activity);
        }
        if (i == 2) {
            return new zzah(activity);
        }
        if (i == 3) {
            return new zzai(activity);
        }
        if (i != 4) {
            return i != 5 ? new zzw(activity) : new zzaf(activity);
        }
        return new zzab(activity, adOverlayInfoParcelZza);
    }

    @Override
    public final zzbvn zzo(IObjectWrapper iObjectWrapper, zzboy zzboyVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        bmh bmhVarZ = lkf.f(context, zzboyVar, i).z();
        bmhVarZ.a(context);
        return bmhVarZ.zzc().zzb();
    }

    @Override
    public final zzbwd zzp(IObjectWrapper iObjectWrapper, String str, zzboy zzboyVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        bmh bmhVarZ = lkf.f(context, zzboyVar, i).z();
        bmhVarZ.a(context);
        bmhVarZ.zza(str);
        return bmhVarZ.zzc().zza();
    }

    @Override
    public final zzbyi zzq(IObjectWrapper iObjectWrapper, zzboy zzboyVar, int i) {
        return lkf.f((Context) ObjectWrapper.unwrap(iObjectWrapper), zzboyVar, i).u();
    }
}
