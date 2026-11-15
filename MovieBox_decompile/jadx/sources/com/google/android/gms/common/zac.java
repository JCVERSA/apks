package com.google.android.gms.common;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.DialogInterface;
import androidx.activity.result.IntentSenderRequest;

final class zac implements DialogInterface.OnClickListener {
    final Activity zaa;
    final int zab;
    final androidx.activity.result.b zac;
    final GoogleApiAvailability zad;

    zac(GoogleApiAvailability googleApiAvailability, Activity activity, int i10, androidx.activity.result.b bVar) {
        this.zad = googleApiAvailability;
        this.zaa = activity;
        this.zab = i10;
        this.zac = bVar;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i10) {
        dialogInterface.dismiss();
        PendingIntent errorResolutionPendingIntent = this.zad.getErrorResolutionPendingIntent(this.zaa, this.zab, 0);
        if (errorResolutionPendingIntent == null) {
            return;
        }
        this.zac.a(new IntentSenderRequest.a(errorResolutionPendingIntent.getIntentSender()).a());
    }
}
