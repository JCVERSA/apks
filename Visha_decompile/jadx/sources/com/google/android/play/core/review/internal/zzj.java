package com.google.android.play.core.review.internal;

import androidx.annotation.Nullable;
import defpackage.zda;

public abstract class zzj implements Runnable {

    @Nullable
    private final zda zza;

    public zzj() {
        this.zza = null;
    }

    @Override
    public final void run() {
        try {
            zza();
        } catch (Exception e) {
            zzc(e);
        }
    }

    public abstract void zza();

    @Nullable
    public final zda zzb() {
        return this.zza;
    }

    public final void zzc(Exception exc) {
        zda zdaVar = this.zza;
        if (zdaVar != null) {
            zdaVar.d(exc);
        }
    }

    public zzj(@Nullable zda zdaVar) {
        this.zza = zdaVar;
    }
}
