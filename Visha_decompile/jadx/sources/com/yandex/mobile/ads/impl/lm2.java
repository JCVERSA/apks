package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.video.playback.model.VideoAd;
import defpackage.y45;
import java.util.concurrent.ConcurrentHashMap;

public final class lm2 {
    private final ConcurrentHashMap<go0, VideoAd> a = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<VideoAd, go0> b = new ConcurrentHashMap<>();

    public final go0 a(VideoAd videoAd) {
        y45.j(videoAd, "yandexVideoAd");
        go0 go0Var = this.b.get(videoAd);
        if (go0Var == null) {
            hp0.a("Incorrect state exception. The VideoAd provided to this specific InstreamAdPlayerListener is incorrect.\nPossible reasons: \n 1) Using the wrong instance of InstreamAdPlayerListener for callback notification\n 2) Notifying a callback for a VideoAd that has been released", new Object[0]);
        }
        return go0Var;
    }

    public final void b(go0 go0Var) {
        y45.j(go0Var, "coreVideoAd");
        this.a.remove(go0Var);
    }

    public final void b(VideoAd videoAd) {
        y45.j(videoAd, "videoAd");
        this.b.remove(videoAd);
    }

    public final VideoAd a(go0 go0Var) {
        y45.j(go0Var, "coreVideoAd");
        VideoAd videoAd = this.a.get(go0Var);
        if (videoAd != null) {
            return videoAd;
        }
        pn2 pn2Var = new pn2(go0Var, new ac2());
        this.a.put(go0Var, pn2Var);
        this.b.put(pn2Var, go0Var);
        return pn2Var;
    }
}
