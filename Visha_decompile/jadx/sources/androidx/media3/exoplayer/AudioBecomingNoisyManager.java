package androidx.media3.exoplayer;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Looper;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;

final class AudioBecomingNoisyManager {
    private final HandlerWrapper backgroundHandler;
    private final Context context;
    private boolean isEnabled;
    private final AudioBecomingNoisyReceiver receiver;

    public final class AudioBecomingNoisyReceiver extends BroadcastReceiver {
        private final HandlerWrapper eventHandler;
        private final EventListener listener;

        public AudioBecomingNoisyReceiver(HandlerWrapper handlerWrapper, EventListener eventListener) {
            this.eventHandler = handlerWrapper;
            this.listener = eventListener;
        }

        public void callListenerIfEnabled() {
            if (AudioBecomingNoisyManager.this.isEnabled) {
                this.listener.onAudioBecomingNoisy();
            }
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.eventHandler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.callListenerIfEnabled();
                    }
                });
            }
        }
    }

    public interface EventListener {
        void onAudioBecomingNoisy();
    }

    public AudioBecomingNoisyManager(Context context, Looper looper, Looper looper2, EventListener eventListener, Clock clock) {
        this.context = context.getApplicationContext();
        this.backgroundHandler = clock.createHandler(looper, null);
        this.receiver = new AudioBecomingNoisyReceiver(clock.createHandler(looper2, null), eventListener);
    }

    public void lambda$setEnabled$0() {
        this.context.registerReceiver(this.receiver, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
    }

    public void lambda$setEnabled$1() {
        this.context.unregisterReceiver(this.receiver);
    }

    @SuppressLint({"UnprotectedReceiver"})
    public void setEnabled(boolean z) {
        if (z == this.isEnabled) {
            return;
        }
        if (z) {
            this.backgroundHandler.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$setEnabled$0();
                }
            });
            this.isEnabled = true;
        } else {
            this.backgroundHandler.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$setEnabled$1();
                }
            });
            this.isEnabled = false;
        }
    }
}
