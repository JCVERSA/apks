package com.yandex.mobile.ads.instream.exoplayer;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.MainThread;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.exoplayer2.source.ads.AdsMediaSource;
import com.google.android.exoplayer2.t;
import com.google.android.exoplayer2.upstream.b;
import com.yandex.mobile.ads.impl.cb;
import com.yandex.mobile.ads.impl.dn0;
import com.yandex.mobile.ads.impl.en2;
import com.yandex.mobile.ads.impl.kl1;
import com.yandex.mobile.ads.impl.km2;
import com.yandex.mobile.ads.impl.lm2;
import com.yandex.mobile.ads.impl.rn2;
import com.yandex.mobile.ads.instream.InstreamAdRequestConfiguration;
import com.yandex.mobile.ads.video.playback.VideoAdPlaybackListener;
import defpackage.a8;
import defpackage.y45;
import defpackage.y71;
import java.io.IOException;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 22\u00020\u0001:\u00012B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\n2\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u001b\u0010\u001a\u001a\u00020\n2\n\u0010\u0019\u001a\u00020\u0017\"\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ7\u0010&\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 2\u0006\u0010#\u001a\u00020\"2\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'J\u001f\u0010(\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b(\u0010)J'\u0010,\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010*\u001a\u00020\u00182\u0006\u0010+\u001a\u00020\u0018H\u0016¢\u0006\u0004\b,\u0010-J/\u00100\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010*\u001a\u00020\u00182\u0006\u0010+\u001a\u00020\u00182\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b0\u00101¨\u00063"}, d2 = {"Lcom/yandex/mobile/ads/instream/exoplayer/YandexAdsLoader;", "Lcom/yandex/mobile/ads/impl/kl1;", "Landroid/content/Context;", "context", "Lcom/yandex/mobile/ads/instream/InstreamAdRequestConfiguration;", "requestConfiguration", MethodDecl.initName, "(Landroid/content/Context;Lcom/yandex/mobile/ads/instream/InstreamAdRequestConfiguration;)V", "Landroid/view/ViewGroup;", "adViewGroup", "Lzfb;", "requestAds", "(Landroid/view/ViewGroup;)V", "Lcom/yandex/mobile/ads/video/playback/VideoAdPlaybackListener;", "listener", "setVideoAdPlaybackListener", "(Lcom/yandex/mobile/ads/video/playback/VideoAdPlaybackListener;)V", "Lcom/google/android/exoplayer2/t;", "player", "setPlayer", "(Lcom/google/android/exoplayer2/t;)V", "release", "()V", "", "", "contentTypes", "setSupportedContentTypes", "([I)V", "Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;", "adsMediaSource", "Lcom/google/android/exoplayer2/upstream/b;", "adTagDataSpec", "", "adPlaybackId", "La8;", "adViewProvider", "Lcom/google/android/exoplayer2/source/ads/b;", "eventListener", TtmlNode.START, "(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/upstream/b;Ljava/lang/Object;La8;Lcom/google/android/exoplayer2/source/ads/b;)V", "stop", "(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/b;)V", "adGroupIndex", "adIndexInAdGroup", "handlePrepareComplete", "(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;II)V", "Ljava/io/IOException;", "exception", "handlePrepareError", "(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;IILjava/io/IOException;)V", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
@MainThread
public final class YandexAdsLoader extends kl1 {
    public static final String AD_TAG_URI = "yandex://ad_tag";
    private final dn0 b;
    private final lm2 c;

    public YandexAdsLoader(Context context, InstreamAdRequestConfiguration instreamAdRequestConfiguration) {
        y45.j(context, "context");
        y45.j(instreamAdRequestConfiguration, "requestConfiguration");
        this.b = new cb(context, new en2(context), new km2(instreamAdRequestConfiguration)).a();
        this.c = new lm2();
    }

    @Override
    public void handlePrepareComplete(AdsMediaSource adsMediaSource, int adGroupIndex, int adIndexInAdGroup) {
        y45.j(adsMediaSource, "adsMediaSource");
        this.b.a(adGroupIndex, adIndexInAdGroup);
    }

    @Override
    public void handlePrepareError(AdsMediaSource adsMediaSource, int adGroupIndex, int adIndexInAdGroup, IOException exception) {
        y45.j(adsMediaSource, "adsMediaSource");
        y45.j(exception, "exception");
        this.b.a(adGroupIndex, adIndexInAdGroup, exception);
    }

    @Override
    public void release() {
        this.b.a();
    }

    public final void requestAds(ViewGroup adViewGroup) {
        this.b.a(adViewGroup, y71.k());
    }

    @Override
    public void setPlayer(t player) {
        this.b.a(player);
    }

    @Override
    public void setSupportedContentTypes(int... contentTypes) {
        y45.j(contentTypes, "contentTypes");
    }

    public final void setVideoAdPlaybackListener(VideoAdPlaybackListener listener) {
        this.b.a(listener != null ? new rn2(listener, this.c) : null);
    }

    @Override
    public void start(AdsMediaSource adsMediaSource, b adTagDataSpec, Object adPlaybackId, a8 adViewProvider, com.google.android.exoplayer2.source.ads.b eventListener) {
        y45.j(adsMediaSource, "adsMediaSource");
        y45.j(adTagDataSpec, "adTagDataSpec");
        y45.j(adPlaybackId, "adPlaybackId");
        y45.j(adViewProvider, "adViewProvider");
        y45.j(eventListener, "eventListener");
        this.b.a(eventListener, adViewProvider, adPlaybackId);
    }

    @Override
    public void stop(AdsMediaSource adsMediaSource, com.google.android.exoplayer2.source.ads.b eventListener) {
        y45.j(adsMediaSource, "adsMediaSource");
        y45.j(eventListener, "eventListener");
        this.b.b();
    }
}
