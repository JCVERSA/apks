package defpackage;

import android.media.AudioManager;
import android.os.Handler;

public final class tif {
    public AudioManager.OnAudioFocusChangeListener a;
    public Handler b;
    public hvg c = hvg.b;

    public tif(int i) {
    }

    public final tif a(hvg hvgVar) {
        this.c = hvgVar;
        return this;
    }

    public final tif b(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
        this.a = onAudioFocusChangeListener;
        this.b = handler;
        return this;
    }

    public final alf c() {
        AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = this.a;
        if (onAudioFocusChangeListener == null) {
            throw new IllegalStateException("Can't build an AudioFocusRequestCompat instance without a listener");
        }
        Handler handler = this.b;
        handler.getClass();
        return new alf(1, onAudioFocusChangeListener, handler, this.c, false);
    }
}
