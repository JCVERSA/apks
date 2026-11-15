package androidx.media3.exoplayer;

import android.media.AudioManager;

public final class d implements AudioManager.OnAudioFocusChangeListener {
    public final AudioFocusManager b;

    public d(AudioFocusManager audioFocusManager) {
        this.b = audioFocusManager;
    }

    @Override
    public final void onAudioFocusChange(int i) {
        this.b.handlePlatformAudioFocusChange(i);
    }
}
