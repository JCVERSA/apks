package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;

final class zabh extends com.google.android.gms.internal.base.zau {
    final zabi zaa;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zabh(zabi zabiVar, Looper looper) {
        super(looper);
        this.zaa = zabiVar;
    }

    @Override
    public final void handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == 1) {
            ((zabg) message.obj).zab(this.zaa);
        } else {
            if (i10 == 2) {
                throw ((RuntimeException) message.obj);
            }
            Log.w("GACStateManager", "Unknown message id: " + i10);
        }
    }
}
