package com.yandex.mobile.ads.instream.pauseroll;

import androidx.annotation.MainThread;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.yandex.mobile.ads.instream.InstreamAdBreak;
import com.yandex.mobile.ads.instream.InstreamAdBreakEventListener;
import com.yandex.mobile.ads.instream.player.ad.InstreamAdPlayer;
import com.yandex.mobile.ads.instream.player.ad.InstreamAdView;
import com.yandex.mobile.ads.video.playback.VideoAdPlaybackListener;
import kotlin.Metadata;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\b\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0007H&¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH&¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0004H&¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0004H&¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0004H&¢\u0006\u0004\b\u0015\u0010\u0013R\u0014\u0010\u0019\u001a\u00020\u00168&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcom/yandex/mobile/ads/instream/pauseroll/Pauseroll;", "", "Lcom/yandex/mobile/ads/instream/InstreamAdBreakEventListener;", "listener", "Lzfb;", "setListener", "(Lcom/yandex/mobile/ads/instream/InstreamAdBreakEventListener;)V", "Lcom/yandex/mobile/ads/video/playback/VideoAdPlaybackListener;", "setVideoAdPlaybackListener", "(Lcom/yandex/mobile/ads/video/playback/VideoAdPlaybackListener;)V", "Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;", "instreamAdPlayer", "prepare", "(Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;)V", "Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdView;", "instreamAdView", PlayAudioData.TAG_NEED_PLAY, "(Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdView;)V", "pause", "()V", "resume", "invalidate", "Lcom/yandex/mobile/ads/instream/InstreamAdBreak;", "getInstreamAdBreak", "()Lcom/yandex/mobile/ads/instream/InstreamAdBreak;", "instreamAdBreak", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
@MainThread
public interface Pauseroll {
    InstreamAdBreak getInstreamAdBreak();

    void invalidate();

    void pause();

    void play(InstreamAdView instreamAdView);

    void prepare(InstreamAdPlayer instreamAdPlayer);

    void resume();

    void setListener(InstreamAdBreakEventListener listener);

    void setVideoAdPlaybackListener(VideoAdPlaybackListener listener);
}
