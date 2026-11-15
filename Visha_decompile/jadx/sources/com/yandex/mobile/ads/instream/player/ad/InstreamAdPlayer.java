package com.yandex.mobile.ads.instream.player.ad;

import androidx.annotation.MainThread;
import com.yandex.mobile.ads.video.playback.model.VideoAd;
import kotlin.Metadata;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0007\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\b\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\t\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\n\u0010\u0006J\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u000b\u0010\u0006J\u001f\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH&¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0012\u0010\u0006J\u0019\u0010\u0015\u001a\u00020\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H&¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u001a\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;", "", "Lcom/yandex/mobile/ads/video/playback/model/VideoAd;", "videoAd", "Lzfb;", "prepareAd", "(Lcom/yandex/mobile/ads/video/playback/model/VideoAd;)V", "playAd", "pauseAd", "resumeAd", "stopAd", "skipAd", "", "volume", "setVolume", "(Lcom/yandex/mobile/ads/video/playback/model/VideoAd;F)V", "getVolume", "(Lcom/yandex/mobile/ads/video/playback/model/VideoAd;)F", "releaseAd", "Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayerListener;", "instreamAdPlayerListener", "setInstreamAdPlayerListener", "(Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayerListener;)V", "", "getAdDuration", "(Lcom/yandex/mobile/ads/video/playback/model/VideoAd;)J", "getAdPosition", "", "isPlayingAd", "(Lcom/yandex/mobile/ads/video/playback/model/VideoAd;)Z", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
@MainThread
public interface InstreamAdPlayer {
    long getAdDuration(VideoAd videoAd);

    long getAdPosition(VideoAd videoAd);

    float getVolume(VideoAd videoAd);

    boolean isPlayingAd(VideoAd videoAd);

    void pauseAd(VideoAd videoAd);

    void playAd(VideoAd videoAd);

    void prepareAd(VideoAd videoAd);

    void releaseAd(VideoAd videoAd);

    void resumeAd(VideoAd videoAd);

    void setInstreamAdPlayerListener(InstreamAdPlayerListener instreamAdPlayerListener);

    void setVolume(VideoAd videoAd, float volume);

    void skipAd(VideoAd videoAd);

    void stopAd(VideoAd videoAd);
}
