package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.ddg;

public final class zzdgy extends zzbfp {
    private final ddg zza;
    private IObjectWrapper zzb;

    public zzdgy(ddg ddgVar) {
        this.zza = ddgVar;
    }

    private static float zzb(IObjectWrapper iObjectWrapper) {
        Drawable drawable;
        if (iObjectWrapper == null || (drawable = (Drawable) ObjectWrapper.unwrap(iObjectWrapper)) == null || drawable.getIntrinsicWidth() == -1 || drawable.getIntrinsicHeight() == -1) {
            return 0.0f;
        }
        return drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
    }

    @Override
    public final float zze() throws RemoteException {
        ddg ddgVar = this.zza;
        if (ddgVar.O() != 0.0f) {
            return ddgVar.O();
        }
        if (ddgVar.W() != null) {
            try {
                return ddgVar.W().zze();
            } catch (RemoteException e) {
                int i = zze.zza;
                zzo.zzh("Remote exception getting video controller aspect ratio.", e);
                return 0.0f;
            }
        }
        IObjectWrapper iObjectWrapper = this.zzb;
        if (iObjectWrapper != null) {
            return zzb(iObjectWrapper);
        }
        zzbft zzbftVarZ = ddgVar.Z();
        if (zzbftVarZ == null) {
            return 0.0f;
        }
        float fZzd = (zzbftVarZ.zzd() == -1 || zzbftVarZ.zzc() == -1) ? 0.0f : zzbftVarZ.zzd() / zzbftVarZ.zzc();
        return fZzd == 0.0f ? zzb(zzbftVarZ.zzf()) : fZzd;
    }

    @Override
    public final float zzf() throws RemoteException {
        ddg ddgVar = this.zza;
        if (ddgVar.W() != null) {
            return ddgVar.W().zzf();
        }
        return 0.0f;
    }

    @Override
    public final float zzg() throws RemoteException {
        ddg ddgVar = this.zza;
        if (ddgVar.W() != null) {
            return ddgVar.W().zzg();
        }
        return 0.0f;
    }

    @Override
    @Nullable
    public final zzea zzh() throws RemoteException {
        return this.zza.W();
    }

    @Override
    @Nullable
    public final IObjectWrapper zzi() throws RemoteException {
        IObjectWrapper iObjectWrapper = this.zzb;
        if (iObjectWrapper != null) {
            return iObjectWrapper;
        }
        zzbft zzbftVarZ = this.zza.Z();
        if (zzbftVarZ == null) {
            return null;
        }
        return zzbftVarZ.zzf();
    }

    @Override
    public final void zzj(IObjectWrapper iObjectWrapper) {
        this.zzb = iObjectWrapper;
    }

    @Override
    public final boolean zzk() throws RemoteException {
        return this.zza.G();
    }

    @Override
    public final boolean zzl() throws RemoteException {
        return this.zza.W() != null;
    }

    @Override
    public final void zzm(zzbhb zzbhbVar) {
        ddg ddgVar = this.zza;
        if (ddgVar.W() instanceof zzcfn) {
            ((zzcfn) ddgVar.W()).zzv(zzbhbVar);
        }
    }
}
