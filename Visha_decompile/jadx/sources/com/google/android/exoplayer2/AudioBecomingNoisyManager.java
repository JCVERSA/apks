package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;

public final class AudioBecomingNoisyManager {
    public final Context a;
    public final AudioBecomingNoisyReceiver b;
    public boolean c;

    public final class AudioBecomingNoisyReceiver extends BroadcastReceiver implements Runnable {
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
            if (AudioBecomingNoisyManager.this.c) {
                this.listener.onAudioBecomingNoisy();
            }
        }
    }

    public interface a {
        void onAudioBecomingNoisy();
    }

    public AudioBecomingNoisyManager(Context context, Handler handler, a aVar) {
        this.a = context.getApplicationContext();
        this.b = new AudioBecomingNoisyReceiver(handler, aVar);
    }

    public void b(boolean z) {
        if (z && !this.c) {
            this.a.registerReceiver(this.b, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
            this.c = true;
        } else {
            if (z || !this.c) {
                return;
            }
            this.a.unregisterReceiver(this.b);
            this.c = false;
        }
    }
}
