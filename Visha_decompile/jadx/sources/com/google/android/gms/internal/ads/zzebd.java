package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import com.google.android.gms.ads.internal.overlay.zzm;
import java.util.Timer;
import java.util.TimerTask;

final class zzebd extends TimerTask {
    final AlertDialog zza;
    final Timer zzb;
    final zzm zzc;

    public zzebd(zzebe zzebeVar, AlertDialog alertDialog, Timer timer, zzm zzmVar) {
        this.zza = alertDialog;
        this.zzb = timer;
        this.zzc = zzmVar;
    }

    @Override
    public final void run() {
        this.zza.dismiss();
        this.zzb.cancel();
        zzm zzmVar = this.zzc;
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }
}
