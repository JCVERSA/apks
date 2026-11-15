package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.VisibleForTesting;
import defpackage.ejf;

@VisibleForTesting
public final class zzi {
    public final int zza;
    public final ViewGroup.LayoutParams zzb;
    public final ViewGroup zzc;
    public final Context zzd;

    public zzi(ejf ejfVar) throws zzg {
        this.zzb = ejfVar.getLayoutParams();
        ViewParent parent = ejfVar.getParent();
        this.zzd = ejfVar.zzE();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new zzg("Could not get the parent of the WebView for an overlay.");
        }
        ViewGroup viewGroup = (ViewGroup) parent;
        this.zzc = viewGroup;
        this.zza = viewGroup.indexOfChild(ejfVar.zzF());
        viewGroup.removeView(ejfVar.zzF());
        ejfVar.zzaq(true);
    }
}
