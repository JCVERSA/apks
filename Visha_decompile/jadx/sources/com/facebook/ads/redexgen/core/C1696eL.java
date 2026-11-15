package com.facebook.ads.redexgen.core;

import android.widget.MediaController;

public class C1696eL implements MediaController.MediaPlayerControl {
    public final CM A00;

    public C1696eL(CM cm) {
        this.A00 = cm;
    }

    @Override
    public final boolean canPause() {
        return true;
    }

    @Override
    public final boolean canSeekBackward() {
        return true;
    }

    @Override
    public final boolean canSeekForward() {
        return true;
    }

    @Override
    public final int getAudioSessionId() {
        if (this.A00.A0C != null) {
            return this.A00.A0C.A04();
        }
        return 0;
    }

    @Override
    public final int getBufferPercentage() {
        if (this.A00.A0C != null) {
            return this.A00.A0C.A05();
        }
        return 0;
    }

    @Override
    public final int getCurrentPosition() {
        return this.A00.getCurrentPosition();
    }

    @Override
    public final int getDuration() {
        return this.A00.getDuration();
    }

    @Override
    public final boolean isPlaying() {
        return this.A00.A0C != null && this.A00.A0C.A0J();
    }

    @Override
    public final void pause() {
        if (this.A00.A0F != null) {
            this.A00.A0F.AE9();
        }
    }

    @Override
    public final void seekTo(int i) {
        this.A00.seekTo(i);
    }

    @Override
    public final void start() {
        if (this.A00.A0F != null) {
            this.A00.A0F.AEA();
        }
    }
}
