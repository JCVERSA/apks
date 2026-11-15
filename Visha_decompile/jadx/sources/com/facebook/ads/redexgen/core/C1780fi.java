package com.facebook.ads.redexgen.core;

import com.facebook.ads.MediaViewListener;

public class C1780fi implements Y1 {
    public final MediaViewListener A00;
    public final C1779fh A01;

    public C1780fi(C1779fh c1779fh, MediaViewListener mediaViewListener) {
        this.A01 = c1779fh;
        this.A00 = mediaViewListener;
    }

    @Override
    public final void ACn() {
        this.A00.onComplete(this.A01.A03);
    }

    @Override
    public final void AD9() {
        this.A00.onEnterFullscreen(this.A01.A03);
    }

    @Override
    public final void ADF() {
        this.A00.onExitFullscreen(this.A01.A03);
    }

    @Override
    public final void ADN() {
        this.A00.onFullscreenBackground(this.A01.A03);
    }

    @Override
    public final void ADP() {
        this.A00.onFullscreenForeground(this.A01.A03);
    }

    @Override
    public final void AEX() {
        this.A00.onPlay(this.A01.A03);
    }

    @Override
    public final void AFu() {
        this.A00.onVolumeChange(this.A01.A03, this.A01.A05.getVolume());
    }

    @Override
    public final void onPause() {
        this.A00.onPause(this.A01.A03);
    }
}
