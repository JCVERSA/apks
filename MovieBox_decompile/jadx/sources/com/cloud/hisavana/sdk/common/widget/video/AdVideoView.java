package com.cloud.hisavana.sdk.common.widget.video;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.hisavana.net.utils.StorageUtils;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.j4;
import com.cloud.hisavana.sdk.manager.VideoMeasureManager;
import com.cloud.hisavana.sdk.o4;
import com.cloud.hisavana.sdk.s4;
import com.cloud.sdk.commonutil.util.e;
import com.cloud.sdk.commonutil.util.h;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.o2;
import com.google.android.exoplayer2.p;
import com.google.android.exoplayer2.p2;
import com.google.android.exoplayer2.q3;
import com.google.android.exoplayer2.r;
import com.google.android.exoplayer2.r2;
import com.google.android.exoplayer2.source.x;
import com.google.android.exoplayer2.t;
import com.google.android.exoplayer2.upstream.cache.SimpleCache;
import com.google.android.exoplayer2.upstream.cache.q;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.video.y;
import com.google.android.exoplayer2.w1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import da.f;
import java.util.List;
import na.z;

public class AdVideoView extends FrameLayout {

    private static k.a f21669q;

    private final MediaTextureView f21670a;

    private final ScaleImageView f21671b;

    private t f21672c;

    private j4 f21673d;

    private boolean f21674e;

    private boolean f21675f;

    private AdsDTO f21676g;

    private String f21677h;

    private boolean f21678i;

    private boolean f21679j;

    private boolean f21680k;

    private boolean f21681l;

    private boolean f21682m;

    private p2.d f21683n;

    private final Runnable f21684o;

    private s4 f21685p;

    class a implements p2.d {
        a() {
        }

        @Override
        public void onAvailableCommandsChanged(p2.b bVar) {
            r2.c(this, bVar);
        }

        @Override
        public void onCues(f fVar) {
            r2.d(this, fVar);
        }

        @Override
        public void onDeviceInfoChanged(r rVar) {
            r2.f(this, rVar);
        }

        @Override
        public void onDeviceVolumeChanged(int i10, boolean z10) {
            r2.g(this, i10, z10);
        }

        @Override
        public void onEvents(p2 p2Var, p2.c cVar) {
            r2.h(this, p2Var, cVar);
        }

        @Override
        public void onIsLoadingChanged(boolean z10) {
            r2.i(this, z10);
        }

        @Override
        public void onIsPlayingChanged(boolean z10) {
            b4.b().d("AdVideoView", "onIsPlayingChanged  -----> isPlaying = " + z10);
            if (z10) {
                if (AdVideoView.this.f21673d != null && !AdVideoView.this.f21675f) {
                    AdVideoView.this.f21675f = true;
                    AdVideoView.this.f21673d.a();
                    AdVideoView.this.o();
                }
                AdVideoView.this.f21671b.setVisibility(8);
                AdVideoView.this.q();
            } else {
                AdVideoView adVideoView = AdVideoView.this;
                adVideoView.removeCallbacks(adVideoView.f21684o);
            }
            if (AdVideoView.this.f21673d != null) {
                AdVideoView.this.f21673d.onIsPlayingChanged(z10);
            }
        }

        @Override
        public void onLoadingChanged(boolean z10) {
            r2.k(this, z10);
        }

        @Override
        public void onMediaItemTransition(w1 w1Var, int i10) {
            r2.m(this, w1Var, i10);
        }

        @Override
        public void onMediaMetadataChanged(b2 b2Var) {
            r2.n(this, b2Var);
        }

        @Override
        public void onMetadata(Metadata metadata) {
            r2.o(this, metadata);
        }

        @Override
        public void onPlayWhenReadyChanged(boolean z10, int i10) {
            r2.p(this, z10, i10);
        }

        @Override
        public void onPlaybackParametersChanged(o2 o2Var) {
            r2.q(this, o2Var);
        }

        @Override
        public void onPlaybackStateChanged(int i10) {
            if (i10 == 2) {
                b4.b().d("AdVideoView", "current status is loading.....");
                return;
            }
            if (i10 == 3) {
                b4.b().d("AdVideoView", "current status is loading completed");
                if (AdVideoView.this.f21673d != null) {
                    AdVideoView.this.f21673d.d();
                }
                AdVideoView.this.w();
                return;
            }
            if (i10 != 4) {
                return;
            }
            b4.b().d("AdVideoView", "current status is playing finished");
            AdVideoView adVideoView = AdVideoView.this;
            adVideoView.removeCallbacks(adVideoView.f21684o);
            if (AdVideoView.this.f21673d == null || AdVideoView.this.f21672c == null) {
                return;
            }
            AdVideoView.this.f21673d.b(AdVideoView.this.f21672c.getDuration(), AdVideoView.this.f21672c.getDuration(), 100);
            AdVideoView.this.f21673d.onComplete();
        }

