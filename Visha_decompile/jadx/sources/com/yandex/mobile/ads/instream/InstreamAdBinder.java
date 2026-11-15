package com.yandex.mobile.ads.instream;

import android.content.Context;
import androidx.annotation.MainThread;
import com.yandex.mobile.ads.impl.en2;
import com.yandex.mobile.ads.impl.fm2;
import com.yandex.mobile.ads.impl.ft;
import com.yandex.mobile.ads.impl.h82;
import com.yandex.mobile.ads.impl.hl1;
import com.yandex.mobile.ads.impl.hm2;
import com.yandex.mobile.ads.impl.lm2;
import com.yandex.mobile.ads.impl.mt;
import com.yandex.mobile.ads.impl.rn2;
import com.yandex.mobile.ads.impl.tn2;
import com.yandex.mobile.ads.instream.player.ad.InstreamAdPlayer;
import com.yandex.mobile.ads.instream.player.ad.InstreamAdView;
import com.yandex.mobile.ads.instream.player.content.VideoPlayer;
import com.yandex.mobile.ads.video.playback.VideoAdPlaybackListener;
import defpackage.y45;
import defpackage.y71;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B'\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u000f¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\u000f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u000f¢\u0006\u0004\b\u0019\u0010\u0013J\r\u0010\u001a\u001a\u00020\u000f¢\u0006\u0004\b\u001a\u0010\u0013J\u0017\u0010\u001c\u001a\u00020\u000f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u001b¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lcom/yandex/mobile/ads/instream/InstreamAdBinder;", "Lcom/yandex/mobile/ads/impl/hl1;", "Lcom/yandex/mobile/ads/impl/h82;", "Landroid/content/Context;", "context", "Lcom/yandex/mobile/ads/instream/InstreamAd;", "instreamAd", "Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;", "instreamAdPlayer", "Lcom/yandex/mobile/ads/instream/player/content/VideoPlayer;", "videoPlayer", MethodDecl.initName, "(Landroid/content/Context;Lcom/yandex/mobile/ads/instream/InstreamAd;Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdPlayer;Lcom/yandex/mobile/ads/instream/player/content/VideoPlayer;)V", "Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdView;", "instreamAdView", "Lzfb;", "bind", "(Lcom/yandex/mobile/ads/instream/player/ad/InstreamAdView;)V", "invalidateVideoPlayer", "()V", "invalidateAdPlayer", "Lcom/yandex/mobile/ads/instream/InstreamAdListener;", "listener", "setInstreamAdListener", "(Lcom/yandex/mobile/ads/instream/InstreamAdListener;)V", "unbind", "prepareAd", "Lcom/yandex/mobile/ads/video/playback/VideoAdPlaybackListener;", "setVideoAdPlaybackListener", "(Lcom/yandex/mobile/ads/video/playback/VideoAdPlaybackListener;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
@MainThread
public final class InstreamAdBinder extends hl1 implements h82 {
    private final lm2 a;
    private final ft b;

    public InstreamAdBinder(Context context, InstreamAd instreamAd, InstreamAdPlayer instreamAdPlayer, VideoPlayer videoPlayer) {
        y45.j(context, "context");
        y45.j(instreamAd, "instreamAd");
        y45.j(instreamAdPlayer, "instreamAdPlayer");
        y45.j(videoPlayer, "videoPlayer");
        en2 en2Var = new en2(context);
        lm2 lm2Var = new lm2();
        this.a = lm2Var;
        this.b = new ft(context, en2Var, mt.a(instreamAd), new hm2(instreamAdPlayer, lm2Var), new tn2(videoPlayer));
    }

    public final void bind(InstreamAdView instreamAdView) {
        y45.j(instreamAdView, "instreamAdView");
        this.b.a(instreamAdView, y71.k());
    }

    @Override
    public void invalidateAdPlayer() {
        this.b.invalidateAdPlayer();
    }

    public final void invalidateVideoPlayer() {
        this.b.a();
    }

    public final void prepareAd() {
        this.b.b();
    }

    public final void setInstreamAdListener(InstreamAdListener listener) {
        this.b.a(listener != null ? new fm2(listener) : null);
    }

    public final void setVideoAdPlaybackListener(VideoAdPlaybackListener listener) {
        this.b.a(listener != null ? new rn2(listener, this.a) : null);
    }

    public final void unbind() {
        this.b.e();
    }
}
