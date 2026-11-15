package com.transsion.upgradesdk.net;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.Intrinsics;

public final class g extends BroadcastReceiver {

    public final ru.f f54526a;

    public g(ru.f fVar) {
        this.f54526a = fVar;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        String action;
        if (intent != null) {
            try {
                action = intent.getAction();
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        } else {
            action = null;
        }
        if (Intrinsics.c(action, "android.net.conn.CONNECTIVITY_CHANGE")) {
            ru.f.b(this.f54526a);
            throw null;
        }
    }
}
