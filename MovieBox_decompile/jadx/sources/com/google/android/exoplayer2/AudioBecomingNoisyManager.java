package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;

final class AudioBecomingNoisyManager {

    private final Context f23776a;

    private final AudioBecomingNoisyReceiver f23777b;

    private boolean f23778c;

    private final class AudioBecomingNoisyReceiver extends BroadcastReceiver implements Runnable {
        private final Handler eventHandler;
        private final a listener;

        public AudioBecomingNoisyReceiver(Handler handler, a aVar) {
            this.eventHandler = handler;
            this.listener = aVar;
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.eventHandler.post(this);
            }
        }

        @Override
        public void run() {
            if (AudioBecomingNoisyManager.this.f23778c) {
                this.listener.m();
            }
        }
    }

    public interface a {
        void m();
    }

    public AudioBecomingNoisyManager(Context context, Handler handler, a aVar) {
        this.f23776a = context.getApplicationContext();
        this.f23777b = new AudioBecomingNoisyReceiver(handler, aVar);
    }

    public void b(boolean z10) {
        if (z10 && !this.f23778c) {
            this.f23776a.registerReceiver(this.f23777b, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
            this.f23778c = true;
        } else {
            if (z10 || !this.f23778c) {
                return;
            }
            this.f23776a.unregisterReceiver(this.f23777b);
            this.f23778c = false;
        }
    }
}
