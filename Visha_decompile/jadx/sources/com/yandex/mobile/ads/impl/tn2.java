package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.instream.player.content.VideoPlayer;
import defpackage.y45;

public final class tn2 implements mu {
    private final VideoPlayer a;

    public tn2(VideoPlayer videoPlayer) {
        y45.j(videoPlayer, "videoPlayer");
        this.a = videoPlayer;
    }

    @Override
    public final void a(lf2 lf2Var) {
        this.a.setVideoPlayerListener(lf2Var != null ? new un2(lf2Var) : null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof tn2) && y45.e(this.a, ((tn2) obj).a);
    }

    @Override
    public final long getVideoDuration() {
        return this.a.getVideoDuration();
    }

    @Override
    public final long getVideoPosition() {
        return this.a.getVideoPosition();
    }

    @Override
    public final float getVolume() {
        return this.a.getVolume();
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override
    public final void pauseVideo() {
        this.a.pauseVideo();
    }

    @Override
    public final void prepareVideo() {
        this.a.prepareVideo();
    }

    @Override
    public final void resumeVideo() {
        this.a.resumeVideo();
    }

    public final String toString() {
        return "YandexVideoPlayerAdapter(videoPlayer=" + this.a + ")";
    }
}
