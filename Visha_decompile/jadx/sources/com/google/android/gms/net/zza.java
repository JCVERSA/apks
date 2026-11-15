package com.google.android.gms.net;

import android.content.Context;
import defpackage.nl1;
import defpackage.zda;

public final class zza implements Runnable {
    public final Context zza;
    public final zda zzb;

    public zza(Context context, zda zdaVar) {
        this.zza = context;
        this.zzb = zdaVar;
    }

    @Override
    public final void run() {
        Context context = this.zza;
        zda zdaVar = this.zzb;
        try {
            nl1.d(context);
            zdaVar.c(null);
        } catch (Exception e) {
            zdaVar.b(e);
        }
    }
}
