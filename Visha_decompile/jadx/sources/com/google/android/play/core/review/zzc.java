package com.google.android.play.core.review;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import defpackage.v4g;
import defpackage.zda;

final class zzc extends ResultReceiver {
    final zda zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzc(v4g v4gVar, Handler handler, zda zdaVar) {
        super(handler);
        this.zza = zdaVar;
    }

    @Override
    public final void onReceiveResult(int i, Bundle bundle) {
        this.zza.e(null);
    }
}