        @Override
        public void onPlaybackSuppressionReasonChanged(int i10) {
            r2.s(this, i10);
        }

        @Override
        public void onPlayerError(PlaybackException playbackException) {
            b4.b().w("AdVideoView", "errorCode == " + playbackException.errorCode + ", error message == " + playbackException.getMessage());
            if (AdVideoView.this.f21673d != null) {
                AdVideoView.this.f21673d.onPlayerError(playbackException);
            }
            Bitmap bitmap = AdVideoView.this.f21670a.getBitmap();
            if (bitmap != null) {
                AdVideoView.this.f21671b.setImageBitmap(bitmap);
                AdVideoView.this.f21671b.setVisibility(0);
            }
        }

        @Override
        public void onPlayerErrorChanged(PlaybackException playbackException) {
            r2.u(this, playbackException);
        }

        @Override
        public void onPlayerStateChanged(boolean z10, int i10) {
            r2.v(this, z10, i10);
        }

        @Override
        public void onPositionDiscontinuity(int i10) {
            r2.x(this, i10);
        }

        @Override
        public void onRenderedFirstFrame() {
            r2.z(this);
        }

        @Override
        public void onRepeatModeChanged(int i10) {
            r2.A(this, i10);
        }

        @Override
        public void onSeekProcessed() {
            r2.D(this);
        }

        @Override
        public void onShuffleModeEnabledChanged(boolean z10) {
            r2.E(this, z10);
        }

        @Override
        public void onSkipSilenceEnabledChanged(boolean z10) {
            r2.F(this, z10);
        }

        @Override
        public void onSurfaceSizeChanged(int i10, int i11) {
            r2.G(this, i10, i11);
        }

        @Override
        public void onTimelineChanged(l3 l3Var, int i10) {
            r2.H(this, l3Var, i10);
        }

        @Override
        public void onTrackSelectionParametersChanged(z zVar) {
            r2.I(this, zVar);
        }

        @Override
        public void onTracksChanged(q3 q3Var) {
            r2.J(this, q3Var);
        }

        @Override
        public void onVideoSizeChanged(y yVar) {
            b4.b().d("AdVideoView", "onVideoSizeChanged ------> ");
            AdVideoView.this.w();
        }

        @Override
        public void onVolumeChanged(float f10) {
            b4.b().d("AdVideoView", "onVolumeChanged ----> volume = " + f10);
            if (AdVideoView.this.f21673d != null) {
                AdVideoView.this.f21673d.onVolumeChanged(f10);
            }
        }

        @Override
        public void onCues(List list) {
            r2.e(this, list);
        }

        @Override
        public void onPositionDiscontinuity(p2.e eVar, p2.e eVar2, int i10) {
            r2.y(this, eVar, eVar2, i10);
        }
    }

    class b extends DrawableResponseListener {
        b() {
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            if (AdVideoView.this.f21673d != null) {
                AdVideoView.this.f21673d.e(false);
            }
        }

        @Override
        public void g(int i10, AdImage adImage) {
            b4.b().d("AdVideoView", "setCompanionSize ------> onRequestSuccess");
            if (AdVideoView.this.f21672c == null || !AdVideoView.this.f21672c.isPlaying()) {
                AdVideoView.this.f21671b.setVisibility(0);
                if (AdVideoView.this.f21673d != null) {
                    AdVideoView.this.f21673d.e(true);
                }
            }
        }
    }

    class c implements s4 {
        c() {
        }

        @Override
        public void a(double d10) {
            if (AdVideoView.this.f21675f) {
                if (d10 <= 0.0d) {
                    if (AdVideoView.this.isPlaying()) {
                        AdVideoView.this.pause();
                    }
                    if (!AdVideoView.this.f21680k || AdVideoView.this.f21672c == null) {
                        return;
                    }
                    AdVideoView.this.f21672c.release();
                    AdVideoView.this.f21672c.clearVideoSurface();
                    AdVideoView.this.f21672c = null;
                    return;
                }
                if (AdVideoView.this.f21680k) {
                    if (AdVideoView.this.f21672c == null) {
                        AdVideoView.this.u();
                    }
                } else {
                    if (AdVideoView.this.isPlaying()) {
                        return;
                    }
                    AdVideoView.this.play();
                }
            }
        }
    }

    public AdVideoView(@NonNull Context context) {
        this(context, null);
    }

    public void o() {
        if (this.f21681l) {
            VideoMeasureManager.INSTANCE.g(new o4(this.f21676g, this, this.f21685p));
        }
    }

