package com.google.android.gms.ads.internal.util;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;

final class zzax implements Runnable {
    final Context zza;
    final String zzb;
    final boolean zzc;
    final boolean zzd;

    public zzax(zzay zzayVar, Context context, String str, boolean z, boolean z2) {
        this.zza = context;
        this.zzb = str;
        this.zzc = z;
        this.zzd = z2;
    }

    @Override
    public final void run() {
        com.google.android.gms.ads.internal.zzv.zzq();
        Context context = this.zza;
        AlertDialog.Builder builderZzL = zzs.zzL(context);
        builderZzL.setMessage(this.zzb);
        if (this.zzc) {
            builderZzL.setTitle("Error");
        } else {
            builderZzL.setTitle("Info");
        }
        if (this.zzd) {
            builderZzL.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
        } else {
            builderZzL.setPositiveButton("Learn More", new a(this, context));
            builderZzL.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
        }
        builderZzL.create().show();
    }
}
