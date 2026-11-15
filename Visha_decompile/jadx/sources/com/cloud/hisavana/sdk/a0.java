package com.cloud.hisavana.sdk;

import android.content.Context;
import android.net.Uri;
import androidx.media3.common.C;
import com.cloud.hisavana.net.utils.StorageUtils;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.widget.video.MediaTextureView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.upstream.cache.SimpleCache;
import defpackage.aw9;
import defpackage.f7c;
import defpackage.ikd;
import defpackage.uj5;
import defpackage.wsd;
import defpackage.xnd;
import defpackage.y32;
import defpackage.y45;
import java.io.File;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class a0 implements wsd {
    public static volatile com.google.android.exoplayer2.upstream.a.InterfaceC0084a p;
    public final String a;
    public final Context b;
    public ExoPlayer c;
    public xnd d;
    public AdsDTO e;
    public String f;
    public boolean g;
    public boolean h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public MediaTextureView n;
    public static final a o = new a(null);
    public static final Object q = new Object();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final com.google.android.exoplayer2.upstream.a.InterfaceC0084a a(Context context) {
            com.google.android.exoplayer2.upstream.a.InterfaceC0084a aVar;
            com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084a = a0.p;
            if (interfaceC0084a != null) {
                return interfaceC0084a;
            }
            synchronized (a0.q) {
                aVar = a0.p;
                if (aVar == null) {
                    try {
                        File fileE = StorageUtils.e(context, true);
                        y45.i(fileE, "getExoCacheDirectory(...)");
                        aVar = new com.google.android.exoplayer2.upstream.cache.a.c().c(new SimpleCache(fileE, new uj5(104857600L), new aw9(context))).d(new com.google.android.exoplayer2.upstream.c.a(context));
                        a0.p = aVar;
                        y45.g(aVar);
                    } catch (Throwable th) {
                        ikd.b().w("ExoPlayerImpl", "disk cache init failed, fallback to no-cache: " + th.getMessage());
                        aVar = new com.google.android.exoplayer2.upstream.c.a(context);
                        a0.p = aVar;
                    }
                }
            }
            return aVar;
        }

        public a() {
        }
    }

    public static final class b implements com.google.android.exoplayer2.t.d {
        public b() {
        }

        @Override
        public void onIsPlayingChanged(boolean z) {
            ikd.b().d(a0.this.a, "onIsPlayingChanged isPlaying=" + z);
            if (z && !a0.this.l) {
                a0.this.l = true;
                xnd xndVar = a0.this.d;
                if (xndVar != null) {
                    xndVar.d();
                }
            }
            xnd xndVar2 = a0.this.d;
            if (xndVar2 != null) {
                xndVar2.onIsPlayingChanged(z);
            }
        }

        @Override
        public void onPlaybackStateChanged(int i) {
            if (i == 2) {
                ikd.b().d(a0.this.a, "STATE_BUFFERING");
                return;
            }
            if (i == 3) {
                ikd.b().d(a0.this.a, "STATE_READY");
                xnd xndVar = a0.this.d;
                if (xndVar != null) {
                    xndVar.e();
                }
                a0.this.p();
                return;
            }
            if (i != 4) {
                return;
            }
            ikd.b().d(a0.this.a, "STATE_ENDED");
            ExoPlayer exoPlayer = a0.this.c;
            if (exoPlayer == null) {
                return;
            }
            xnd xndVar2 = a0.this.d;
            if (xndVar2 != null) {
                xndVar2.b(exoPlayer.getDuration(), exoPlayer.getDuration(), 100);
            }
            xnd xndVar3 = a0.this.d;
            if (xndVar3 != null) {
                xndVar3.onComplete();
            }
        }

        @Override
        public void onPlayerError(PlaybackException playbackException) {
            y45.j(playbackException, "error");
            ikd.b().w(a0.this.a, "errorCode=" + playbackException.errorCode + " msg=" + playbackException.getMessage());
            p pVarE = a0.this.e(playbackException);
            xnd xndVar = a0.this.d;
            if (xndVar != null) {
                xndVar.a(pVarE);
            }
        }

        @Override
        public void onVideoSizeChanged(f7c f7cVar) {
            y45.j(f7cVar, "videoSize");
            a0.this.p();
        }

        @Override
        public void onVolumeChanged(float f) {
            xnd xndVar = a0.this.d;
            if (xndVar != null) {
                xndVar.onVolumeChanged(f);
            }
        }
    }

    public a0(Context context) {
        y45.j(context, "context");
        this.a = "ExoPlayerImpl";
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.b = applicationContext;
        this.i = true;
        this.j = true;
    }

    @Override
    public void a(MediaTextureView mediaTextureView) {
        this.n = mediaTextureView;
        ExoPlayer exoPlayer = this.c;
        if (exoPlayer != null) {
            exoPlayer.setVideoTextureView(mediaTextureView);
        }
    }

    @Override
    public void b() {
        ExoPlayer exoPlayer = this.c;
        if (exoPlayer != null) {
            exoPlayer.pause();
        }
    }

    @Override
    public void c() {
        ExoPlayer exoPlayer = this.c;
        if (exoPlayer == null) {
            return;
        }
        if (exoPlayer.getPlaybackState() == 1) {
            exoPlayer.prepare();
        } else {
            exoPlayer.seekTo(exoPlayer.getCurrentMediaItemIndex(), C.TIME_UNSET);
        }
        exoPlayer.play();
    }

    @Override
    public void e() {
        ExoPlayer exoPlayer = this.c;
        if (exoPlayer == null) {
            return;
        }
        int playbackState = exoPlayer.getPlaybackState();
        if (playbackState == 1) {
            exoPlayer.prepare();
        } else if (playbackState == 4) {
            exoPlayer.seekTo(exoPlayer.getCurrentMediaItemIndex(), C.TIME_UNSET);
        }
        exoPlayer.play();
    }

    @Override
    public long getCurrentPosition() {
        ExoPlayer exoPlayer = this.c;
        if (exoPlayer != null) {
            return exoPlayer.getCurrentPosition();
        }
        return 0L;
    }

    @Override
    public long getDuration() {
        ExoPlayer exoPlayer = this.c;
        if (exoPlayer != null) {
            return exoPlayer.getDuration();
        }
        return 0L;
    }

    @Override
    public boolean getPlayWhenReady() {
        return this.i;
    }

    @Override
    public boolean isPlaying() {
        ExoPlayer exoPlayer = this.c;
        if (exoPlayer != null) {
            return exoPlayer.isPlaying();
        }
        return false;
    }

    public final void o() {
        ExoPlayer exoPlayer = this.c;
        if (exoPlayer != null) {
            exoPlayer.release();
        }
        this.c = null;
        this.l = false;
        try {
            ExoPlayer exoPlayerF = new ExoPlayer.b(this.b).l(new y32(this.b).j(true)).f();
            y45.i(exoPlayerF, "build(...)");
            MediaTextureView mediaTextureView = this.n;
            if (mediaTextureView != null) {
                exoPlayerF.setVideoTextureView(mediaTextureView);
            }
            exoPlayerF.d(new b());
            this.c = exoPlayerF;
            String str = this.f;
            if (str == null) {
                ikd.b().e(this.a, "videoPath is null, skip initPlayer");
                return;
            }
            com.google.android.exoplayer2.n nVarD = com.google.android.exoplayer2.n.d(Uri.parse(str));
            y45.i(nVarD, "fromUri(...)");
            if (this.h) {
                com.google.android.exoplayer2.source.n nVarB = new com.google.android.exoplayer2.source.n.b(o.a(this.b)).b(nVarD);
                y45.i(nVarB, "createMediaSource(...)");
                exoPlayerF.a(nVarB);
            } else {
                exoPlayerF.c(nVarD);
            }
            exoPlayerF.setPlayWhenReady(this.i);
            if (this.g) {
                exoPlayerF.setVolume(0.0f);
            }
            exoPlayerF.prepare();
        } catch (Throwable th) {
            ikd.b().e(this.a, "initPlayer failed: " + th.getMessage());
            this.c = null;
            xnd xndVar = this.d;
            if (xndVar != null) {
                String message = th.getMessage();
                if (message == null) {
                    message = "player init failed";
                }
                xndVar.a(new p(TaErrorCode.CODE_SHOW_VIDEO_PLAYER_UNKNOWN_ERROR, message, p.b.UNKNOWN, th));
            }
        }
    }

    public final void p() {
        ExoPlayer exoPlayer;
        if (this.m || (exoPlayer = this.c) == null) {
            return;
        }
        f7c videoSize = exoPlayer.getVideoSize();
        y45.i(videoSize, "getVideoSize(...)");
        int i = videoSize.b;
        int i2 = videoSize.c;
        if (i > 0 && i2 > 0) {
            AdsDTO adsDTO = this.e;
            if (adsDTO != null) {
                adsDTO.setMaterialWith(i);
            }
            AdsDTO adsDTO2 = this.e;
            if (adsDTO2 != null) {
                adsDTO2.setMaterialHeight(i2);
            }
        }
        xnd xndVar = this.d;
        if (xndVar != null) {
            xndVar.onVideoSizeChanged(i, i2);
        }
    }

    @Override
    public void pause() {
        ExoPlayer exoPlayer = this.c;
        if (exoPlayer != null) {
            exoPlayer.pause();
        }
    }

    @Override
    public void play() {
        ExoPlayer exoPlayer = this.c;
        if (exoPlayer != null) {
            exoPlayer.play();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void release() {
        ikd.b().d(this.a, "release player=" + System.identityHashCode(this.c));
        try {
            ExoPlayer exoPlayer = this.c;
            if (exoPlayer != null) {
                if (exoPlayer.isPlaying()) {
                    exoPlayer.pause();
                }
                exoPlayer.stop();
                exoPlayer.release();
                exoPlayer.clearVideoSurface();
            }
            this.c = null;
            this.d = null;
        } catch (Throwable th) {
            try {
                ikd.b().w(this.a, "release error (ignored): " + th.getMessage());
            } finally {
                this.c = null;
                this.d = null;
            }
        }
    }

    @Override
    public void seekTo(long j) {
        ExoPlayer exoPlayer = this.c;
        if (exoPlayer != null) {
            exoPlayer.seekTo(j);
        }
    }

    @Override
    public void setPlayWhenReady(boolean z) {
        this.i = z;
        ExoPlayer exoPlayer = this.c;
        if (exoPlayer != null) {
            exoPlayer.setPlayWhenReady(z);
        }
    }

    @Override
    public void b(AdsDTO adsDTO, String str, boolean z, boolean z2) {
        y45.j(str, "path");
        ikd.b().d(this.a, "setMediaData path=" + str + " enableDiskCache=" + z2);
        this.e = adsDTO;
        this.f = str;
        this.g = z;
        this.h = z2;
        this.l = false;
        this.m = false;
        if (adsDTO != null && adsDTO.getMaterialWith() > 0 && adsDTO.getMaterialHeight() > 0) {
            this.m = true;
        }
        o();
    }

    @Override
    public void d() {
        ExoPlayer exoPlayer = this.c;
        if (exoPlayer == null) {
            return;
        }
        int playbackState = exoPlayer.getPlaybackState();
        if (playbackState == 1 || playbackState == 4 || !exoPlayer.getPlayWhenReady()) {
            xnd xndVar = this.d;
            if (xndVar != null) {
                xndVar.c(true);
            }
            e();
            return;
        }
        xnd xndVar2 = this.d;
        if (xndVar2 != null) {
            xndVar2.c(false);
        }
        b();
    }

    @Override
    public void a() {
        ExoPlayer exoPlayer = this.c;
        if (exoPlayer == null) {
            return;
        }
        if (exoPlayer.getVolume() == 0.0f) {
            exoPlayer.setVolume(1.0f);
            this.g = false;
            xnd xndVar = this.d;
            if (xndVar != null) {
                xndVar.onVolumeChanged(1.0f);
                return;
            }
            return;
        }
        exoPlayer.setVolume(0.0f);
        this.g = true;
        xnd xndVar2 = this.d;
        if (xndVar2 != null) {
            xndVar2.onVolumeChanged(0.0f);
        }
    }

    @Override
    public void c(xnd xndVar) {
        this.d = xndVar;
    }

    public final p e(PlaybackException playbackException) {
        Pair pair;
        int i = playbackException.errorCode;
        if (i >= 2000 && i <= 2008) {
            pair = new Pair(p.b.IO, Integer.valueOf(TaErrorCode.CODE_SHOW_VIDEO_PLAYER_IO_ERROR));
        } else if (i >= 4001 && i <= 4003) {
            pair = new Pair(p.b.DECODING, Integer.valueOf(TaErrorCode.CODE_SHOW_VIDEO_PLAYER_DECODE_ERROR));
        } else if (i >= 6001 && i <= 6006) {
            pair = new Pair(p.b.DRM, Integer.valueOf(TaErrorCode.CODE_SHOW_VIDEO_PLAYER_DRM_ERROR));
        } else {
            pair = new Pair(p.b.UNKNOWN, Integer.valueOf(TaErrorCode.CODE_SHOW_VIDEO_PLAYER_UNKNOWN_ERROR));
        }
        p.b bVar = (p.b) pair.component1();
        int iIntValue = ((Number) pair.component2()).intValue();
        String message = playbackException.getMessage();
        if (message == null) {
            message = "unknown playback error";
        }
        return new p(iIntValue, message, bVar, playbackException);
    }

    @Override
    public void a(boolean z) {
        this.k = z;
    }
}
