package in;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.a0;
import androidx.media3.common.e0;
import androidx.media3.common.g0;
import androidx.media3.common.h0;
import androidx.media3.common.i0;
import androidx.media3.common.m;
import androidx.media3.common.m0;
import androidx.media3.common.r;
import androidx.media3.common.t;
import androidx.media3.common.v;
import androidx.media3.common.x;
import androidx.media3.common.y;
import androidx.media3.common.z;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.datasource.rtmp.RtmpDataSource;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.b4;
import androidx.media3.exoplayer.dash.DashMediaSource;
import androidx.media3.exoplayer.drm.w;
import androidx.media3.exoplayer.hls.HlsMediaSource;
import androidx.media3.exoplayer.source.b0;
import androidx.media3.exoplayer.u2;
import com.transsion.player.exo.ORExoDecoderType;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.player.ui.render.RenderScaleMode;
import com.transsion.player.ui.render.SurfaceRenderView;
import com.transsion.player.ui.render.TextureRenderView;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import on.f0;

public final class e implements com.transsion.player.orplayer.f {
    public static final a C = new a(null);
    private final Runnable A;
    private ScaleMode B;

    private final Context f62198a;

    private final j f62199b;

    private boolean f62200c;

    private boolean f62201d;

    private SurfaceRenderView f62202e;

    private TextureRenderView f62203f;

    private com.transsion.player.orplayer.c f62204g;

    private gn.e f62205h;

    private Float f62206i;

    private boolean f62207j;

    private boolean f62208k;

    private boolean f62209l;

    private float f62210m;

    private int f62211n;

    private int f62212o;

    private boolean f62213p;

    private ExoPlayer f62214q;

    private Boolean f62215r;

    private int f62216s;

    private String f62217t;

    private ORExoDecoderType f62218u;

    private final a0.d f62219v;

    private b4 f62220w;

    private CopyOnWriteArrayList f62221x;

    private u2 f62222y;