    private void p() {
        t tVar = this.f21672c;
        if (tVar == null) {
            return;
        }
        this.f21678i = true;
        tVar.setVolume(0.0f);
        j4 j4Var = this.f21673d;
        if (j4Var != null) {
            j4Var.onVolumeChanged(0.0f);
        }
    }

    public void q() {
        post(this.f21684o);
    }

    private static void r() {
        if (f21669q == null) {
            f21669q = new com.google.android.exoplayer2.upstream.cache.a.c().h(new SimpleCache(StorageUtils.d(e.a(), true), new q(104857600L), new h9.b(e.a()))).i(new com.google.android.exoplayer2.upstream.r.a(e.a()));
        }
    }

    public void u() {
        String str;
        t tVar = this.f21672c;
        if (tVar != null) {
            p2.d dVar = this.f21683n;
            if (dVar != null) {
                tVar.B(dVar);
            }
            this.f21672c.stop();
            this.f21672c.release();
            this.f21672c = null;
        }
        this.f21675f = false;
        t tVarF = new t.b(getContext()).l(new p(getContext()).j(true)).f();
        this.f21672c = tVarF;
        tVarF.setVideoTextureView(this.f21670a);
        a aVar = new a();
        this.f21683n = aVar;
        this.f21672c.E(aVar);
        if (this.f21672c == null || (str = this.f21677h) == null) {
            b4.b().e("AdVideoView", "setMediaData adPlayer is null");
            return;
        }
        w1 w1VarD = w1.d(Uri.parse(str));
        if (this.f21682m) {
            r();
            this.f21672c.a(new x.b(f21669q).a(w1VarD));
        } else {
            this.f21672c.C(w1VarD);
        }
        b4.b().d("AdVideoView", "setMediaData -------------> playWhenReady = " + this.f21674e);
        this.f21672c.setPlayWhenReady(this.f21674e);
        if (this.f21678i) {
            this.f21672c.setVolume(0.0f);
        }
        this.f21672c.prepare();
    }

    private void v() {
        t tVar = this.f21672c;
        if (tVar == null) {
            return;
        }
        tVar.setVolume(1.0f);
        this.f21678i = false;
        j4 j4Var = this.f21673d;
        if (j4Var != null) {
            j4Var.onVolumeChanged(1.0f);
        }
    }

    public void w() {
        t tVar = this.f21672c;
        if (tVar == null || this.f21679j) {
            return;
        }
        y yVarQ = tVar.q();
        int i10 = yVarQ == null ? 0 : yVarQ.f27140a;
        int i11 = yVarQ != null ? yVarQ.f27141b : 0;
        if (i10 > 0 && i11 > 0) {
            this.f21676g.setMaterialWith(i10);
            this.f21676g.setMaterialHeight(i11);
        }
        setVideoSize(i10, i11);
    }

    public void dispatchPause() {
        t tVar = this.f21672c;
        if (tVar == null) {
            return;
        }
        tVar.pause();
        removeCallbacks(this.f21684o);
    }

    public void dispatchPlay() {
        t tVar = this.f21672c;
        if (tVar == null) {
            return;
        }
        int playbackState = tVar.getPlaybackState();
        if (playbackState == 1) {
            this.f21672c.prepare();
        } else if (playbackState == 4) {
            t tVar2 = this.f21672c;
            tVar2.seekTo(tVar2.u(), C.TIME_UNSET);
        }
        this.f21672c.play();
        q();
    }

    public void dispatchPlayPause() {
        t tVar = this.f21672c;
        if (tVar == null) {
            return;
        }
        int playbackState = tVar.getPlaybackState();
        if (playbackState == 1 || playbackState == 4 || !this.f21672c.getPlayWhenReady()) {
            j4 j4Var = this.f21673d;
            if (j4Var != null) {
                j4Var.c(true);
            }
            dispatchPlay();
            return;
        }
        j4 j4Var2 = this.f21673d;
        if (j4Var2 != null) {
            j4Var2.c(false);
        }
        dispatchPause();
    }

    public long getCurrentPosition() {
        t tVar = this.f21672c;
        if (tVar == null) {
            return 0L;
        }
        return tVar.getCurrentPosition();
    }

    public long getDuration() {
        t tVar = this.f21672c;
        if (tVar == null) {
            return 0L;
        }
        return tVar.getDuration();
    }

    public boolean isPlayWhenReady() {
        return this.f21674e;
    }

    public boolean isPlaying() {
        t tVar = this.f21672c;
        if (tVar != null) {
            return tVar.isPlaying();
        }
        return false;
    }

    public void openOrCloseVolume() {
        t tVar = this.f21672c;
        if (tVar == null) {
            return;
        }
        if (tVar.getVolume() == 0.0f) {
            v();
        } else {
            p();
        }
    }

