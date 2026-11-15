package com.transsion.audio.player;

import android.content.Context;
import android.view.SurfaceView;
import android.view.TextureView;
import com.aliyun.player.AliPlayer;
import com.aliyun.player.AliPlayerFactory;
import com.aliyun.player.IPlayer;
import com.aliyun.player.bean.ErrorCode;
import com.aliyun.player.bean.ErrorInfo;
import com.aliyun.player.bean.InfoBean;
import com.aliyun.player.bean.InfoCode;
import com.aliyun.player.nativeclass.CacheConfig;
import com.aliyun.player.nativeclass.TrackInfo;
import com.aliyun.player.source.UrlSource;
import com.blankj.utilcode.util.Utils;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.p007enum.ScaleMode;
import java.io.File;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class l implements com.transsion.player.orplayer.f {

    private final String f41796a = "OrAudioPlayer";

    private AliPlayer f41797b;

    private com.transsion.player.orplayer.c f41798c;

    private com.transsion.player.orplayer.e f41799d;

    private boolean f41800e;

    private boolean f41801f;

    public static final class a implements com.transsion.player.orplayer.d {
        a() {
        }

        @Override
        public boolean isMute() {
            AliPlayer aliPlayer = l.this.f41797b;
            if (aliPlayer != null) {
                return aliPlayer.isMute();
            }
            return false;
        }

        @Override
        public void pause() {
            AliPlayer aliPlayer = l.this.f41797b;
            if (aliPlayer != null) {
                aliPlayer.pause();
            }
        }

        @Override
        public void play() {
            AliPlayer aliPlayer = l.this.f41797b;
            if (aliPlayer != null) {
                aliPlayer.start();
            }
        }

        @Override
        public void setVolume(float f10) {
            AliPlayer aliPlayer = l.this.f41797b;
            if (aliPlayer != null) {
                aliPlayer.setVolume(f10);
            }
        }
    }

    public static final class b implements IPlayer.OnLoadingStatusListener {
        b() {
        }

        @Override
        public void onLoadingBegin() {
            wf.a.C0922a.f(wf.a.f74274a, l.this.f41796a, "onLoadingBegin--->", false, 4, null);
            com.transsion.player.orplayer.e eVar = l.this.f41799d;
            if (eVar != null) {
                com.transsion.player.orplayer.e.a.j(eVar, null, 1, null);
            }
        }

        @Override
        public void onLoadingEnd() {
            wf.a.C0922a.f(wf.a.f74274a, l.this.f41796a, "onLoadingEnd----->", false, 4, null);
            com.transsion.player.orplayer.e eVar = l.this.f41799d;
            if (eVar != null) {
                com.transsion.player.orplayer.e.a.l(eVar, null, 1, null);
            }
        }

        @Override
        public void onLoadingProgress(int i10, float f10) {
            wf.a.C0922a.f(wf.a.f74274a, l.this.f41796a, "onLoadingProgress percent:" + i10 + ",netSpeed:" + f10, false, 4, null);
            com.transsion.player.orplayer.e eVar = l.this.f41799d;
            if (eVar != null) {
                com.transsion.player.orplayer.e.a.n(eVar, i10, f10, null, 4, null);
            }
        }
    }

    public static final class c implements IPlayer.OnTrackChangedListener {
        c() {
        }

        @Override
        public void onChangedFail(TrackInfo trackInfo, ErrorInfo errorInfo) {
        }

        @Override
        public void onChangedSuccess(TrackInfo trackInfo) {
        }
    }

    public l(Context context) {
        o(context);
    }

    private final void A() {
        if (hn.b.f61411a.c()) {
            CacheConfig cacheConfig = new CacheConfig();
            cacheConfig.mEnable = true;
            cacheConfig.mMaxDurationS = 1200L;
            File externalCacheDir = Utils.a().getExternalCacheDir();
            String absolutePath = externalCacheDir != null ? externalCacheDir.getAbsolutePath() : null;
            cacheConfig.mDir = absolutePath + File.separator + "video_cache";
            cacheConfig.mMaxSizeMB = 50;
            AliPlayer aliPlayer = this.f41797b;
            if (aliPlayer != null) {
                aliPlayer.setCacheConfig(cacheConfig);
            }
        }
    }

    private final void o(Context context) {
        if (this.f41797b == null) {
            AliPlayer aliPlayerCreateAliPlayer = AliPlayerFactory.createAliPlayer(context);
            aliPlayerCreateAliPlayer.setTraceId(tg.b.f72740a.h());
            this.f41797b = aliPlayerCreateAliPlayer;
            p();
            A();
            r();
        }
    }

    private final void p() {
        this.f41798c = new com.transsion.player.orplayer.c(new a(), new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l.q(this.f41789a, ((Boolean) obj).booleanValue());
            }
        });
    }

    public static final Unit q(l lVar, boolean z10) {
        com.transsion.player.orplayer.e eVar = lVar.f41799d;
        if (eVar != null) {
            eVar.onFocusChange(z10);
        }
        return Unit.f64096a;
    }

    private final void r() {
        AliPlayer aliPlayer = this.f41797b;
        if (aliPlayer != null) {
            aliPlayer.setOnCompletionListener(new IPlayer.OnCompletionListener() {
                @Override
                public final void onCompletion() {
                    l.s();
                }
            });
        }
        AliPlayer aliPlayer2 = this.f41797b;
        if (aliPlayer2 != null) {
            aliPlayer2.setOnErrorListener(new IPlayer.OnErrorListener() {
                @Override
                public final void onError(ErrorInfo errorInfo) {
                    l.t(this.f41790a, errorInfo);
                }
            });
        }
        AliPlayer aliPlayer3 = this.f41797b;
        if (aliPlayer3 != null) {
            aliPlayer3.setOnPreparedListener(new IPlayer.OnPreparedListener() {
                @Override
                public final void onPrepared() {
                    l.u(this.f41791a);
                }
            });
        }
        AliPlayer aliPlayer4 = this.f41797b;
        if (aliPlayer4 != null) {
            aliPlayer4.setOnVideoSizeChangedListener(new IPlayer.OnVideoSizeChangedListener() {
                @Override
                public final void onVideoSizeChanged(int i10, int i11) {
                    l.v(this.f41792a, i10, i11);
                }
            });
        }
        AliPlayer aliPlayer5 = this.f41797b;
        if (aliPlayer5 != null) {
            aliPlayer5.setOnRenderingStartListener(new IPlayer.OnRenderingStartListener() {
                @Override
                public final void onRenderingStart() {
                    l.w(this.f41793a);
                }
            });
        }
        AliPlayer aliPlayer6 = this.f41797b;
        if (aliPlayer6 != null) {
            aliPlayer6.setOnInfoListener(new IPlayer.OnInfoListener() {
                @Override
                public final void onInfo(InfoBean infoBean) {
                    l.x(this.f41794a, infoBean);
                }
            });
        }
        AliPlayer aliPlayer7 = this.f41797b;
        if (aliPlayer7 != null) {
            aliPlayer7.setOnLoadingStatusListener(new b());
        }
        AliPlayer aliPlayer8 = this.f41797b;
        if (aliPlayer8 != null) {
            aliPlayer8.setOnSeekCompleteListener(new IPlayer.OnSeekCompleteListener() {
                @Override
                public final void onSeekComplete() {
                    l.y();
                }
            });
        }
        AliPlayer aliPlayer9 = this.f41797b;
        if (aliPlayer9 != null) {
            aliPlayer9.setOnTrackChangedListener(new c());
        }
        AliPlayer aliPlayer10 = this.f41797b;
        if (aliPlayer10 != null) {
            aliPlayer10.setOnStateChangedListener(new IPlayer.OnStateChangedListener() {
                @Override
                public final void onStateChanged(int i10) {
                    l.z(this.f41795a, i10);
                }
            });
        }
    }

    public static final void s() {
    }

    public static final void t(l lVar, ErrorInfo errorInfo) {
        wf.a.C0922a.f(wf.a.f74274a, lVar.f41796a, "onError code:" + errorInfo.getCode() + ",msg:" + errorInfo.getMsg(), false, 4, null);
        PlayError playError = new PlayError(Integer.valueOf(errorInfo.getCode().getValue()), errorInfo.getMsg());
        com.transsion.player.orplayer.e eVar = lVar.f41799d;
        if (eVar != null) {
            com.transsion.player.orplayer.e.a.r(eVar, playError, null, 2, null);
        }
        if (errorInfo.getCode() == ErrorCode.ERROR_DECODE_AUDIO) {
            lVar.prepare();
            lVar.play();
        }
    }

    public static final void u(l lVar) {
        com.transsion.player.orplayer.e eVar = lVar.f41799d;
        if (eVar != null) {
            com.transsion.player.orplayer.e.a.x(eVar, null, 1, null);
        }
    }

    public static final void v(l lVar, int i10, int i11) {
        com.transsion.player.orplayer.e eVar = lVar.f41799d;
        if (eVar != null) {
            eVar.onVideoSizeChanged(i10, i11);
        }
    }

    public static final void w(l lVar) {
        com.transsion.player.orplayer.e eVar = lVar.f41799d;
        if (eVar != null) {
            eVar.onRenderFirstFrame();
        }
    }

    public static final void x(l lVar, InfoBean infoBean) {
        if (infoBean.getCode() == InfoCode.CurrentPosition) {
            long extraValue = infoBean.getExtraValue();
            com.transsion.player.orplayer.e eVar = lVar.f41799d;
            if (eVar != null) {
                com.transsion.player.orplayer.e.a.z(eVar, extraValue, null, 2, null);
            }
        }
    }

    public static final void y() {
    }

    public static final void z(l lVar, int i10) {
        com.transsion.player.orplayer.e eVar;
        wf.a.C0922a.f(wf.a.f74274a, lVar.f41796a, "setOnStateChangedListener status:" + i10, false, 4, null);
        boolean z10 = i10 == 3;
        lVar.f41800e = z10;
        com.transsion.player.orplayer.e eVar2 = lVar.f41799d;
        if (eVar2 != null) {
            eVar2.onIsPlayingChanged(z10);
        }
        lVar.f41801f = i10 == 6;
        com.transsion.player.orplayer.c cVar = lVar.f41798c;
        if (cVar != null) {
            cVar.f(lVar.f41800e);
        }
        if (i10 == 3) {
            com.transsion.player.orplayer.e eVar3 = lVar.f41799d;
            if (eVar3 != null) {
                com.transsion.player.orplayer.e.a.J(eVar3, null, 1, null);
                return;
            }
            return;
        }
        if (i10 == 4 || i10 == 5) {
            com.transsion.player.orplayer.e eVar4 = lVar.f41799d;
            if (eVar4 != null) {
                com.transsion.player.orplayer.e.a.G(eVar4, null, 1, null);
                return;
            }
            return;
        }
        if (i10 == 6 && (eVar = lVar.f41799d) != null) {
            com.transsion.player.orplayer.e.a.f(eVar, null, 1, null);
        }
    }

    @Override
    public boolean addDataSource(gn.e eVar) {
        return com.transsion.player.orplayer.f.b.a(this, eVar);
    }

    @Override
    public void addPlayerListener(com.transsion.player.orplayer.e eVar) {
        com.transsion.player.orplayer.f.b.b(this, eVar);
    }

    @Override
    public void changeTrackSelection(qn.d dVar, int i10) {
        com.transsion.player.orplayer.f.b.c(this, dVar, i10);
    }

    @Override
    public void clearScreen() {
        com.transsion.player.orplayer.f.b.d(this);
    }

    @Override
    public void clearSurfaceOnly() {
        com.transsion.player.orplayer.f.b.e(this);
    }

    @Override
    public gn.e currentMediaSource() {
        return com.transsion.player.orplayer.f.b.f(this);
    }

    @Override
    public void enableHardwareDecoder(boolean z10) {
        AliPlayer aliPlayer = this.f41797b;
        if (aliPlayer != null) {
            aliPlayer.enableHardwareDecoder(z10);
        }
    }

    @Override
    public Pair getBitrate() {
        return new Pair(0, 0);
    }

    @Override
    public long getCurrentPosition() {
        return com.transsion.player.orplayer.f.b.g(this);
    }

    @Override
    public qn.c getCurrentTracks() {
        return com.transsion.player.orplayer.f.b.h(this);
    }

    @Override
    public qn.b getCurrentVideoFormat() {
        return com.transsion.player.orplayer.f.b.i(this);
    }

    @Override
    public Object getDownloadBitrate() {
        return com.transsion.player.orplayer.f.b.j(this);
    }

    @Override
    public long getDuration() {
        AliPlayer aliPlayer = this.f41797b;
        if (aliPlayer != null) {
            return aliPlayer.getDuration();
        }
        return 0L;
    }

    @Override
    public int getVideoHeight() {
        return com.transsion.player.orplayer.f.b.k(this);
    }

    @Override
    public int getVideoWidth() {
        return com.transsion.player.orplayer.f.b.l(this);
    }

    @Override
    public Float getVolume() {
        AliPlayer aliPlayer = this.f41797b;
        if (aliPlayer != null) {
            return Float.valueOf(aliPlayer.getVolume());
        }
        return null;
    }

    @Override
    public boolean isComplete() {
        return this.f41801f;
    }

    @Override
    public boolean isLoading() {
        return com.transsion.player.orplayer.f.b.m(this);
    }

    @Override
    public boolean isMute() {
        AliPlayer aliPlayer = this.f41797b;
        if (aliPlayer != null) {
            return aliPlayer.isMute();
        }
        return false;
    }

    @Override
    public boolean isPlaying() {
        return this.f41800e;
    }

    @Override
    public boolean isPrepared() {
        return com.transsion.player.orplayer.f.b.n(this);
    }

    @Override
    public void pause() {
        AliPlayer aliPlayer = this.f41797b;
        if (aliPlayer != null) {
            aliPlayer.pause();
        }
        com.transsion.player.orplayer.c cVar = this.f41798c;
        if (cVar != null) {
            cVar.g(true);
        }
        com.transsion.player.orplayer.c cVar2 = this.f41798c;
        if (cVar2 != null) {
            cVar2.b();
        }
    }

    @Override
    public void play() {
        com.transsion.player.orplayer.c cVar;
        com.transsion.player.orplayer.e eVar = this.f41799d;
        if (eVar != null) {
            eVar.initPlayer();
        }
        AliPlayer aliPlayer = this.f41797b;
        if (aliPlayer != null) {
            aliPlayer.start();
        }
        com.transsion.player.orplayer.c cVar2 = this.f41798c;
        if (cVar2 != null) {
            cVar2.g(false);
        }
        if (isMute() || (cVar = this.f41798c) == null) {
            return;
        }
        cVar.e();
    }

    @Override
    public void prepare() {
        AliPlayer aliPlayer = this.f41797b;
        if (aliPlayer != null) {
            aliPlayer.prepare();
        }
    }

    @Override
    public void release(String str) {
        com.transsion.player.orplayer.f.b.o(this, str);
    }

    @Override
    public boolean removeDataSource(gn.e eVar) {
        return com.transsion.player.orplayer.f.b.p(this, eVar);
    }

    @Override
    public void removePlayerListener(com.transsion.player.orplayer.e eVar) {
        com.transsion.player.orplayer.f.b.q(this, eVar);
    }

    @Override
    public boolean requestForce() {
        return com.transsion.player.orplayer.f.b.r(this);
    }

    @Override
    public void reset() {
        com.transsion.player.orplayer.e eVar = this.f41799d;
        if (eVar != null) {
            eVar.onPlayerReset();
        }
        AliPlayer aliPlayer = this.f41797b;
        if (aliPlayer != null) {
            aliPlayer.reset();
        }
        com.transsion.player.orplayer.c cVar = this.f41798c;
        if (cVar != null) {
            cVar.b();
        }
    }

    @Override
    public void seekTo(String str, long j10) {
        com.transsion.player.orplayer.f.b.s(this, str, j10);
    }

    @Override
    public void setAutoPlay(boolean z10) {
        AliPlayer aliPlayer = this.f41797b;
        if (aliPlayer != null) {
            aliPlayer.setAutoPlay(z10);
        }
    }

    @Override
    public void setDataSource(gn.e mediaSource) {
        Intrinsics.h(mediaSource, "mediaSource");
        UrlSource urlSource = new UrlSource();
        urlSource.setUri(mediaSource.j());
        AliPlayer aliPlayer = this.f41797b;
        if (aliPlayer != null) {
            aliPlayer.setDataSource(urlSource);
        }
    }

    @Override
    public void setLooping(boolean z10) {
        AliPlayer aliPlayer = this.f41797b;
        if (aliPlayer != null) {
            aliPlayer.setLoop(z10);
        }
    }

    @Override
    public void setMute(boolean z10) {
        com.transsion.player.orplayer.f.b.v(this, z10);
    }

    @Override
    public void setPlayerConfig(hn.d dVar) {
        com.transsion.player.orplayer.f.b.w(this, dVar);
    }

    @Override
    public void setPlayerListener(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        this.f41799d = listener;
    }

    @Override
    public void setScaleMode(ScaleMode scaleMode) {
        com.transsion.player.orplayer.f.b.x(this, scaleMode);
    }

    @Override
    public void setSpeed(float f10) {
        AliPlayer aliPlayer = this.f41797b;
        if (aliPlayer != null) {
            aliPlayer.setSpeed(f10);
        }
    }

    @Override
    public void setSurfaceView(SurfaceView surfaceView) {
    }

    @Override
    public void setTextureView(TextureView textureView) {
    }

    @Override
    public void setVipResolution(boolean z10, int i10) {
    }

    @Override
    public void setVolume(float f10) {
        AliPlayer aliPlayer = this.f41797b;
        if (aliPlayer != null) {
            aliPlayer.setVolume(f10);
        }
    }

    @Override
    public void stop() {
        com.transsion.player.orplayer.c cVar;
        AliPlayer aliPlayer = this.f41797b;
        if (aliPlayer != null) {
            aliPlayer.stop();
        }
        com.transsion.player.orplayer.c cVar2 = this.f41798c;
        if (cVar2 != null) {
            cVar2.g(true);
        }
        if (isMute() || (cVar = this.f41798c) == null) {
            return;
        }
        cVar.b();
    }

    @Override
    public void release() {
        com.transsion.player.orplayer.e eVar = this.f41799d;
        if (eVar != null) {
            com.transsion.player.orplayer.e.a.u(eVar, null, 1, null);
        }
        AliPlayer aliPlayer = this.f41797b;
        if (aliPlayer != null) {
            aliPlayer.release();
        }
        this.f41797b = null;
        com.transsion.player.orplayer.c cVar = this.f41798c;
        if (cVar != null) {
            cVar.b();
        }
        this.f41798c = null;
    }

    @Override
    public void seekTo(long j10) {
        AliPlayer aliPlayer = this.f41797b;
        if (aliPlayer != null) {
            aliPlayer.setMaxAccurateSeekDelta(150000);
        }
        AliPlayer aliPlayer2 = this.f41797b;
        if (aliPlayer2 != null) {
            aliPlayer2.seekTo(j10, IPlayer.SeekMode.Accurate);
        }
    }
}
