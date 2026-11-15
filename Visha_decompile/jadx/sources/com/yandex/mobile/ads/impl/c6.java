package com.yandex.mobile.ads.impl;

import android.net.Uri;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.MediaItem;
import defpackage.y45;

public final class c6 {
    private final d4 a;
    private final bo0 b;
    private final z4 c;
    private final o5 d;

    public c6(o9 o9Var, d4 d4Var, bo0 bo0Var) {
        y45.j(o9Var, "adStateDataController");
        y45.j(d4Var, "adGroupIndexProvider");
        y45.j(bo0Var, "instreamSourceUrlProvider");
        this.a = d4Var;
        this.b = bo0Var;
        this.c = o9Var.a();
        this.d = o9Var.c();
    }

    public final void a(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        xn0 xn0VarG = go0Var.g();
        u4 u4Var = new u4(this.a.a(xn0VarG.a()), go0Var.b().a() - 1);
        this.c.a(u4Var, go0Var);
        AdPlaybackState adPlaybackStateA = this.d.a();
        if (adPlaybackStateA.isAdInErrorState(u4Var.a(), u4Var.b())) {
            return;
        }
        AdPlaybackState adPlaybackStateWithAdCount = adPlaybackStateA.withAdCount(u4Var.a(), go0Var.b().b());
        y45.i(adPlaybackStateWithAdCount, "withAdCount(...)");
        this.b.getClass();
        y45.j(xn0VarG, "mediaFile");
        y45.j(go0Var, "videoAd");
        AdPlaybackState adPlaybackStateWithAvailableAdMediaItem = adPlaybackStateWithAdCount.withAvailableAdMediaItem(u4Var.a(), u4Var.b(), MediaItem.fromUri(Uri.parse(xn0VarG.getUrl())));
        y45.i(adPlaybackStateWithAvailableAdMediaItem, "withAvailableAdMediaItem(...)");
        this.d.a(adPlaybackStateWithAvailableAdMediaItem);
    }
}
