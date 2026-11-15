package com.yandex.mobile.ads.impl;

import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.monetization.ads.video.playback.view.ExtendedVideoAdControlsContainer;
import defpackage.s86;
import defpackage.y45;

public final class kb0 implements su0 {
    private final View a;
    private final su0.a b;

    public kb0(ExtendedVideoAdControlsContainer extendedVideoAdControlsContainer) {
        y45.j(extendedVideoAdControlsContainer, TtmlNode.RUBY_CONTAINER);
        this.a = extendedVideoAdControlsContainer;
        this.b = new su0.a();
    }

    @Override
    public final su0.a a(int i, int i2) {
        int iC = s86.c(this.a.getHeight() * 0.1f);
        su0.a aVar = this.b;
        aVar.a = i;
        aVar.b = View.MeasureSpec.makeMeasureSpec(iC, 1073741824);
        return this.b;
    }
}
