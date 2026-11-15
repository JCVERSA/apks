package com.facebook.ads.redexgen.core;

import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;

public class Cdo implements AudioManager.OnAudioFocusChangeListener {
    public final C3E A00;

    public Cdo(C3E c3e) {
        this.A00 = c3e;
    }

    @Override
    public final void onAudioFocusChange(int i) {
        new Handler(Looper.getMainLooper()).post(new D8(this, i));
    }
}
