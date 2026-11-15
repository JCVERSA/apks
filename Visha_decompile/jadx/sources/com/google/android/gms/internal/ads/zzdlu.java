package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.ddg;
import defpackage.mff;
import defpackage.wd8;
import defpackage.y0f;
import defpackage.zcg;
import java.util.Collections;

public final class zzdlu extends zzblv implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, y0f {
    private View zza;
    private zzea zzb;
    private zcg zzc;
    private boolean zzd = false;
    private boolean zze = false;

    public zzdlu(zcg zcgVar, ddg ddgVar) {
        this.zza = ddgVar.S();
        this.zzb = ddgVar.W();
        this.zzc = zcgVar;
        if (ddgVar.f0() != null) {
            ddgVar.f0().zzap(this);
        }
    }

    private final void zzg() {
        View view;
        zcg zcgVar = this.zzc;
        if (zcgVar == null || (view = this.zza) == null) {
            return;
        }
        zcgVar.j(view, Collections.emptyMap(), Collections.emptyMap(), zcg.G(this.zza));
    }

    private final void zzh() {
        View view = this.zza;
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.zza);
        }
    }

    private static final void zzi(zzblz zzblzVar, int i) {
        try {
            zzblzVar.zze(i);
        } catch (RemoteException e) {
            int i2 = zze.zza;
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onGlobalLayout() {
        zzg();
    }

    @Override
    public final void onScrollChanged() {
        zzg();
    }

    @Override
    @Nullable
    public final zzea zzb() throws RemoteException {
        wd8.e("#008 Must be called on the main UI thread.");
        if (!this.zzd) {
            return this.zzb;
        }
        int i = zze.zza;
        zzo.zzg("getVideoController: Instream ad should not be used after destroyed");
        return null;
    }

    @Override
    @Nullable
    public final zzbfq zzc() {
        wd8.e("#008 Must be called on the main UI thread.");
        if (this.zzd) {
            int i = zze.zza;
            zzo.zzg("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        zcg zcgVar = this.zzc;
        if (zcgVar == null || zcgVar.P() == null) {
            return null;
        }
        return zcgVar.P().a();
    }

    @Override
    public final void zzd() throws RemoteException {
        wd8.e("#008 Must be called on the main UI thread.");
        zzh();
        zcg zcgVar = this.zzc;
        if (zcgVar != null) {
            zcgVar.a();
        }
        this.zzc = null;
        this.zza = null;
        this.zzb = null;
        this.zzd = true;
    }

    @Override
    public final void zze(IObjectWrapper iObjectWrapper) throws RemoteException {
        wd8.e("#008 Must be called on the main UI thread.");
        zzf(iObjectWrapper, new zzdlt(this));
    }

    @Override
    public final void zzf(IObjectWrapper iObjectWrapper, zzblz zzblzVar) throws RemoteException {
        wd8.e("#008 Must be called on the main UI thread.");
        if (this.zzd) {
            int i = zze.zza;
            zzo.zzg("Instream ad can not be shown after destroy().");
            zzi(zzblzVar, 2);
            return;
        }
        View view = this.zza;
        if (view == null || this.zzb == null) {
            String str = view == null ? "can not get video view." : "can not get video controller.";
            int i2 = zze.zza;
            zzo.zzg("Instream internal error: ".concat(str));
            zzi(zzblzVar, 0);
            return;
        }
        if (this.zze) {
            int i3 = zze.zza;
            zzo.zzg("Instream ad should not be used again.");
            zzi(zzblzVar, 1);
            return;
        }
        this.zze = true;
        zzh();
        ((ViewGroup) ObjectWrapper.unwrap(iObjectWrapper)).addView(this.zza, new ViewGroup.LayoutParams(-1, -1));
        zzv.zzy();
        mff.a(this.zza, this);
        zzv.zzy();
        mff.b(this.zza, this);
        zzg();
        try {
            zzblzVar.zzf();
        } catch (RemoteException e) {
            int i4 = zze.zza;
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }
}