    public void pause() {
        t tVar = this.f21672c;
        if (tVar != null) {
            tVar.pause();
        }
    }

    public void play() {
        t tVar = this.f21672c;
        if (tVar != null) {
            tVar.play();
        }
    }

    public void release() {
        b4.b().d("AdVideoView", "-------------> release && adplayer =" + System.identityHashCode(this.f21672c));
        VideoMeasureManager.INSTANCE.f(this.f21676g);
        this.f21670a.destroyDrawingCache();
        removeCallbacks(this.f21684o);
        if (this.f21672c != null) {
            if (isPlaying()) {
                pause();
            }
            p2.d dVar = this.f21683n;
            if (dVar != null) {
                this.f21672c.B(dVar);
            }
            this.f21672c.clearVideoSurface();
            this.f21672c.stop();
            this.f21672c.release();
            this.f21672c = null;
        }
    }

    public void repeat() {
        t tVar = this.f21672c;
        if (tVar == null) {
            return;
        }
        if (tVar.getPlaybackState() == 1) {
            this.f21672c.prepare();
        } else {
            t tVar2 = this.f21672c;
            tVar2.seekTo(tVar2.u(), C.TIME_UNSET);
        }
        this.f21672c.play();
    }

    public final void seekTo(long j10) {
        t tVar = this.f21672c;
        if (tVar != null) {
            tVar.seekTo(j10);
        }
    }

    public void setAdMediaPlayerListener(j4 j4Var) {
        this.f21673d = j4Var;
    }

    public void setCompanionSize(String str) {
        DownLoadRequest.o(str, null, 12, new b(), this.f21671b);
    }

    public void setCompanionViewVisibility(int i10) {
        ScaleImageView scaleImageView = this.f21671b;
        if (scaleImageView != null) {
            scaleImageView.setVisibility(i10);
        }
    }

    public void setMeasureAble(boolean z10) {
        this.f21681l = z10;
    }

    public void setMediaData(AdsDTO adsDTO, String str, boolean z10, boolean z11) {
        b4.b().d("AdVideoView", "setMediaData -------------> path = " + str + "; and shouldCache is " + z11);
        this.f21676g = adsDTO;
        this.f21677h = str;
        this.f21678i = z10;
        this.f21682m = z11;
        this.f21679j = false;
        if (adsDTO != null && adsDTO.getMaterialWith() > 0 && this.f21676g.getMaterialHeight() > 0) {
            this.f21679j = true;
            setVideoSize(this.f21676g.getMaterialWith(), this.f21676g.getMaterialHeight());
        }
        this.f21670a.post(new Runnable() {
            @Override
            public final void run() {
                this.f21721a.u();
            }
        });
    }

    public void setPlayWhenReady(boolean z10) {
        this.f21674e = z10;
    }

    public void setUseListMode(boolean z10) {
        this.f21680k = z10;
    }

    public void setVideoSize(int i10, int i11) {
        b4.b().d("AdVideoView", "onVideoSizeChanged ------> width=" + i10 + " height=" + i11);
        this.f21670a.adaptVideoSize(i10 > 0 ? i10 : h.g(), i11 > 0 ? i11 : h.f());
        j4 j4Var = this.f21673d;
        if (j4Var != null) {
            j4Var.onVideoSizeChanged(i10, i11);
        }
    }

    protected void t() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        addView(this.f21670a, layoutParams);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.gravity = 17;
        addView(this.f21671b, layoutParams2);
    }

    public AdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f21674e = true;
        this.f21681l = true;
        this.f21682m = false;
        this.f21684o = new Runnable() {
            @Override
            public void run() {
                if (AdVideoView.this.f21672c == null) {
                    return;
                }
                int playbackState = AdVideoView.this.f21672c.getPlaybackState();
                long duration = AdVideoView.this.f21672c.getDuration();
                long currentPosition = AdVideoView.this.f21672c.getCurrentPosition();
                int i11 = duration == 0 ? 0 : (int) ((100 * currentPosition) / duration);
                if (AdVideoView.this.f21673d != null) {
                    AdVideoView.this.f21673d.b(duration, currentPosition, i11);
                }
                if (!AdVideoView.this.f21672c.isPlaying() || playbackState == 4 || playbackState == 1) {
                    return;
                }
                AdVideoView adVideoView = AdVideoView.this;
                adVideoView.postDelayed(adVideoView.f21684o, 1000 - (currentPosition % 1000));
            }
        };
        this.f21685p = new c();
        this.f21670a = new MediaTextureView(context);
        this.f21671b = new ScaleImageView(context);
        t();
    }
}
