package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.client.zzbq;
import com.google.android.gms.ads.internal.client.zzbu;
import com.google.android.gms.ads.internal.client.zzch;
import com.google.android.gms.ads.internal.client.zzcn;
import com.google.android.gms.ads.internal.client.zzcy;
import com.google.android.gms.ads.internal.client.zzdt;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzac;
import com.google.android.gms.ads.internal.overlay.zzag;
import com.google.android.gms.ads.internal.overlay.zzai;
import com.google.android.gms.ads.internal.overlay.zzaj;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.overlay.zzw;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbmz;
import com.google.android.gms.internal.ads.zzbne;
import com.google.android.gms.internal.ads.zzbri;
import com.google.android.gms.internal.ads.zzbrl;
import com.google.android.gms.internal.ads.zzbvu;
import com.google.android.gms.internal.ads.zzbzm;
import com.google.android.gms.internal.ads.zzbzt;
import com.google.android.gms.internal.ads.zzcck;
import com.google.android.gms.internal.ads.zzcda;
import com.google.android.gms.internal.ads.zzcfe;
import com.google.android.gms.internal.ads.zzcob;
import com.google.android.gms.internal.ads.zzdrk;
import com.google.android.gms.internal.ads.zzdrm;
import com.google.android.gms.internal.ads.zzeca;
import com.google.android.gms.internal.ads.zzetb;
import com.google.android.gms.internal.ads.zzfge;
import com.google.android.gms.internal.ads.zzfhs;
import com.google.android.gms.internal.ads.zzfji;
import com.google.android.gms.internal.ads.zzfkw;
import java.util.HashMap;

public class ClientApi extends zzcn {
    @Override
    public final zzbu zza(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, zzbvu zzbvuVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzfhs zzfhsVarZzj = zzcob.zza(context, zzbvuVar, i).zzj();
        zzfhsVarZzj.zzd(context);
        zzfhsVarZzj.zzb(zzrVar);
        zzfhsVarZzj.zzc(str);
        return zzfhsVarZzj.zza().zza();
    }

    @Override
    public final zzbu zzb(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, zzbvu zzbvuVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzfji zzfjiVarZzn = zzcob.zza(context, zzbvuVar, i).zzn();
        zzfjiVarZzn.zzd(context);
        zzfjiVarZzn.zzb(zzrVar);
        zzfjiVarZzn.zzc(str);
        return zzfjiVarZzn.zza().zza();
    }

    @Override
    public final zzbq zzc(IObjectWrapper iObjectWrapper, String str, zzbvu zzbvuVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return new zzetb(zzcob.zza(context, zzbvuVar, i), context, str);
    }

    @Override
    public final zzbmz zzd(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return new zzdrm((FrameLayout) ObjectWrapper.unwrap(iObjectWrapper), (FrameLayout) ObjectWrapper.unwrap(iObjectWrapper2), ModuleDescriptor.MODULE_VERSION);
    }

    @Override
    public final zzcck zze(IObjectWrapper iObjectWrapper, zzbvu zzbvuVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzfkw zzfkwVarZzq = zzcob.zza(context, zzbvuVar, i).zzq();
        zzfkwVarZzq.zzc(context);
        return zzfkwVarZzq.zza().zza();
    }

    @Override
    public final zzbzt zzf(IObjectWrapper iObjectWrapper) {
        Activity activity = (Activity) ObjectWrapper.unwrap(iObjectWrapper);
        AdOverlayInfoParcel adOverlayInfoParcelZza = AdOverlayInfoParcel.zza(activity.getIntent());
        if (adOverlayInfoParcelZza == null) {
            return new zzw(activity);
        }
        int i = adOverlayInfoParcelZza.zzk;
        if (i == 1) {
            return new zzv(activity);
        }
        if (i == 2) {
            return new zzai(activity);
        }
        if (i == 3) {
            return new zzaj(activity);
        }
        if (i != 4) {
            return i != 5 ? new zzw(activity) : new zzag(activity);
        }
        return new zzac(activity, adOverlayInfoParcelZza);
    }

    @Override
    public final zzch zzg(IObjectWrapper iObjectWrapper, zzbvu zzbvuVar, int i) {
        return zzcob.zza((Context) ObjectWrapper.unwrap(iObjectWrapper), zzbvuVar, i).zzf();
    }

    @Override
    public final zzcy zzh(IObjectWrapper iObjectWrapper, int i) {
        return zzcob.zza((Context) ObjectWrapper.unwrap(iObjectWrapper), null, i).zze();
    }

    @Override
    @Deprecated
    public final zzbu zzi(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, int i) {
        return new zzs((Context) ObjectWrapper.unwrap(iObjectWrapper), zzrVar, str, new VersionInfoParcel(ModuleDescriptor.MODULE_VERSION, i, true, false));
    }

    @Override
    public final zzbne zzj(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        return new zzdrk((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override
    public final zzcda zzk(IObjectWrapper iObjectWrapper, String str, zzbvu zzbvuVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzfkw zzfkwVarZzq = zzcob.zza(context, zzbvuVar, i).zzq();
        zzfkwVarZzq.zzc(context);
        zzfkwVarZzq.zzb(str);
        return zzfkwVarZzq.zza().zzb();
    }

    @Override
    public final zzbu zzl(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, zzbvu zzbvuVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzfge zzfgeVarZzl = zzcob.zza(context, zzbvuVar, i).zzl();
        zzfgeVarZzl.zzb(str);
        zzfgeVarZzl.zzc(context);
        return zzfgeVarZzl.zza().zza();
    }

    @Override
    public final zzcfe zzm(IObjectWrapper iObjectWrapper, zzbvu zzbvuVar, int i) {
        return zzcob.zza((Context) ObjectWrapper.unwrap(iObjectWrapper), zzbvuVar, i).zzs();
    }

    @Override
    public final zzbzm zzn(IObjectWrapper iObjectWrapper, zzbvu zzbvuVar, int i) {
        return zzcob.zza((Context) ObjectWrapper.unwrap(iObjectWrapper), zzbvuVar, i).zzu();
    }

    @Override
    public final zzbrl zzo(IObjectWrapper iObjectWrapper, zzbvu zzbvuVar, int i, zzbri zzbriVar) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzeca zzecaVarZzA = zzcob.zza(context, zzbvuVar, i).zzA();
        zzecaVarZzA.zzc(context);
        zzecaVarZzA.zzb(zzbriVar);
        return zzecaVarZzA.zza().zzb();
    }

    @Override
    public final zzdt zzp(IObjectWrapper iObjectWrapper, zzbvu zzbvuVar, int i) {
        return zzcob.zza((Context) ObjectWrapper.unwrap(iObjectWrapper), zzbvuVar, i).zzC();
    }
}
