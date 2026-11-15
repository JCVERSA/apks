package com.yandex.mobile.ads.instream.player.ad;

import androidx.annotation.MainThread;
import com.yandex.mobile.ads.instream.player.ad.error.InstreamAdPlayerError;
import com.yandex.mobile.ads.video.playback.model.VideoAd;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0007\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\b\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\t\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\n\u0010\u0006J\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u000b\u0010\u0006J\u0017\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\f\u0010\u0006J\u001f\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH&¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0011\u0010\u0006J\u0017\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0012\u0010\u0006J\u001f\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H&¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayerListener;", "", "Lcom/yandex/mobile/ads/video/playback/model/VideoAd;", "videoAd", "Lzfb;", "onAdPrepared", "(Lcom/yandex/mobile/ads/video/playback/model/VideoAd;)V", "onAdStarted", "onAdPaused", "onAdResumed", "onAdBufferingStarted", "onAdBufferingFinished", "onAdCompleted", "", "volume", "onVolumeChanged", "(Lcom/yandex/mobile/ads/video/playback/model/VideoAd;F)V", "onAdStopped", "onAdSkipped", "Lcom/yandex/mobile/ads/instream/player/ad/error/InstreamAdPlayerError;", "error", "onError", "(Lcom/yandex/mobile/ads/video/playback/model/VideoAd;Lcom/yandex/mobile/ads/instream/player/ad/error/InstreamAdPlayerError;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
@MainThread
public interface InstreamAdPlayerListener {
    void onAdBufferingFinished(VideoAd videoAd);

    void onAdBufferingStarted(VideoAd videoAd);

    void onAdCompleted(VideoAd videoAd);

    void onAdPaused(VideoAd videoAd);

    void onAdPrepared(VideoAd videoAd);

    void onAdResumed(VideoAd videoAd);

    void onAdSkipped(VideoAd videoAd);

    void onAdStarted(VideoAd videoAd);

    void onAdStopped(VideoAd videoAd);

    void onError(VideoAd videoAd, InstreamAdPlayerError error);

    void onVolumeChanged(VideoAd videoAd, float volume);
}
