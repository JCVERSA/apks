package com.yandex.mobile.ads.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

final class qh {
    private final Context a;
    private final a b;
    private boolean c;

    public final class a extends BroadcastReceiver implements Runnable {
        private final b b;
        private final Handler c;

        public a(Handler handler, b bVar) {
            this.c = handler;
            this.b = bVar;
        }

        @Override
        public final void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.c.post(this);
            }
        }

        @Override
        public final void run() {
            if (qh.this.c) {
                ((r60.b) this.b).c();
            }
        }
    }

    public interface b {
    }

    public qh(Context context, Handler handler, b bVar) {
        this.a = context.getApplicationContext();
        this.b = new a(handler, bVar);
    }

    public final void a() {
        if (this.c) {
            this.a.unregisterReceiver(this.b);
            this.c = false;
        }
    }
}
