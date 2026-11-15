package com.transsion.aicore.nexusflow;

import android.util.Log;
import defpackage.zfb;

public final class f implements Runnable {
    public final b a;

    public f(b bVar) {
    }

    public static final zfb a(boolean z) {
        if (z) {
            Log.d("NexusFlow.Manager", "Auto-reconnect successful");
        } else {
            Log.w("NexusFlow.Manager", "Auto-reconnect failed");
        }
        return zfb.a;
    }

    @Override
    public final void run() {
        throw null;
    }
}
