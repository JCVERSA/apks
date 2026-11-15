package com.google.android.gms.gcm;

import android.content.Intent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

final class zzf extends com.google.android.gms.internal.gcm.zzj {
    private final GoogleCloudMessaging zzak;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzf(GoogleCloudMessaging googleCloudMessaging, Looper looper) {
        super(looper);
        this.zzak = googleCloudMessaging;
    }

    @Override
    public final void handleMessage(Message message) {
        if (message == null || !(message.obj instanceof Intent)) {
            Log.w("GCM", "Dropping invalid message");
        }
        Intent intent = (Intent) message.obj;
        if ("com.google.android.c2dm.intent.REGISTRATION".equals(intent.getAction())) {
            this.zzak.zzai.add(intent);
        } else {
            if (this.zzak.zzd(intent)) {
                return;
            }
            intent.setPackage(this.zzak.zzl.getPackageName());
            this.zzak.zzl.sendBroadcast(intent);
        }
    }
}
