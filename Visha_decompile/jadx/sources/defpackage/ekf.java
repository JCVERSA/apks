package defpackage;

import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;

public final class ekf implements AudioManager.OnAudioFocusChangeListener {
    public final Handler b;
    public final AudioManager.OnAudioFocusChangeListener c;

    public ekf(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
        this.c = onAudioFocusChangeListener;
        Looper looper = handler.getLooper();
        int i = kfh.a;
        this.b = new Handler(looper, null);
    }

    @Override
    public final void onAudioFocusChange(final int i) {
        kfh.p(this.b, new Runnable() {
            @Override
            public final void run() {
                this.zza.c.onAudioFocusChange(i);
            }
        });
    }
}