    private final Handler f62223z;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public class b {

        public static final int[] f62224a;

        public static final int[] f62225b;

        static {
            int[] iArr = new int[PlayMimeType.values().length];
            try {
                iArr[PlayMimeType.DASH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PlayMimeType.HLS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f62224a = iArr;
            int[] iArr2 = new int[ScaleMode.values().length];
            try {
                iArr2[ScaleMode.SCALE_TO_FILL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[ScaleMode.SCALE_ASPECT_FIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[ScaleMode.SCALE_ASPECT_FILL.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            f62225b = iArr2;
        }
    }

    public static final class c extends androidx.media3.exoplayer.util.a {
        c() {
            super("ORExoPlayer");
        }

        @Override
        public void Z(x1.c.a eventTime, i0 tracks) {
            Intrinsics.h(eventTime, "eventTime");
            Intrinsics.h(tracks, "tracks");
            super.Z(eventTime, tracks);
            e.this.N(eventTime, tracks);
        }

        @Override
        public void j0(x1.c.a eventTime, String decoderName, long j10, long j11) {
            Intrinsics.h(eventTime, "eventTime");
            Intrinsics.h(decoderName, "decoderName");
            super.j0(eventTime, decoderName, j10, j11);
            sn.e.f72355a.h("ORExoPlayer", "onExoVideoDecoderInitialize, decoderName:" + decoderName, true);
        }

        @Override
        public void x(x1.c.a eventTime, String decoderName, long j10, long j11) {
            Intrinsics.h(eventTime, "eventTime");
            Intrinsics.h(decoderName, "decoderName");
            super.x(eventTime, decoderName, j10, j11);
            sn.e.f72355a.h("ORExoPlayer", "onExoAudioDecoderInitialize, decoderName:" + decoderName, true);
        }
    }

    public static final class d implements a0.d {

        private int f62227a = 1;

        d() {
        }

        @Override
        public void onAudioSessionIdChanged(int i10) {
        }

        @Override
        public void onAvailableCommandsChanged(a0.b availableCommands) {
            Intrinsics.h(availableCommands, "availableCommands");
        }

        @Override
        public void onCues(List cues) {
            Intrinsics.h(cues, "cues");
        }

        @Override
        public void onDeviceInfoChanged(m deviceInfo) {
            Intrinsics.h(deviceInfo, "deviceInfo");
        }

        @Override
        public void onDeviceVolumeChanged(int i10, boolean z10) {
        }

        @Override
        public void onEvents(a0 player, a0.c events) {
            Intrinsics.h(player, "player");
            Intrinsics.h(events, "events");
        }

        @Override
        public void onIsLoadingChanged(boolean z10) {
        }

        @Override
        public void onIsPlayingChanged(boolean z10) {
            com.transsion.player.orplayer.c cVar = e.this.f62204g;
            if (cVar != null) {
                cVar.f(z10);
            }
            for (com.transsion.player.orplayer.e eVar : e.this.f62221x) {
                if (eVar != null) {
                    eVar.onIsPlayingChanged(z10);
                }
            }
            if (z10) {
                CopyOnWriteArrayList<com.transsion.player.orplayer.e> copyOnWriteArrayList = e.this.f62221x;
                e eVar2 = e.this;
                for (com.transsion.player.orplayer.e eVar3 : copyOnWriteArrayList) {
                    if (eVar3 != null) {
                        eVar3.onVideoStart(eVar2.f62205h);
                    }
                }
                e.this.f62223z.post(e.this.A);
            } else {
                ExoPlayer exoPlayer = e.this.f62214q;
                if (exoPlayer == null || !exoPlayer.getPlayWhenReady()) {
                    CopyOnWriteArrayList<com.transsion.player.orplayer.e> copyOnWriteArrayList2 = e.this.f62221x;
                    e eVar4 = e.this;
                    for (com.transsion.player.orplayer.e eVar5 : copyOnWriteArrayList2) {
                        if (eVar5 != null) {
                            eVar5.onVideoPause(eVar4.f62205h);
                        }
                    }
                }
                e.this.f62223z.removeCallbacks(e.this.A);
                ExoPlayer exoPlayer2 = e.this.f62214q;
                long duration = exoPlayer2 != null ? exoPlayer2.getDuration() : 0L;
                ExoPlayer exoPlayer3 = e.this.f62214q;
                if (Math.abs(duration - (exoPlayer3 != null ? exoPlayer3.getCurrentPosition() : 0L)) < 2000) {
                    Log.e("ORExoPlayer", "onIsPlayingChanged onCompletion");
                    if (!e.this.f62213p) {
                        e.this.f62213p = true;
                        CopyOnWriteArrayList<com.transsion.player.orplayer.e> copyOnWriteArrayList3 = e.this.f62221x;
                        e eVar6 = e.this;
                        for (com.transsion.player.orplayer.e eVar7 : copyOnWriteArrayList3) {
                            if (eVar7 != null) {
                                eVar7.onCompletion(eVar6.f62205h);
                            }
                        }
                    }
                }
            }
            Log.e("ORExoPlayer", "onIsPlayingChanged:" + z10);
        }

        @Override
        public void onLoadingChanged(boolean z10) {
        }

        @Override
        public void onMediaItemTransition(t tVar, int i10) {
            t.h hVar;
            Log.e("ORExoPlayer", "onMediaItemTransition  reason:" + i10 + " ");
            if (i10 == 0 || i10 == 1) {
                for (com.transsion.player.orplayer.e eVar : e.this.f62221x) {
                    if (eVar != null) {
                        eVar.onMediaItemTransition((tVar == null || (hVar = tVar.f9899b) == null) ? null : hVar.f9995e);
                    }
                }
            }
        }

        @Override
        public void onMediaMetadataChanged(v mediaMetadata) {
            Intrinsics.h(mediaMetadata, "mediaMetadata");
        }

        @Override
        public void onMetadata(x metadata) {
            Intrinsics.h(metadata, "metadata");
        }

        @Override
        public void onPlayWhenReadyChanged(boolean z10, int i10) {
        }

        @Override
        public void onPlaybackParametersChanged(z playbackParameters) {
            Intrinsics.h(playbackParameters, "playbackParameters");
        }

        @Override
        public void onPlaybackStateChanged(int i10) {
            Log.e("ORExoPlayer", "onPlaybackStateChanged  playbackState:" + i10 + " ");
            if (i10 == 2) {
                Log.e("ORExoPlayer", "onPlaybackStateChanged STATE_BUFFERING");
                CopyOnWriteArrayList<com.transsion.player.orplayer.e> copyOnWriteArrayList = e.this.f62221x;
                e eVar = e.this;
                for (com.transsion.player.orplayer.e eVar2 : copyOnWriteArrayList) {
                    if (eVar2 != null) {
                        eVar2.onLoadingBegin(eVar.f62205h);
                    }
                }
            } else if (i10 == 3) {
                if (!e.this.f62200c) {
                    e.this.f62200c = true;
                    e.i(e.this);
                    CopyOnWriteArrayList<com.transsion.player.orplayer.e> copyOnWriteArrayList2 = e.this.f62221x;
                    e eVar3 = e.this;
                    for (com.transsion.player.orplayer.e eVar4 : copyOnWriteArrayList2) {
                        if (eVar4 != null) {
                            eVar4.onPrepare(eVar3.f62205h);
                        }
                    }
                    e.this.O();
                }
                if (this.f62227a == 2) {
                    for (com.transsion.player.orplayer.e eVar5 : e.this.f62221x) {
                        if (eVar5 != null) {
                            com.transsion.player.orplayer.e.a.l(eVar5, null, 1, null);
                        }
                    }
                }
            } else if (i10 == 4 && !e.this.f62213p) {
                e.this.f62213p = true;
                CopyOnWriteArrayList<com.transsion.player.orplayer.e> copyOnWriteArrayList3 = e.this.f62221x;
                e eVar6 = e.this;
                for (com.transsion.player.orplayer.e eVar7 : copyOnWriteArrayList3) {
                    if (eVar7 != null) {
                        eVar7.onCompletion(eVar6.f62205h);
                    }
                }
            }
            this.f62227a = i10;
        }

        @Override
        public void onPlaybackSuppressionReasonChanged(int i10) {
        }

        @Override
        public void onPlayerError(PlaybackException error) {
            gn.e eVar;
            Throwable cause;
            Intrinsics.h(error, "error");
            e.this.f62200c = false;
            if ((error instanceof ExoPlaybackException) && (cause = error.getCause()) != null) {
                e eVar2 = e.this;
                if ((cause instanceof HttpDataSource.InvalidResponseCodeException) && ((HttpDataSource.InvalidResponseCodeException) cause).responseCode == 404) {
                    long duration = eVar2.getDuration();
                    long currentPosition = eVar2.getCurrentPosition();
                    if (currentPosition > 0 && duration > 0 && (currentPosition * 1.0f) / duration > 0.99f) {
                        if (eVar2.f62213p) {
                            return;
                        }
                        eVar2.f62213p = true;
                        for (com.transsion.player.orplayer.e eVar3 : eVar2.f62221x) {
                            if (eVar3 != null) {
                                eVar3.onCompletion(eVar2.f62205h);
                            }
                        }
                        return;
                    }
                }
            }
            sn.e eVar4 = sn.e.f72355a;
            eVar4.c("ORExoPlayer", "exo onPlayerError，MimeType:" + e.this.f62217t + ", code:" + error.errorCode + ",msg:" + error.getMessage() + ", cause:" + error.getCause(), true);
            if (e.this.f62218u != ORExoDecoderType.HARDWARE || (eVar = e.this.f62205h) == null || eVar.l() || (error.getCause() instanceof HttpDataSource.InvalidResponseCodeException)) {
                PlayError playError = new PlayError(Integer.valueOf(error.errorCode), error.getMessage() + "|" + error.getCause());
                playError.setExoCause(error.getCause());
                e.i(e.this);
                for (com.transsion.player.orplayer.e eVar5 : e.this.f62221x) {
                    if (eVar5 != null) {
                        com.transsion.player.orplayer.e.a.r(eVar5, playError, null, 2, null);
                    }
                }
                return;
            }
            eVar4.c("ORExoPlayer", "exo 硬解失败，切换到软解，MimeType:" + e.this.f62217t + ", code:" + error.errorCode + ",msg:" + error.getMessage(), true);
            gn.e eVarE = e.this.E();
            if (eVarE != null) {
                e eVar6 = e.this;
                eVar6.setDataSource(eVarE);
                eVar6.prepare();
            }
        }

        @Override
        public void onPlayerErrorChanged(PlaybackException playbackException) {
        }

        @Override
        public void onPlayerStateChanged(boolean z10, int i10) {
        }

        @Override
        public void onPositionDiscontinuity(int i10) {
        }

        @Override
        public void onRenderedFirstFrame() {
            if (e.this.f62201d) {
                return;
            }
            e.this.f62201d = true;
            Log.e("ORExoPlayer", "onRenderedFirstFrame:");
            for (com.transsion.player.orplayer.e eVar : e.this.f62221x) {
                if (eVar != null) {
                    eVar.onRenderFirstFrame();
                }
            }
        }

        @Override
        public void onRepeatModeChanged(int i10) {
        }

        @Override
        public void onShuffleModeEnabledChanged(boolean z10) {
        }

        @Override
        public void onSkipSilenceEnabledChanged(boolean z10) {
        }

        @Override
        public void onSurfaceSizeChanged(int i10, int i11) {
        }

        @Override
        public void onTimelineChanged(e0 timeline, int i10) {
            Intrinsics.h(timeline, "timeline");
        }

        @Override
        public void onTrackSelectionParametersChanged(h0 parameters) {
            Intrinsics.h(parameters, "parameters");
        }

        @Override
        public void onTracksChanged(i0 tracks) {
            int iC;
            Intrinsics.h(tracks, "tracks");
            CopyOnWriteArrayList<com.transsion.player.orplayer.e> copyOnWriteArrayList = e.this.f62221x;
            e eVar = e.this;
            for (com.transsion.player.orplayer.e eVar2 : copyOnWriteArrayList) {
                if (eVar2 != null) {
                    eVar2.onTracksChange(qn.a.c(tracks));
                }
                qn.c cVarC = qn.a.c(tracks);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("changeTrackSelection 所有的分辨率为：");
                sb2.append(cVarC);
                qn.d dVar = null;
                int i10 = -1;
                boolean z10 = false;
                int i11 = 0;
                for (qn.d dVar2 : cVarC.a()) {
                    if (dVar2.e() == 2) {
                        qn.b[] bVarArrB = dVar2.b();
                        int length = bVarArrB.length;
                        int i12 = 0;
                        int i13 = 0;
                        while (i12 < length) {
                            qn.b bVar = bVarArrB[i12];
                            int i14 = i13 + 1;
                            if (!Intrinsics.c(eVar.f62215r, Boolean.FALSE)) {
                                if (bVar.c() >= eVar.f62216s && bVar.c() > i11) {
                                    iC = bVar.c();
                                    i11 = iC;
                                    i10 = i13;
                                }
                                z10 = true;
                            } else if (bVar.c() < eVar.f62216s) {
                                if (bVar.c() > i11) {
                                    iC = bVar.c();
                                    i11 = iC;
                                    i10 = i13;
                                }
                                z10 = true;
                            }
                            i12++;
                            i13 = i14;
                        }
                        dVar = dVar2;
                    }
                }
                if (Intrinsics.c(eVar.f62215r, Boolean.FALSE)) {
                    if (z10) {
                        if (dVar != null && eVar2 != null) {
                            eVar2.canNonSubscriberPlay(true, i11, i10, dVar);
                        }
                    } else if (dVar != null && eVar2 != null) {
                        eVar2.canNonSubscriberPlay(false, 0, i10, dVar);
                    }
                } else if (dVar != null && eVar2 != null) {
                    eVar2.canNonSubscriberPlay(true, i11, i10, dVar);
                }
            }
        }

        @Override
        public void onVideoSizeChanged(m0 videoSize) {
            Intrinsics.h(videoSize, "videoSize");
            SurfaceRenderView surfaceRenderView = e.this.f62202e;
            if (surfaceRenderView != null) {
                surfaceRenderView.setVideoRotation(videoSize.f9805c);
            }
            TextureRenderView textureRenderView = e.this.f62203f;
            if (textureRenderView != null) {
                textureRenderView.setVideoRotation(videoSize.f9805c);
            }
            SurfaceRenderView surfaceRenderView2 = e.this.f62202e;
            if (surfaceRenderView2 != null) {
                surfaceRenderView2.setVideoSize(videoSize.f9803a, videoSize.f9804b);
            }
            TextureRenderView textureRenderView2 = e.this.f62203f;
            if (textureRenderView2 != null) {
                textureRenderView2.setVideoSize(videoSize.f9803a, videoSize.f9804b);
            }
            for (com.transsion.player.orplayer.e eVar : e.this.f62221x) {
                if (eVar != null) {
                    eVar.onVideoSizeChanged(videoSize.f9803a, videoSize.f9804b);
                }
            }
            Log.e("ORExoPlayer", "onVideoSizeChanged width:" + videoSize.f9803a + "  height:" + videoSize.f9804b);
        }

        @Override
        public void onVolumeChanged(float f10) {
        }

        @Override
        public void onCues(u1.b cueGroup) {
            Intrinsics.h(cueGroup, "cueGroup");
        }

        @Override
        public void onPositionDiscontinuity(a0.e oldPosition, a0.e newPosition, int i10) {
            Intrinsics.h(oldPosition, "oldPosition");
            Intrinsics.h(newPosition, "newPosition");
            int i11 = newPosition.f9495c;
            long j10 = newPosition.f9499g;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onPositionDiscontinuity: currentWindowIndex=");
            sb2.append(i11);
            sb2.append(", currentPositionMs=");
            sb2.append(j10);
            sb2.append(", reason=");
            sb2.append(i10);
            if (i10 == 1 || i10 == 2) {
                for (com.transsion.player.orplayer.e eVar : e.this.f62221x) {
                    if (eVar != null) {
                        eVar.setOnSeekCompleteListener();
                    }
                }
            }
            CopyOnWriteArrayList<com.transsion.player.orplayer.e> copyOnWriteArrayList = e.this.f62221x;
            e eVar2 = e.this;
            for (com.transsion.player.orplayer.e eVar3 : copyOnWriteArrayList) {
                if (eVar3 != null) {
                    eVar3.onProgress(j10, eVar2.f62205h);
                }
            }
        }
    }

    public static final class C0763e implements com.transsion.player.orplayer.d {
        C0763e() {
        }

        @Override
        public boolean isMute() {
            ExoPlayer exoPlayer = e.this.f62214q;
            if (exoPlayer != null) {
                return exoPlayer.W();
            }
            return false;
        }

        @Override
        public void pause() {
            ExoPlayer exoPlayer = e.this.f62214q;
            if (exoPlayer != null) {
                exoPlayer.pause();
            }
        }

        @Override
        public void play() {
            ExoPlayer exoPlayer = e.this.f62214q;
            if (exoPlayer != null) {
                exoPlayer.play();
            }
        }

        @Override
        public void setVolume(float f10) {
            ExoPlayer exoPlayer = e.this.f62214q;
            if (exoPlayer != null) {
                exoPlayer.setVolume(f10);
            }
        }
    }

    public e(Context context, j config, boolean z10) {
        Intrinsics.h(context, "context");
        Intrinsics.h(config, "config");
        this.f62198a = context;
        this.f62199b = config;
        this.f62210m = 1.0f;
        this.f62215r = Boolean.FALSE;
        this.f62216s = 720;
        ORExoDecoderType oRExoDecoderType = ORExoDecoderType.HARDWARE;
        this.f62218u = oRExoDecoderType;
        this.f62219v = new d();
        if (z10) {
            G();
        }
        F(oRExoDecoderType);
        this.f62221x = new CopyOnWriteArrayList();
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        this.f62223z = new Handler(looperMyLooper);
        this.A = new Runnable() {
            @Override
            public final void run() {
                e.P(this.f62196a);
            }
        };
        this.B = ScaleMode.SCALE_TO_FILL;
    }

    private final void B(gn.e eVar) {
        androidx.media3.datasource.a.InterfaceC0085a factory = new RtmpDataSource.Factory();
        sn.e.f72355a.a("ORExoPlayer", "addRtmpDataSource ", true);
        b0 b0VarH = new b0.b(factory).d(t.b(eVar.j()));
        Intrinsics.g(b0VarH, "createMediaSource(...)");
        ExoPlayer exoPlayer = this.f62214q;
        if (exoPlayer != null) {
            exoPlayer.U(b0VarH);
        }
    }

    public static final androidx.media3.exoplayer.drm.t D(t tVar) {
        return androidx.media3.exoplayer.drm.t.f11300a;
    }

    public final gn.e E() {
        gn.e eVar = this.f62205h;
        String str = this.f62217t;
        J();
        ORExoDecoderType oRExoDecoderType = Intrinsics.c(str, "video/av01") ? ORExoDecoderType.AV1 : ORExoDecoderType.FFMPEG;
        this.f62218u = oRExoDecoderType;
        sn.e.f72355a.a("ORExoPlayer", "重新创建播放器切换编码, DecoderType:" + oRExoDecoderType + ",MimeTyp:" + str, true);
        F(this.f62218u);
        I();
        return eVar;
    }

    private final void F(ORExoDecoderType oRExoDecoderType) {
        sn.e.f72355a.a("ORExoPlayer", "createPlayer, DecoderType:" + oRExoDecoderType, true);
        this.f62222y = new androidx.media3.exoplayer.m.b().b(5000, 20000, 500, 1000).d(-1).c(true).a();
        this.f62220w = in.a.b(this.f62198a, oRExoDecoderType);
        ExoPlayer.b bVarQ = new ExoPlayer.b(this.f62198a).q(new androidx.media3.exoplayer.source.i(this.f62198a).q(in.a.d(this.f62198a)));
        b4 b4Var = this.f62220w;
        Intrinsics.e(b4Var);
        ExoPlayer.b bVarR = bVarQ.r(b4Var);
        u2 u2Var = this.f62222y;
        Intrinsics.e(u2Var);
        ExoPlayer exoPlayerH = bVarR.p(u2Var).h();
        exoPlayerH.setPlayWhenReady(false);
        exoPlayerH.M(this.f62219v);
        exoPlayerH.D(new c());
        this.f62214q = exoPlayerH;
    }

    private final void G() {
        this.f62204g = new com.transsion.player.orplayer.c(new C0763e(), new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return e.H(this.f62197a, ((Boolean) obj).booleanValue());
            }
        });
    }

    public static final Unit H(e eVar, boolean z10) {
        Iterator it = eVar.f62221x.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onFocusChange(z10);
        }
        return Unit.f64096a;
    }

    private final void I() {
        setMute(this.f62209l);
        Float f10 = this.f62206i;
        if (f10 != null) {
            setVolume(f10.floatValue());
        }
        setLooping(this.f62208k);
        setAutoPlay(this.f62207j);
        setSpeed(this.f62210m);
        SurfaceRenderView surfaceRenderView = this.f62202e;
        if (surfaceRenderView != null) {
            setSurfaceView(surfaceRenderView);
        }
        TextureRenderView textureRenderView = this.f62203f;
        if (textureRenderView != null) {
            setTextureView(textureRenderView);
        }
        setScaleMode(this.B);
    }

    private final void J() {
        this.f62200c = false;
        this.f62213p = false;
        this.f62201d = false;
        Log.e("ORExoPlayer", "innerRelease");
        if (f0.f67871a.a(this)) {
            ExoPlayer exoPlayer = this.f62214q;
            if (exoPlayer != null) {
                exoPlayer.release();
                return;
            }
            return;
        }
        ExoPlayer exoPlayer2 = this.f62214q;
        if (exoPlayer2 != null) {
            exoPlayer2.stop();
        }
        ExoPlayer exoPlayer3 = this.f62214q;
        if (exoPlayer3 != null) {
            exoPlayer3.C();
        }
        ExoPlayer exoPlayer4 = this.f62214q;
        if (exoPlayer4 != null) {
            exoPlayer4.clearVideoSurface();
        }
    }

    private final boolean K(gn.e eVar) {
        PlayMimeType playMimeTypeI = eVar.i();
        PlayMimeType playMimeType = PlayMimeType.RTMP;
        if (playMimeTypeI == playMimeType) {
            return true;
        }
        String lowerCase = eVar.j().toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        if (!StringsKt.W(lowerCase, "rtmp://", false, 2, null)) {
            return false;
        }
        eVar.q(playMimeType);
        return true;
    }

    private final boolean L(gn.e eVar) {
        PlayMimeType playMimeTypeI = eVar.i();
        PlayMimeType playMimeType = PlayMimeType.DASH;
        if (playMimeTypeI != playMimeType) {
            PlayMimeType playMimeTypeI2 = eVar.i();
            PlayMimeType playMimeType2 = PlayMimeType.HLS;
            if (playMimeTypeI2 != playMimeType2) {
                if (StringsKt.c0(eVar.j(), ".mpd", false, 2, null)) {
                    eVar.q(playMimeType);
                    return true;
                }
                if (!StringsKt.c0(eVar.j(), ".m3u8", false, 2, null)) {
                    return false;
                }
                eVar.q(playMimeType2);
                return true;
            }
        }
        return true;
    }

    private final void M() {
        this.f62223z.removeCallbacks(this.A);
        this.f62223z.postDelayed(this.A, 500L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void N(x1.c.a aVar, i0 i0Var) {
        int size = i0Var.a().size();
        for (int i10 = 0; i10 < size; i10++) {
            E e10 = i0Var.a().get(i10);
            Intrinsics.g(e10, "get(...)");
            i0.a aVar2 = (i0.a) e10;
            int i11 = aVar2.f9779a;
            for (int i12 = 0; i12 < i11; i12++) {
                r rVarB = aVar2.b(i12);
                Intrinsics.g(rVarB, "getTrackFormat(...)");
                sn.e eVar = sn.e.f72355a;
                sn.e.i(eVar, "ORExoPlayer", "onGetTracksInfo  MimeType:" + rVarB.f9849o + "， bitrate：" + rVarB.f9844j, false, 4, null);
                String str = rVarB.f9849o;
                if (str != null && StringsKt.c0(str, "video", false, 2, null)) {
                    String str2 = rVarB.f9849o;
                    this.f62217t = str2;
                    sn.e.f(eVar, "ORExoPlayer", "--------onGetTracksInfo curVideoMimeType:" + str2, false, 4, null);
                }
            }
        }
        if (this.f62218u == ORExoDecoderType.AV1 || !Intrinsics.c(this.f62217t, "video/av01") || Build.VERSION.SDK_INT > 29) {
            return;
        }
        sn.e.f72355a.c("ORExoPlayer", "exo av1，强制切换到软解， MimeType:" + this.f62217t, true);
        gn.e eVarE = E();
        if (eVarE != null) {
            setDataSource(eVarE);
            prepare();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void O() {
        i0 currentTracks;
        ExoPlayer exoPlayer;
        r rVarR;
        r rVarJ;
        ExoPlayer exoPlayer2 = this.f62214q;
        if (exoPlayer2 == null || (currentTracks = exoPlayer2.getCurrentTracks()) == null) {
            return;
        }
        int size = currentTracks.a().size();
        for (int i10 = 0; i10 < size; i10++) {
            E e10 = currentTracks.a().get(i10);
            Intrinsics.g(e10, "get(...)");
            i0.a aVar = (i0.a) e10;
            int i11 = aVar.f9779a;
            for (int i12 = 0; i12 < i11; i12++) {
                r rVarB = aVar.b(i12);
                Intrinsics.g(rVarB, "getTrackFormat(...)");
                if (y.t(rVarB.f9849o)) {
                    ExoPlayer exoPlayer3 = this.f62214q;
                    if (exoPlayer3 != null && (rVarJ = exoPlayer3.J()) != null) {
                        int i13 = rVarJ.f9844j;
                        int i14 = rVarB.f9844j;
                        if (i13 == i14) {
                            this.f62211n = i14;
                            sn.e.b(sn.e.f72355a, "ORExoPlayer", "--onPrepare2GetBitrate  MimeType:" + rVarB.f9849o + "，videoBitrate：" + i14, false, 4, null);
                            Iterator it = this.f62221x.iterator();
                            while (it.hasNext()) {
                                ((com.transsion.player.orplayer.e) it.next()).onTracksVideoBitrateChange(this.f62211n);
                            }
                        }
                    }
                } else if (y.o(rVarB.f9849o) && (exoPlayer = this.f62214q) != null && (rVarR = exoPlayer.R()) != null) {
                    int i15 = rVarR.f9844j;
                    int i16 = rVarB.f9844j;
                    if (i15 == i16) {
                        this.f62212o = i16;
                        sn.e.b(sn.e.f72355a, "ORExoPlayer", "--onPrepare2GetBitrate  MimeType:" + rVarB.f9849o + "，audioBitrate：" + i16, false, 4, null);
                        Iterator it2 = this.f62221x.iterator();
                        while (it2.hasNext()) {
                            ((com.transsion.player.orplayer.e) it2.next()).onTracksAudioBitrateChange(this.f62212o);
                        }
                    }
                }
            }
        }
    }

    public static final void P(e eVar) {
        ExoPlayer exoPlayer = eVar.f62214q;
        if (exoPlayer == null || exoPlayer.isPlaying()) {
            ExoPlayer exoPlayer2 = eVar.f62214q;
            long currentPosition = exoPlayer2 != null ? exoPlayer2.getCurrentPosition() : 0L;
            Iterator it = eVar.f62221x.iterator();
            while (it.hasNext()) {
                ((com.transsion.player.orplayer.e) it.next()).onProgress(currentPosition, eVar.f62205h);
            }
            eVar.M();
        }
    }

    public static final on.z i(e eVar) {
        eVar.getClass();
        return null;
    }

    public final boolean C(gn.e mediaSource) {
        androidx.media3.datasource.a.InterfaceC0085a aVar;
        androidx.media3.exoplayer.source.r.a factory;
        androidx.media3.datasource.c.b bVar;
        Intrinsics.h(mediaSource, "mediaSource");
        String strG = mediaSource.g();
        if (strG == null) {
            strG = mediaSource.j();
        }
        t tVarA = new t.c().j(strG).d(String.valueOf(mediaSource.k())).b(mediaSource.f()).h(mediaSource.e()).a();
        Intrinsics.g(tVarA, "build(...)");
        if (StringsKt.W(strG, "http", false, 2, null)) {
            bVar = new androidx.media3.datasource.c.b();
            Map mapD = mediaSource.d();
            if (mapD != null) {
                aVar = bVar;
                bVar.b(mapD);
                aVar = bVar;
            }
        } else {
            aVar = new androidx.media3.datasource.b.a(this.f62198a);
        }
        aVar = bVar;
        PlayMimeType playMimeTypeI = mediaSource.i();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("dash addStreamDataSource, mimeType:");
        sb2.append(playMimeTypeI);
        int i10 = b.f62224a[mediaSource.i().ordinal()];
        if (i10 == 1) {
            factory = new DashMediaSource.Factory(aVar);
        } else {
            if (i10 != 2) {
                return false;
            }
            factory = new HlsMediaSource.Factory(aVar);
        }
        androidx.media3.exoplayer.source.r rVarD = factory.e(new w() {
            @Override
            public final androidx.media3.exoplayer.drm.t a(t tVar) {
                return e.D(tVar);
            }
        }).d(tVarA);
        ExoPlayer exoPlayer = this.f62214q;
        if (exoPlayer != null) {
            exoPlayer.U(rVarD);
        }
        this.f62205h = mediaSource;
        return true;
    }

    @Override
    public boolean addDataSource(gn.e eVar) {
        return com.transsion.player.orplayer.f.b.a(this, eVar);
    }

    @Override
    public void addPlayerListener(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        com.transsion.player.orplayer.f.b.b(this, listener);
        if (this.f62221x.contains(listener)) {
            return;
        }
        this.f62221x.add(listener);
    }

    @Override
    public void changeTrackSelection(qn.d mediaTrackGroup, int i10) {
        i0 currentTracks;
        androidx.media3.common.f0 f0VarA;
        Intrinsics.h(mediaTrackGroup, "mediaTrackGroup");
        int length = mediaTrackGroup.b().length;
        if (i10 < 0 || i10 >= length) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            this.f62211n = mediaTrackGroup.b()[i10].a();
            Iterator it = this.f62221x.iterator();
            while (it.hasNext()) {
                ((com.transsion.player.orplayer.e) it.next()).onTracksVideoBitrateChange(this.f62211n);
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        int i11 = this.f62211n;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("changeTrackSelection  mediaTrackGroup:");
        sb2.append(mediaTrackGroup);
        sb2.append("  index:");
        sb2.append(i10);
        sb2.append(", videoBitrate:");
        sb2.append(i11);
        ExoPlayer exoPlayer = this.f62214q;
        if (exoPlayer == null || (currentTracks = exoPlayer.getCurrentTracks()) == null || (f0VarA = qn.a.a(currentTracks, mediaTrackGroup)) == null) {
            return;
        }
        ExoPlayer exoPlayer2 = this.f62214q;
        Intrinsics.e(exoPlayer2);
        ExoPlayer exoPlayer3 = this.f62214q;
        Intrinsics.e(exoPlayer3);
        exoPlayer2.V(exoPlayer3.m().a().L(new g0(f0VarA, i10)).F());
    }

    @Override
    public void clearScreen() {
    }

    @Override
    public void clearSurfaceOnly() {
        SurfaceTexture surfaceTexture;
        SurfaceHolder holder;
        Surface surface;
        ExoPlayer exoPlayer = this.f62214q;
        if (exoPlayer != null) {
            exoPlayer.setVideoSurfaceView(null);
        }
        ExoPlayer exoPlayer2 = this.f62214q;
        if (exoPlayer2 != null) {
            exoPlayer2.setVideoTextureView(null);
        }
        SurfaceRenderView surfaceRenderView = this.f62202e;
        if (surfaceRenderView != null && (holder = surfaceRenderView.getHolder()) != null && (surface = holder.getSurface()) != null) {
            surface.release();
        }
        TextureRenderView textureRenderView = this.f62203f;
        if (textureRenderView == null || (surfaceTexture = textureRenderView.getSurfaceTexture()) == null) {
            return;
        }
        surfaceTexture.release();
    }

    @Override
    public gn.e currentMediaSource() {
        return this.f62205h;
    }

    @Override
    public void enableHardwareDecoder(boolean z10) {
        if (!z10 && this.f62218u == ORExoDecoderType.HARDWARE) {
            sn.e.f72355a.a("ORExoPlayer", "1-硬解切到软解，重新创建设置", true);
            E();
        } else if (z10) {
            ORExoDecoderType oRExoDecoderType = this.f62218u;
            ORExoDecoderType oRExoDecoderType2 = ORExoDecoderType.HARDWARE;
            if (oRExoDecoderType != oRExoDecoderType2) {
                this.f62218u = oRExoDecoderType2;
                sn.e.f72355a.a("ORExoPlayer", "2-软解切换到硬解，重新创建设置", true);
                F(this.f62218u);
                I();
            }
        }
    }

    @Override
    public Pair getBitrate() {
        return new Pair(Integer.valueOf(this.f62211n), Integer.valueOf(this.f62212o));
    }

    @Override
    public long getCurrentPosition() {
        ExoPlayer exoPlayer = this.f62214q;
        if (exoPlayer != null) {
            return exoPlayer.getCurrentPosition();
        }
        return 0L;
    }

    @Override
    public qn.c getCurrentTracks() {
        i0 currentTracks;
        qn.c cVarC;
        ExoPlayer exoPlayer = this.f62214q;
        return (exoPlayer == null || (currentTracks = exoPlayer.getCurrentTracks()) == null || (cVarC = qn.a.c(currentTracks)) == null) ? new qn.c(null, 1, null) : cVarC;
    }

    @Override
    public qn.b getCurrentVideoFormat() {
        r rVarJ;
        ExoPlayer exoPlayer = this.f62214q;
        if (exoPlayer == null || (rVarJ = exoPlayer.J()) == null) {
            return null;
        }
        return qn.a.b(rVarJ);
    }

    @Override
    public Object getDownloadBitrate() {
        return com.transsion.player.orplayer.f.b.j(this);
    }

    @Override
    public long getDuration() {
        ExoPlayer exoPlayer = this.f62214q;
        if (exoPlayer != null) {
            return exoPlayer.getDuration();
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
        return this.f62206i;
    }

    @Override
    public boolean isComplete() {
        ExoPlayer exoPlayer = this.f62214q;
        return exoPlayer != null && exoPlayer.getPlaybackState() == 4;
    }

    @Override
    public boolean isLoading() {
        return com.transsion.player.orplayer.f.b.m(this);
    }

    @Override
    public boolean isMute() {
        ExoPlayer exoPlayer = this.f62214q;
        if (exoPlayer != null) {
            return exoPlayer.W();
        }
        return false;
    }

    @Override
    public boolean isPlaying() {
        ExoPlayer exoPlayer = this.f62214q;
        if (exoPlayer != null) {
            return exoPlayer.isPlaying();
        }
        return false;
    }

    @Override
    public boolean isPrepared() {
        ExoPlayer exoPlayer = this.f62214q;
        return exoPlayer != null && exoPlayer.getPlaybackState() == 3;
    }

    @Override
    public void pause() {
        com.transsion.player.orplayer.c cVar = this.f62204g;
        if (cVar != null) {
            cVar.g(true);
        }
        Log.e("ORExoPlayer", "pause");
        ExoPlayer exoPlayer = this.f62214q;
        if (exoPlayer != null) {
            exoPlayer.pause();
        }
        ExoPlayer exoPlayer2 = this.f62214q;
        if (exoPlayer2 != null) {
            exoPlayer2.getPlayWhenReady();
        }
        com.transsion.player.orplayer.c cVar2 = this.f62204g;
        if (cVar2 != null) {
            cVar2.b();
        }
    }

    @Override
    public void play() {
        ExoPlayer exoPlayer;
        Log.e("ORExoPlayer", MediaItem.MUSIC_FLOAT_STATE_PLAY);
        ExoPlayer exoPlayer2 = this.f62214q;
        if ((exoPlayer2 != null ? exoPlayer2.c() : null) != null && (exoPlayer = this.f62214q) != null) {
            exoPlayer.prepare();
        }
        ExoPlayer exoPlayer3 = this.f62214q;
        if (exoPlayer3 != null) {
            exoPlayer3.play();
        }
        com.transsion.player.orplayer.c cVar = this.f62204g;
        if (cVar != null) {
            cVar.g(false);
        }
        com.transsion.player.orplayer.c cVar2 = this.f62204g;
        if (cVar2 != null) {
            cVar2.e();
        }
        this.f62213p = false;
    }

    @Override
    public void prepare() {
        Log.e("ORExoPlayer", "prepare");
        ExoPlayer exoPlayer = this.f62214q;
        if (exoPlayer != null) {
            exoPlayer.prepare();
        }
        this.f62213p = false;
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
    public void removePlayerListener(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        com.transsion.player.orplayer.f.b.q(this, listener);
        this.f62221x.remove(listener);
    }

    @Override
    public boolean requestForce() {
        return com.transsion.player.orplayer.f.b.r(this);
    }

    @Override
    public void reset() {
        Log.e("ORExoPlayer", "reset    ");
        this.f62200c = false;
        this.f62213p = false;
        this.f62201d = false;
        ExoPlayer exoPlayer = this.f62214q;
        if (exoPlayer != null) {
            exoPlayer.stop();
        }
        ExoPlayer exoPlayer2 = this.f62214q;
        if (exoPlayer2 != null) {
            exoPlayer2.C();
        }
        this.f62218u = ORExoDecoderType.HARDWARE;
        this.f62205h = null;
        for (com.transsion.player.orplayer.e eVar : this.f62221x) {
            if (eVar != null) {
                eVar.onPlayerReset();
            }
        }
    }

    @Override
    public void seekTo(long j10) {
        ExoPlayer exoPlayer;
        Log.e("ORExoPlayer", "seekTo    mills:" + j10);
        this.f62213p = false;
        ExoPlayer exoPlayer2 = this.f62214q;
        if ((exoPlayer2 != null ? exoPlayer2.c() : null) != null && (exoPlayer = this.f62214q) != null) {
            exoPlayer.prepare();
        }
        ExoPlayer exoPlayer3 = this.f62214q;
        if (exoPlayer3 != null) {
            exoPlayer3.seekTo(j10);
        }
    }

    @Override
    public void setAutoPlay(boolean z10) {
        this.f62207j = z10;
        ExoPlayer exoPlayer = this.f62214q;
        if (exoPlayer != null) {
            exoPlayer.setPlayWhenReady(z10);
        }
    }

    @Override
    public void setDataSource(gn.e mediaSource) {
        Intrinsics.h(mediaSource, "mediaSource");
        sn.e.f72355a.a("ORExoPlayer", "setDataSource url:" + mediaSource.j(), true);
        Iterator it = this.f62221x.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onSetDataSource();
        }
        if (L(mediaSource)) {
            C(mediaSource);
            return;
        }
        if (K(mediaSource)) {
            B(mediaSource);
            return;
        }
        t tVarA = new t.c().j(mediaSource.j()).d(String.valueOf(mediaSource.k())).b(mediaSource.f()).a();
        Intrinsics.g(tVarA, "build(...)");
        ExoPlayer exoPlayer = this.f62214q;
        if (exoPlayer != null) {
            exoPlayer.I(tVarA);
        }
        this.f62205h = mediaSource;
    }

    @Override
    public void setLooping(boolean z10) {
        this.f62208k = z10;
        ExoPlayer exoPlayer = this.f62214q;
        if (exoPlayer != null) {
            exoPlayer.setRepeatMode(z10 ? 1 : 0);
        }
    }

    @Override
    public void setMute(boolean z10) {
        this.f62209l = z10;
        ExoPlayer exoPlayer = this.f62214q;
        if (exoPlayer != null) {
            exoPlayer.B(z10, 1);
        }
    }

    @Override
    public void setPlayerConfig(hn.d dVar) {
        com.transsion.player.orplayer.f.b.w(this, dVar);
    }

    @Override
    public void setPlayerListener(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        addPlayerListener(listener);
    }

    @Override
    public void setScaleMode(ScaleMode scaleMode) {
        RenderScaleMode renderScaleMode;
        Intrinsics.h(scaleMode, "scaleMode");
        com.transsion.player.orplayer.f.b.x(this, scaleMode);
        this.B = scaleMode;
        int i10 = b.f62225b[scaleMode.ordinal()];
        if (i10 == 1) {
            renderScaleMode = RenderScaleMode.SCREEN_SCALE_MATCH_PARENT;
        } else if (i10 == 2) {
            renderScaleMode = RenderScaleMode.SCREEN_SCALE_DEFAULT;
        } else {
            if (i10 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            renderScaleMode = RenderScaleMode.SCREEN_SCALE_CENTER_CROP;
        }
        TextureRenderView textureRenderView = this.f62203f;
        if (textureRenderView != null) {
            textureRenderView.setScaleType(renderScaleMode);
        }
        SurfaceRenderView surfaceRenderView = this.f62202e;
        if (surfaceRenderView != null) {
            surfaceRenderView.setScaleType(renderScaleMode);
        }
    }

    @Override
    public void setSpeed(float f10) {
        this.f62210m = f10;
        ExoPlayer exoPlayer = this.f62214q;
        if (exoPlayer != null) {
            exoPlayer.a(f10);
        }
    }

    @Override
    public void setSurfaceView(SurfaceView surfaceView) {
        this.f62202e = surfaceView instanceof SurfaceRenderView ? (SurfaceRenderView) surfaceView : null;
        ExoPlayer exoPlayer = this.f62214q;
        if (exoPlayer != null) {
            exoPlayer.setVideoSurfaceView(surfaceView);
        }
    }

    @Override
    public void setTextureView(TextureView textureView) {
        this.f62203f = textureView instanceof TextureRenderView ? (TextureRenderView) textureView : null;
        ExoPlayer exoPlayer = this.f62214q;
        if (exoPlayer != null) {
            exoPlayer.setVideoTextureView(textureView);
        }
    }

    @Override
    public void setVipResolution(boolean z10, int i10) {
        this.f62215r = Boolean.valueOf(z10);
        this.f62216s = i10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("LongVideoView 非会员可以播放 vipResolution :");
        sb2.append(i10);
    }

    @Override
    public void setVolume(float f10) {
        float fK = RangesKt.k(f10, 0.0f, 2.0f);
        b4 b4Var = this.f62220w;
        g gVar = b4Var instanceof g ? (g) b4Var : null;
        if (gVar != null) {
            gVar.s(fK);
        }
        ExoPlayer exoPlayer = this.f62214q;
        if (exoPlayer != null) {
            exoPlayer.setVolume(fK);
        }
        this.f62206i = Float.valueOf(fK);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setVolume  volume:");
        sb2.append(f10);
    }

    @Override
    public void stop() {
        Log.e("ORExoPlayer", "stop    ");
        com.transsion.player.orplayer.c cVar = this.f62204g;
        if (cVar != null) {
            cVar.g(true);
        }
        ExoPlayer exoPlayer = this.f62214q;
        if (exoPlayer != null) {
            exoPlayer.stop();
        }
        this.f62200c = false;
        this.f62213p = false;
        this.f62201d = false;
        com.transsion.player.orplayer.c cVar2 = this.f62204g;
        if (cVar2 != null) {
            cVar2.b();
        }
    }

    @Override
    public void release() {
        this.f62200c = false;
        this.f62213p = false;
        this.f62201d = false;
        Log.e("ORExoPlayer", "release");
        if (f0.f67871a.a(this)) {
            ExoPlayer exoPlayer = this.f62214q;
            if (exoPlayer != null) {
                exoPlayer.release();
            }
        } else {
            ExoPlayer exoPlayer2 = this.f62214q;
            if (exoPlayer2 != null) {
                exoPlayer2.stop();
            }
            ExoPlayer exoPlayer3 = this.f62214q;
            if (exoPlayer3 != null) {
                exoPlayer3.C();
            }
            ExoPlayer exoPlayer4 = this.f62214q;
            if (exoPlayer4 != null) {
                exoPlayer4.clearVideoSurface();
            }
        }
        for (com.transsion.player.orplayer.e eVar : this.f62221x) {
            if (eVar != null) {
                eVar.onPlayerRelease(this.f62205h);
            }
        }
        com.transsion.player.orplayer.c cVar = this.f62204g;
        if (cVar != null) {
            cVar.b();
        }
        this.f62217t = null;
        this.f62218u = ORExoDecoderType.HARDWARE;
        this.f62205h = null;
    }

    @Override
    public void seekTo(String uuid, long j10) {
        ExoPlayer exoPlayer;
        t tVarO;
        t.h hVar;
        Intrinsics.h(uuid, "uuid");
        com.transsion.player.orplayer.f.b.s(this, uuid, j10);
        this.f62213p = false;
        ExoPlayer exoPlayer2 = this.f62214q;
        int iG = exoPlayer2 != null ? exoPlayer2.G() : 0;
        for (int i10 = 0; i10 < iG; i10++) {
            ExoPlayer exoPlayer3 = this.f62214q;
            if (Intrinsics.c((exoPlayer3 == null || (tVarO = exoPlayer3.O(i10)) == null || (hVar = tVarO.f9899b) == null) ? null : hVar.f9995e, uuid)) {
                ExoPlayer exoPlayer4 = this.f62214q;
                if ((exoPlayer4 != null ? exoPlayer4.c() : null) != null) {
                    prepare();
                }
                ExoPlayer exoPlayer5 = this.f62214q;
                if (exoPlayer5 != null && exoPlayer5.u() == i10) {
                    if (isComplete() && (exoPlayer = this.f62214q) != null) {
                        exoPlayer.seekTo(j10);
                    }
                    Log.e("ORExoPlayer", "seekTo   uuid:" + uuid + " mills:" + j10 + "  是当前视频直接播放");
                } else {
                    Log.e("ORExoPlayer", "seekTo  index:" + i10 + " uuid:" + uuid);
                    ExoPlayer exoPlayer6 = this.f62214q;
                    if (exoPlayer6 != null) {
                        exoPlayer6.seekTo(i10, j10);
                    }
                }
                play();
                return;
            }
        }
        Log.e("ORExoPlayer", "seekTo   uuid:" + uuid + " mills:" + j10 + "  没有找到");
        pause();
    }

    public e(Context context, j jVar, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? k.a() : jVar, (i10 & 4) != 0 ? true : z10);
    }
}
