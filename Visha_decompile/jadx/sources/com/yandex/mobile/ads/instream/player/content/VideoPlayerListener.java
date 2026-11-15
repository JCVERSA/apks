package com.yandex.mobile.ads.instream.player.content;

import androidx.annotation.MainThread;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bg\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H&¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H&¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0002H&¢\u0006\u0004\b\b\u0010\u0004¨\u0006\t"}, d2 = {"Lcom/yandex/mobile/ads/instream/player/content/VideoPlayerListener;", "", "Lzfb;", "onVideoPrepared", "()V", "onVideoCompleted", "onVideoResumed", "onVideoPaused", "onVideoError", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
@MainThread
public interface VideoPlayerListener {
    void onVideoCompleted();

    void onVideoError();

    void onVideoPaused();

    void onVideoPrepared();

    void onVideoResumed();
}
