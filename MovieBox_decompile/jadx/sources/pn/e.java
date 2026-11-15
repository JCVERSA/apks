package pn;

import android.app.Application;
import android.graphics.SurfaceTexture;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.a0;
import androidx.media3.common.e0;
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
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.dash.DashMediaSource;
import androidx.media3.exoplayer.drm.w;
import androidx.media3.exoplayer.hls.HlsMediaSource;
import androidx.media3.exoplayer.source.i;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.transsion.player.exo.ORExoDecoderType;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.player.shorttv.preload.g;
import com.transsion.player.ui.render.RenderScaleMode;
import com.transsion.player.ui.render.SurfaceRenderView;
import com.transsion.player.ui.render.TextureRenderView;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class e implements f {

    private final com.transsion.player.shorttv.preload.c f69209a;

    private final String f69210b;

    private final Map f69211c;

    private ExoPlayer f69212d;

    private gn.e f69213e;

    private SurfaceRenderView f69214f;

    private TextureRenderView f69215g;

    private Float f69216h;

    private boolean f69217i;

    private boolean f69218j;

    private boolean f69219k;

    private float f69220l;

    private ScaleMode f69221m;

    private int f69222n;

    private int f69223o;

    private String f69224p;

    private ORExoDecoderType f69225q;

    private com.transsion.player.orplayer.c f69226r;

    private final a0.d f69227s;

    private CopyOnWriteArrayList f69228t;

    private final Handler f69229u;

    private final Runnable f69230v;

    private final Lazy f69231w;

    public class a {

        public static final int[] f69232a;

        public static final int[] f69233b;

        static {
            int[] iArr = new int[ScaleMode.values().length];
            try {
                iArr[ScaleMode.SCALE_TO_FILL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ScaleMode.SCALE_ASPECT_FIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ScaleMode.SCALE_ASPECT_FILL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f69232a = iArr;
            int[] iArr2 = new int[PlayMimeType.values().length];
            try {
                iArr2[PlayMimeType.DASH.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[PlayMimeType.HLS.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            f69233b = iArr2;
        }
    }

    public static final class b extends androidx.media3.exoplayer.util.a {
        b(String str) {
            super(str);
        }

        @Override
        public void Z(x1.c.a eventTime, i0 tracks) {
            Intrinsics.h(eventTime, "eventTime");
            Intrinsics.h(tracks, "tracks");
            super.Z(eventTime, tracks);
            e.this.C(eventTime, tracks);
        }

        @Override
        public void j0(x1.c.a eventTime, String decoderName, long j10, long j11) {
            Intrinsics.h(eventTime, "eventTime");
            Intrinsics.h(decoderName, "decoderName");
            super.j0(eventTime, decoderName, j10, j11);
            sn.e.f72355a.h(e.this.f69210b, "onExoVideoDecoderInitialize, decoderName:" + decoderName, true);
        }

        @Override
        public void x(x1.c.a eventTime, String decoderName, long j10, long j11) {
            Intrinsics.h(eventTime, "eventTime");
            Intrinsics.h(decoderName, "decoderName");
            super.x(eventTime, decoderName, j10, j11);
            sn.e.f72355a.h(e.this.f69210b, "onExoAudioDecoderInitialize, decoderName:" + decoderName, true);
        }
    }

    public static final class c implements a0.d {

        private int f69235a = 1;

        c() {
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
            com.transsion.player.orplayer.c cVar = e.this.f69226r;
            if (cVar != null) {
                cVar.f(z10);
            }
            if (z10) {
                for (com.transsion.player.orplayer.e eVar : e.this.f69228t) {
                    if (eVar != null) {
                        com.transsion.player.orplayer.e.a.J(eVar, null, 1, null);
                    }
                }
                e.this.f69229u.post(e.this.f69230v);
            } else {
                ExoPlayer exoPlayer = e.this.f69212d;
                if (exoPlayer == null || !exoPlayer.getPlayWhenReady()) {
                    for (com.transsion.player.orplayer.e eVar2 : e.this.f69228t) {
                        if (eVar2 != null) {
                            com.transsion.player.orplayer.e.a.G(eVar2, null, 1, null);
                        }
                    }
                }
                e.this.f69229u.removeCallbacks(e.this.f69230v);
            }
            sn.e.d(sn.e.f72355a, e.this.f69210b, "onIsPlayingChanged:" + z10, false, 4, null);
        }

        @Override
        public void onLoadingChanged(boolean z10) {
        }

        @Override
        public void onMediaItemTransition(t tVar, int i10) {
            t.h hVar;
            sn.e.d(sn.e.f72355a, e.this.f69210b, "onMediaItemTransition  reason:" + i10 + " ", false, 4, null);
            if (i10 == 0 || i10 == 1) {
                for (com.transsion.player.orplayer.e eVar : e.this.f69228t) {
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
            sn.e eVar = sn.e.f72355a;
            sn.e.d(eVar, e.this.f69210b, "onPlaybackStateChanged  playbackState:" + i10 + " ", false, 4, null);
            if (i10 == 2) {
                sn.e.d(eVar, e.this.f69210b, "onPlaybackStateChanged STATE_BUFFERING", false, 4, null);
                for (com.transsion.player.orplayer.e eVar2 : e.this.f69228t) {
                    if (eVar2 != null) {
                        com.transsion.player.orplayer.e.a.j(eVar2, null, 1, null);
                    }
                }
            } else if (i10 == 3) {
                e.this.D();
                for (com.transsion.player.orplayer.e eVar3 : e.this.f69228t) {
                    if (eVar3 != null) {
                        com.transsion.player.orplayer.e.a.x(eVar3, null, 1, null);
                    }
                }
                if (this.f69235a == 2) {
                    for (com.transsion.player.orplayer.e eVar4 : e.this.f69228t) {
                        if (eVar4 != null) {
                            com.transsion.player.orplayer.e.a.l(eVar4, null, 1, null);
                        }
                    }
                }
            } else if (i10 == 4) {
                for (com.transsion.player.orplayer.e eVar5 : e.this.f69228t) {
                    if (eVar5 != null) {
                        com.transsion.player.orplayer.e.a.f(eVar5, null, 1, null);
                    }
                }
            }
            this.f69235a = i10;
        }

        @Override
        public void onPlaybackSuppressionReasonChanged(int i10) {
        }

        @Override
        public void onPlayerError(PlaybackException error) {
            Intrinsics.h(error, "error");
            sn.e.d(sn.e.f72355a, e.this.f69210b, "onPlayerError:" + error, false, 4, null);
            for (com.transsion.player.orplayer.e eVar : e.this.f69228t) {
                if (eVar != null) {
                    com.transsion.player.orplayer.e.a.r(eVar, new PlayError(Integer.valueOf(error.errorCode), error.getMessage()), null, 2, null);
                }
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
            sn.e.d(sn.e.f72355a, e.this.f69210b, "onRenderedFirstFrame:", false, 4, null);
            for (com.transsion.player.orplayer.e eVar : e.this.f69228t) {
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
            Intrinsics.h(tracks, "tracks");
        }

        @Override
        public void onVideoSizeChanged(m0 videoSize) {
            Intrinsics.h(videoSize, "videoSize");
            SurfaceRenderView surfaceRenderView = e.this.f69214f;
            if (surfaceRenderView != null) {
                surfaceRenderView.setVideoRotation(videoSize.f9805c);
            }
            TextureRenderView textureRenderView = e.this.f69215g;
            if (textureRenderView != null) {
                textureRenderView.setVideoRotation(videoSize.f9805c);
            }
            SurfaceRenderView surfaceRenderView2 = e.this.f69214f;
            if (surfaceRenderView2 != null) {
                surfaceRenderView2.setVideoSize(videoSize.f9803a, videoSize.f9804b);
            }
            TextureRenderView textureRenderView2 = e.this.f69215g;
            if (textureRenderView2 != null) {
                textureRenderView2.setVideoSize(videoSize.f9803a, videoSize.f9804b);
            }
            for (com.transsion.player.orplayer.e eVar : e.this.f69228t) {
                if (eVar != null) {
                    eVar.onVideoSizeChanged(videoSize.f9803a, videoSize.f9804b);
                }
            }
            sn.e.d(sn.e.f72355a, e.this.f69210b, "onVideoSizeChanged width:" + videoSize.f9803a + "  height:" + videoSize.f9804b, false, 4, null);
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
            sn.e.b(sn.e.f72355a, e.this.f69210b, "onPositionDiscontinuity: currentWindowIndex=" + i11 + ", currentPositionMs=" + j10 + ", reason=" + i10, false, 4, null);
            if (i10 == 1 || i10 == 2) {
                for (com.transsion.player.orplayer.e eVar : e.this.f69228t) {
                    if (eVar != null) {
                        eVar.setOnSeekCompleteListener();
                    }
                }
            }
            for (com.transsion.player.orplayer.e eVar2 : e.this.f69228t) {
                if (eVar2 != null) {
                    com.transsion.player.orplayer.e.a.z(eVar2, j10, null, 2, null);
                }
            }
            g gVarW = e.this.w();
            if (gVarW != null) {
                gVarW.h(i11);
            }
        }
    }

    public static final class d implements com.transsion.player.orplayer.d {
        d() {
        }

        @Override
        public boolean isMute() {
            ExoPlayer exoPlayer = e.this.f69212d;
            if (exoPlayer != null) {
                return exoPlayer.W();
            }
            return false;
        }

        @Override
        public void pause() {
            ExoPlayer exoPlayer = e.this.f69212d;
            if (exoPlayer != null) {
                exoPlayer.pause();
            }
        }

        @Override
        public void play() {
            ExoPlayer exoPlayer = e.this.f69212d;
            if (exoPlayer != null) {
                exoPlayer.play();
            }
        }

        @Override
        public void setVolume(float f10) {
            ExoPlayer exoPlayer = e.this.f69212d;
            if (exoPlayer != null) {
                exoPlayer.setVolume(f10);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    private final boolean A(gn.e eVar) {
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

    private final void B() {
        this.f69229u.removeCallbacks(this.f69230v);
        this.f69229u.postDelayed(this.f69230v, 500L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void C(x1.c.a aVar, i0 i0Var) {
        int size = i0Var.a().size();
        for (int i10 = 0; i10 < size; i10++) {
            E e10 = i0Var.a().get(i10);
            Intrinsics.g(e10, "get(...)");
            i0.a aVar2 = (i0.a) e10;
            int i11 = aVar2.f9779a;
            for (int i12 = 0; i12 < i11; i12++) {
                r rVarB = aVar2.b(i12);
                Intrinsics.g(rVarB, "getTrackFormat(...)");
                if (y.t(rVarB.f9849o)) {
                    this.f69222n = rVarB.f9844j;
                } else if (y.o(rVarB.f9849o)) {
                    this.f69223o = rVarB.f9844j;
                }
                sn.e eVar = sn.e.f72355a;
                sn.e.i(eVar, this.f69210b, "onTracksChanged  MimeType:" + rVarB.f9849o, false, 4, null);
                String str = rVarB.f9849o;
                if (str != null && StringsKt.c0(str, "video", false, 2, null)) {
                    String str2 = rVarB.f9849o;
                    this.f69224p = str2;
                    sn.e.f(eVar, this.f69210b, "--------onTracksChanged  curVideoMimeType:" + str2, false, 4, null);
                }
            }
        }
        if (!Intrinsics.c(this.f69224p, "video/av01") || Build.VERSION.SDK_INT > 29) {
            return;
        }
        sn.e.f72355a.c(this.f69210b, "exo av1，强制切换到软解， MimeType:" + this.f69224p, true);
        gn.e eVarU = u();
        if (eVarU != null) {
            setDataSource(eVarU);
            prepare();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void D() {
        i0 currentTracks;
        ExoPlayer exoPlayer;
        r rVarR;
        r rVarJ;
        ExoPlayer exoPlayer2 = this.f69212d;
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
                    ExoPlayer exoPlayer3 = this.f69212d;
                    if (exoPlayer3 != null && (rVarJ = exoPlayer3.J()) != null) {
                        int i13 = rVarJ.f9844j;
                        int i14 = rVarB.f9844j;
                        if (i13 == i14) {
                            this.f69222n = i14;
                            sn.e.b(sn.e.f72355a, this.f69210b, "--onPrepare2GetBitrate  MimeType:" + rVarB.f9849o + "，videoBitrate：" + i14, false, 4, null);
                            Iterator it = this.f69228t.iterator();
                            while (it.hasNext()) {
                                ((com.transsion.player.orplayer.e) it.next()).onTracksVideoBitrateChange(this.f69222n);
                            }
                        }
                    }
                } else if (y.o(rVarB.f9849o) && (exoPlayer = this.f69212d) != null && (rVarR = exoPlayer.R()) != null) {
                    int i15 = rVarR.f9844j;
                    int i16 = rVarB.f9844j;
                    if (i15 == i16) {
                        this.f69223o = i16;
                        sn.e.b(sn.e.f72355a, this.f69210b, "--onPrepare2GetBitrate  MimeType:" + rVarB.f9849o + "，audioBitrate：" + i16, false, 4, null);
                        Iterator it2 = this.f69228t.iterator();
                        while (it2.hasNext()) {
                            ((com.transsion.player.orplayer.e) it2.next()).onTracksAudioBitrateChange(this.f69223o);
                        }
                    }
                }
            }
        }
    }

    public static final void E(e eVar) {
        ExoPlayer exoPlayer = eVar.f69212d;
        if (exoPlayer == null || !exoPlayer.isPlaying()) {
            return;
        }
        for (com.transsion.player.orplayer.e eVar2 : eVar.f69228t) {
            ExoPlayer exoPlayer2 = eVar.f69212d;
            if (exoPlayer2 != null) {
                eVar2.onProgress(exoPlayer2.getCurrentPosition(), eVar.currentMediaSource());
            }
        }
        eVar.B();
    }

    public static final g F(e eVar) {
        if (!eVar.f69209a.a()) {
            return null;
        }
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return new g(applicationA);
    }

    private final t r(gn.e eVar) {
        String str;
        String strG = eVar.g();
        if (strG == null) {
            strG = eVar.j();
        }
        t.c cVarH = new t.c().j(strG).d(String.valueOf(eVar.k())).b(eVar.f()).h(eVar.e());
        Intrinsics.g(cVarH, "setTag(...)");
        if (A(eVar)) {
            int i10 = a.f69233b[eVar.i().ordinal()];
            if (i10 != 1) {
                str = i10 != 2 ? null : MimeTypes.APPLICATION_M3U8;
            } else {
                str = MimeTypes.APPLICATION_MPD;
            }
            if (str != null) {
                cVarH.e(str);
            }
        }
        t tVarA = cVarH.a();
        Intrinsics.g(tVarA, "build(...)");
        return tVarA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final androidx.media3.exoplayer.source.r s(gn.e eVar) {
        androidx.media3.datasource.c.b aVar;
        androidx.media3.exoplayer.source.r.a factory;
        if (!A(eVar)) {
            return null;
        }
        Application applicationA = Utils.a();
        String strG = eVar.g();
        if (strG == null) {
            strG = eVar.j();
        }
        t tVarA = new t.c().j(strG).d(String.valueOf(eVar.k())).b(eVar.f()).h(eVar.e()).a();
        Intrinsics.g(tVarA, "build(...)");
        if (StringsKt.W(strG, "http", false, 2, null)) {
            aVar = new androidx.media3.datasource.c.b();
            Map mapD = eVar.d();
            if (mapD != null) {
                if (mapD.isEmpty()) {
                    mapD = null;
                }
                if (mapD != null) {
                    aVar.b(mapD);
                }
            }
        } else {
            aVar = new androidx.media3.datasource.b.a(applicationA);
        }
        int i10 = a.f69233b[eVar.i().ordinal()];
        if (i10 == 1) {
            factory = new DashMediaSource.Factory(aVar);
        } else {
            if (i10 != 2) {
                return null;
            }
            factory = new HlsMediaSource.Factory(aVar);
        }
        factory.e(new w() {
            @Override
            public final androidx.media3.exoplayer.drm.t a(t tVar) {
                return e.t(tVar);
            }
        });
        return factory.d(tVarA);
    }

    public static final androidx.media3.exoplayer.drm.t t(t it) {
        Intrinsics.h(it, "it");
        return androidx.media3.exoplayer.drm.t.f11300a;
    }

    private final gn.e u() {
        gn.e eVar = this.f69213e;
        reset();
        release();
        ORExoDecoderType oRExoDecoderType = Intrinsics.c(this.f69224p, "video/av01") ? ORExoDecoderType.AV1 : ORExoDecoderType.FFMPEG;
        this.f69225q = oRExoDecoderType;
        sn.e.f72355a.a(this.f69210b, "重新创建播放器切换编码, DecoderType:" + oRExoDecoderType + ",MimeTyp:" + this.f69224p, true);
        v(this.f69225q);
        z();
        return eVar;
    }

    private final void v(ORExoDecoderType oRExoDecoderType) {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        androidx.media3.exoplayer.m mVarA = new androidx.media3.exoplayer.m.b().b(5000, 20000, 500, 1000).d(-1).c(true).a();
        Intrinsics.g(mVarA, "build(...)");
        ExoPlayer exoPlayerH = new ExoPlayer.b(applicationA).q(new i(applicationA).q(in.a.d(applicationA))).r(in.a.b(applicationA, oRExoDecoderType)).p(mVarA).h();
        exoPlayerH.setPlayWhenReady(false);
        exoPlayerH.M(this.f69227s);
        exoPlayerH.D(new b(this.f69210b));
        this.f69212d = exoPlayerH;
    }

    public final g w() {
        return (g) this.f69231w.getValue();
    }

    private final void x() {
        this.f69226r = new com.transsion.player.orplayer.c(new d(), new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return e.y(this.f69208a, ((Boolean) obj).booleanValue());
            }
        });
    }

    public static final Unit y(e eVar, boolean z10) {
        Iterator it = eVar.f69228t.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onFocusChange(z10);
        }
        return Unit.f64096a;
    }

    private final void z() {
        setMute(this.f69219k);
        Float f10 = this.f69216h;
        if (f10 != null) {
            setVolume(f10.floatValue());
        }
        setLooping(this.f69218j);
        setAutoPlay(this.f69217i);
        setSpeed(this.f69220l);
        SurfaceRenderView surfaceRenderView = this.f69214f;
        if (surfaceRenderView != null) {
            setSurfaceView(surfaceRenderView);
        }
        TextureRenderView textureRenderView = this.f69215g;
        if (textureRenderView != null) {
            setTextureView(textureRenderView);
        }
        setScaleMode(this.f69221m);
    }

    @Override
    public boolean a(gn.e mediaSource) {
        t.h hVar;
        Intrinsics.h(mediaSource, "mediaSource");
        ExoPlayer exoPlayer = this.f69212d;
        int iG = exoPlayer != null ? exoPlayer.G() : 0;
        for (int i10 = 0; i10 < iG; i10++) {
            ExoPlayer exoPlayer2 = this.f69212d;
            Object obj = null;
            t tVarO = exoPlayer2 != null ? exoPlayer2.O(i10) : null;
            if (tVarO != null && (hVar = tVarO.f9899b) != null) {
                obj = hVar.f9998h;
            }
            if (Intrinsics.c(obj, mediaSource.e())) {
                sn.e.d(sn.e.f72355a, this.f69210b, "updateDataSource 在列表里更新数据 index:" + i10 + " key:" + mediaSource.e(), false, 4, null);
                if (A(mediaSource)) {
                    androidx.media3.exoplayer.source.r rVarS = s(mediaSource);
                    if (rVarS == null) {
                        return false;
                    }
                    ExoPlayer exoPlayer3 = this.f69212d;
                    if (exoPlayer3 != null) {
                        exoPlayer3.F(i10);
                    }
                    ExoPlayer exoPlayer4 = this.f69212d;
                    if (exoPlayer4 != null) {
                        exoPlayer4.T(i10, rVarS);
                    }
                } else {
                    ExoPlayer exoPlayer5 = this.f69212d;
                    if (exoPlayer5 != null) {
                        exoPlayer5.P(i10, r(mediaSource));
                    }
                }
                ExoPlayer exoPlayer6 = this.f69212d;
                if (exoPlayer6 != null) {
                    exoPlayer6.prepare();
                }
                Map map = this.f69211c;
                String strE = mediaSource.e();
                if (strE == null) {
                    strE = "";
                }
                map.put(strE, mediaSource);
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean addDataSource(gn.e mediaSource) {
        ExoPlayer exoPlayer;
        ExoPlayer exoPlayer2;
        t.h hVar;
        String str;
        Integer numV;
        Intrinsics.h(mediaSource, "mediaSource");
        this.f69213e = mediaSource;
        ExoPlayer exoPlayer3 = this.f69212d;
        int iG = exoPlayer3 != null ? exoPlayer3.G() : 0;
        int i10 = -1;
        for (int i11 = 0; i11 < iG; i11++) {
            ExoPlayer exoPlayer4 = this.f69212d;
            Object obj = null;
            t tVarO = exoPlayer4 != null ? exoPlayer4.O(i11) : null;
            int iIntValue = (tVarO == null || (str = tVarO.f9898a) == null || (numV = StringsKt.v(str)) == null) ? 0 : numV.intValue();
            if (tVarO != null && (hVar = tVarO.f9899b) != null) {
                obj = hVar.f9998h;
            }
            if (Intrinsics.c(obj, mediaSource.e())) {
                sn.e.d(sn.e.f72355a, this.f69210b, "addDataSource 已经在列表里 index:" + i11 + " vid:" + mediaSource.e(), false, 4, null);
                return false;
            }
            if (i10 < 0 && iIntValue > mediaSource.k()) {
                i10 = i11;
            }
        }
        if (i10 >= 0) {
            g gVarW = w();
            if (gVarW != null) {
                gVarW.f(i10, mediaSource);
            }
            if (A(mediaSource)) {
                androidx.media3.exoplayer.source.r rVarS = s(mediaSource);
                if (rVarS != null && (exoPlayer2 = this.f69212d) != null) {
                    exoPlayer2.T(i10, rVarS);
                }
            } else {
                ExoPlayer exoPlayer5 = this.f69212d;
                if (exoPlayer5 != null) {
                    exoPlayer5.N(i10, r(mediaSource));
                }
            }
            sn.e.d(sn.e.f72355a, this.f69210b, "addDataSource  index:" + i10 + " key:" + mediaSource.e(), false, 4, null);
        } else {
            sn.e.d(sn.e.f72355a, this.f69210b, "addDataSource  index:" + iG + " key:" + mediaSource.e(), false, 4, null);
            if (A(mediaSource)) {
                androidx.media3.exoplayer.source.r rVarS2 = s(mediaSource);
                if (rVarS2 != null && (exoPlayer = this.f69212d) != null) {
                    exoPlayer.X(rVarS2);
                }
            } else {
                ExoPlayer exoPlayer6 = this.f69212d;
                if (exoPlayer6 != null) {
                    exoPlayer6.K(r(mediaSource));
                }
            }
        }
        g gVarW2 = w();
        if (gVarW2 != null) {
            gVarW2.g(mediaSource);
        }
        Map map = this.f69211c;
        String strE = mediaSource.e();
        if (strE == null) {
            strE = "";
        }
        map.put(strE, mediaSource);
        return true;
    }

    @Override
    public void addPlayerListener(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        f.a.a(this, listener);
        sn.e.f(sn.e.f72355a, this.f69210b, "addPlayerListener", false, 4, null);
        if (this.f69228t.contains(listener)) {
            return;
        }
        this.f69228t.add(listener);
    }

    @Override
    public Map b() {
        return this.f69211c;
    }

    @Override
    public void changeTrackSelection(qn.d dVar, int i10) {
        f.a.b(this, dVar, i10);
    }

    @Override
    public void clearScreen() {
        f.a.c(this);
    }

    @Override
    public void clearSurfaceOnly() {
        SurfaceTexture surfaceTexture;
        SurfaceHolder holder;
        Surface surface;
        ExoPlayer exoPlayer = this.f69212d;
        if (exoPlayer != null) {
            exoPlayer.setVideoSurfaceView(null);
        }
        ExoPlayer exoPlayer2 = this.f69212d;
        if (exoPlayer2 != null) {
            exoPlayer2.setVideoTextureView(null);
        }
        SurfaceRenderView surfaceRenderView = this.f69214f;
        if (surfaceRenderView != null && (holder = surfaceRenderView.getHolder()) != null && (surface = holder.getSurface()) != null) {
            surface.release();
        }
        TextureRenderView textureRenderView = this.f69215g;
        if (textureRenderView == null || (surfaceTexture = textureRenderView.getSurfaceTexture()) == null) {
            return;
        }
        surfaceTexture.release();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001f  */
    @Override
    public gn.e currentMediaSource() {
        String string;
        t.h hVar;
        Object obj;
        ExoPlayer exoPlayer = this.f69212d;
        if (exoPlayer == null) {
            string = null;
        } else {
            t tVarO = exoPlayer.O(exoPlayer != null ? exoPlayer.u() : 0);
            if (tVarO == null || (hVar = tVarO.f9899b) == null || (obj = hVar.f9998h) == null) {
                string = null;
            } else {
                string = obj.toString();
            }
        }
        return (gn.e) this.f69211c.get(string);
    }

    @Override
    public void enableHardwareDecoder(boolean z10) {
        if (!z10 && this.f69225q == ORExoDecoderType.HARDWARE) {
            u();
            return;
        }
        if (z10) {
            ORExoDecoderType oRExoDecoderType = this.f69225q;
            ORExoDecoderType oRExoDecoderType2 = ORExoDecoderType.HARDWARE;
            if (oRExoDecoderType != oRExoDecoderType2) {
                sn.e.f72355a.a(this.f69210b, "软解切换到硬解，重新创建设置", true);
                this.f69225q = oRExoDecoderType2;
                v(oRExoDecoderType2);
                z();
            }
        }
    }

    @Override
    public Pair getBitrate() {
        return new Pair(Integer.valueOf(this.f69222n), Integer.valueOf(this.f69223o));
    }

    @Override
    public long getCurrentPosition() {
        ExoPlayer exoPlayer = this.f69212d;
        if (exoPlayer != null) {
            return exoPlayer.getCurrentPosition();
        }
        return 0L;
    }

    @Override
    public qn.c getCurrentTracks() {
        return f.a.d(this);
    }

    @Override
    public qn.b getCurrentVideoFormat() {
        return f.a.e(this);
    }

    @Override
    public Object getDownloadBitrate() {
        return f.a.f(this);
    }

    @Override
    public long getDuration() {
        ExoPlayer exoPlayer = this.f69212d;
        if (exoPlayer != null) {
            return exoPlayer.getDuration();
        }
        return 0L;
    }

    @Override
    public int getVideoHeight() {
        return f.a.g(this);
    }

    @Override
    public int getVideoWidth() {
        return f.a.h(this);
    }

    @Override
    public Float getVolume() {
        ExoPlayer exoPlayer = this.f69212d;
        if (exoPlayer != null) {
            return Float.valueOf(exoPlayer.getVolume());
        }
        return null;
    }

    @Override
    public boolean isComplete() {
        ExoPlayer exoPlayer = this.f69212d;
        return exoPlayer != null && exoPlayer.getPlaybackState() == 4;
    }

    @Override
    public boolean isLoading() {
        return f.a.i(this);
    }

    @Override
    public boolean isMute() {
        ExoPlayer exoPlayer = this.f69212d;
        if (exoPlayer != null) {
            return exoPlayer.W();
        }
        return false;
    }

    @Override
    public boolean isPlaying() {
        ExoPlayer exoPlayer = this.f69212d;
        if (exoPlayer != null) {
            return exoPlayer.isPlaying();
        }
        return false;
    }

    @Override
    public boolean isPrepared() {
        ExoPlayer exoPlayer = this.f69212d;
        return exoPlayer != null && exoPlayer.getPlaybackState() == 3;
    }

    @Override
    public void pause() {
        com.transsion.player.orplayer.c cVar = this.f69226r;
        if (cVar != null) {
            cVar.g(true);
        }
        sn.e.d(sn.e.f72355a, this.f69210b, "pause", false, 4, null);
        ExoPlayer exoPlayer = this.f69212d;
        if (exoPlayer != null) {
            exoPlayer.pause();
        }
        com.transsion.player.orplayer.c cVar2 = this.f69226r;
        if (cVar2 != null) {
            cVar2.b();
        }
    }

    @Override
    public void play() {
        ExoPlayer exoPlayer;
        sn.e.d(sn.e.f72355a, this.f69210b, MediaItem.MUSIC_FLOAT_STATE_PLAY, false, 4, null);
        ExoPlayer exoPlayer2 = this.f69212d;
        if ((exoPlayer2 != null ? exoPlayer2.c() : null) != null && (exoPlayer = this.f69212d) != null) {
            exoPlayer.prepare();
        }
        ExoPlayer exoPlayer3 = this.f69212d;
        if (exoPlayer3 != null) {
            exoPlayer3.play();
        }
        com.transsion.player.orplayer.c cVar = this.f69226r;
        if (cVar != null) {
            cVar.g(false);
        }
        com.transsion.player.orplayer.c cVar2 = this.f69226r;
        if (cVar2 != null) {
            cVar2.e();
        }
    }

    @Override
    public void prepare() {
        sn.e.d(sn.e.f72355a, this.f69210b, "prepare", false, 4, null);
        ExoPlayer exoPlayer = this.f69212d;
        if (exoPlayer != null) {
            exoPlayer.prepare();
        }
    }

    @Override
    public void release(String str) {
        f.a.j(this, str);
    }

    @Override
    public boolean removeDataSource(gn.e mediaSource) {
        t.h hVar;
        Intrinsics.h(mediaSource, "mediaSource");
        ExoPlayer exoPlayer = this.f69212d;
        int iG = exoPlayer != null ? exoPlayer.G() : 0;
        int i10 = 0;
        while (true) {
            if (i10 >= iG) {
                i10 = -1;
                break;
            }
            ExoPlayer exoPlayer2 = this.f69212d;
            Object obj = null;
            t tVarO = exoPlayer2 != null ? exoPlayer2.O(i10) : null;
            if (tVarO != null && (hVar = tVarO.f9899b) != null) {
                obj = hVar.f9998h;
            }
            if (Intrinsics.c(obj, mediaSource.e())) {
                sn.e.d(sn.e.f72355a, this.f69210b, "removeDataSource 在列表里 index:" + i10 + " key:" + mediaSource.e(), false, 4, null);
                break;
            }
            i10++;
        }
        if (i10 < 0) {
            return false;
        }
        g gVarW = w();
        if (gVarW != null) {
            String strE = mediaSource.e();
            if (strE == null) {
                strE = "";
            }
            gVarW.q(strE);
        }
        ExoPlayer exoPlayer3 = this.f69212d;
        if (exoPlayer3 != null) {
            exoPlayer3.F(i10);
        }
        Map map = this.f69211c;
        String strE2 = mediaSource.e();
        map.remove(strE2 != null ? strE2 : "");
        return true;
    }

    @Override
    public void removePlayerListener(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        f.a.k(this, listener);
        sn.e.f(sn.e.f72355a, this.f69210b, "removePlayerListener", false, 4, null);
        this.f69228t.remove(listener);
    }

    @Override
    public boolean requestForce() {
        return f.a.l(this);
    }

    @Override
    public void reset() {
        sn.e.d(sn.e.f72355a, this.f69210b, "reset    ", false, 4, null);
        ExoPlayer exoPlayer = this.f69212d;
        if (exoPlayer != null) {
            exoPlayer.stop();
        }
        for (com.transsion.player.orplayer.e eVar : this.f69228t) {
            if (eVar != null) {
                eVar.onPlayerReset();
            }
        }
    }

    @Override
    public void seekTo(long j10) {
        ExoPlayer exoPlayer;
        sn.e.d(sn.e.f72355a, this.f69210b, "seekTo    mills:" + j10, false, 4, null);
        ExoPlayer exoPlayer2 = this.f69212d;
        if ((exoPlayer2 != null ? exoPlayer2.c() : null) != null && (exoPlayer = this.f69212d) != null) {
            exoPlayer.prepare();
        }
        ExoPlayer exoPlayer3 = this.f69212d;
        if (exoPlayer3 != null) {
            exoPlayer3.seekTo(j10);
        }
    }

    @Override
    public void setAutoPlay(boolean z10) {
        this.f69217i = z10;
        ExoPlayer exoPlayer = this.f69212d;
        if (exoPlayer != null) {
            exoPlayer.setPlayWhenReady(z10);
        }
    }

    @Override
    public void setDataSource(gn.e mediaSource) {
        ExoPlayer exoPlayer;
        Intrinsics.h(mediaSource, "mediaSource");
        this.f69213e = mediaSource;
        if (A(mediaSource)) {
            androidx.media3.exoplayer.source.r rVarS = s(mediaSource);
            if (rVarS != null && (exoPlayer = this.f69212d) != null) {
                exoPlayer.U(rVarS);
            }
        } else {
            ExoPlayer exoPlayer2 = this.f69212d;
            if (exoPlayer2 != null) {
                exoPlayer2.I(r(mediaSource));
            }
        }
        for (com.transsion.player.orplayer.e eVar : this.f69228t) {
            if (eVar != null) {
                eVar.onSetDataSource();
            }
        }
        sn.e.d(sn.e.f72355a, this.f69210b, "setDataSource", false, 4, null);
    }

    @Override
    public void setLooping(boolean z10) {
        this.f69218j = z10;
        ExoPlayer exoPlayer = this.f69212d;
        if (exoPlayer != null) {
            exoPlayer.setRepeatMode(z10 ? 1 : 0);
        }
    }

    @Override
    public void setMute(boolean z10) {
        this.f69219k = z10;
        ExoPlayer exoPlayer = this.f69212d;
        if (exoPlayer != null) {
            exoPlayer.B(z10, 1);
        }
    }

    @Override
    public void setPlayerConfig(hn.d dVar) {
        f.a.n(this, dVar);
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
        f.a.o(this, scaleMode);
        this.f69221m = scaleMode;
        int i10 = a.f69232a[scaleMode.ordinal()];
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
        TextureRenderView textureRenderView = this.f69215g;
        if (textureRenderView != null) {
            textureRenderView.setScaleType(renderScaleMode);
        }
        SurfaceRenderView surfaceRenderView = this.f69214f;
        if (surfaceRenderView != null) {
            surfaceRenderView.setScaleType(renderScaleMode);
        }
    }

    @Override
    public void setSpeed(float f10) {
        this.f69220l = f10;
        ExoPlayer exoPlayer = this.f69212d;
        if (exoPlayer != null) {
            exoPlayer.a(f10);
        }
    }

    @Override
    public void setSurfaceView(SurfaceView surfaceView) {
        this.f69214f = surfaceView instanceof SurfaceRenderView ? (SurfaceRenderView) surfaceView : null;
        ExoPlayer exoPlayer = this.f69212d;
        if (exoPlayer != null) {
            exoPlayer.setVideoSurfaceView(surfaceView);
        }
    }

    @Override
    public void setTextureView(TextureView textureView) {
        this.f69215g = textureView instanceof TextureRenderView ? (TextureRenderView) textureView : null;
        ExoPlayer exoPlayer = this.f69212d;
        if (exoPlayer != null) {
            exoPlayer.setVideoTextureView(textureView);
        }
    }

    @Override
    public void setVipResolution(boolean z10, int i10) {
    }

    @Override
    public void setVolume(float f10) {
        this.f69216h = Float.valueOf(f10);
        ExoPlayer exoPlayer = this.f69212d;
        if (exoPlayer != null) {
            exoPlayer.setVolume(f10);
        }
    }

    @Override
    public void stop() {
        com.transsion.player.orplayer.c cVar = this.f69226r;
        if (cVar != null) {
            cVar.g(true);
        }
        sn.e.d(sn.e.f72355a, this.f69210b, "stop    ", false, 4, null);
        ExoPlayer exoPlayer = this.f69212d;
        if (exoPlayer != null) {
            exoPlayer.stop();
        }
        com.transsion.player.orplayer.c cVar2 = this.f69226r;
        if (cVar2 != null) {
            cVar2.b();
        }
    }

    public e(com.transsion.player.shorttv.preload.c config) {
        Intrinsics.h(config, "config");
        this.f69209a = config;
        this.f69210b = "ShortTv-ORExoPlayer";
        this.f69211c = new HashMap();
        this.f69220l = 1.0f;
        this.f69221m = ScaleMode.SCALE_TO_FILL;
        ORExoDecoderType oRExoDecoderType = ORExoDecoderType.HARDWARE;
        this.f69225q = oRExoDecoderType;
        this.f69227s = new c();
        this.f69228t = new CopyOnWriteArrayList();
        x();
        v(oRExoDecoderType);
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        this.f69229u = new Handler(looperMyLooper);
        this.f69230v = new Runnable() {
            @Override
            public final void run() {
                e.E(this.f69206a);
            }
        };
        this.f69231w = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return e.F(this.f69207a);
            }
        });
    }

    @Override
    public void release() {
        sn.e.d(sn.e.f72355a, this.f69210b, "release", false, 4, null);
        ExoPlayer exoPlayer = this.f69212d;
        if (exoPlayer != null) {
            exoPlayer.release();
        }
        for (com.transsion.player.orplayer.e eVar : this.f69228t) {
            if (eVar != null) {
                com.transsion.player.orplayer.e.a.u(eVar, null, 1, null);
            }
        }
        this.f69228t.clear();
        g gVarW = w();
        if (gVarW != null) {
            gVarW.p();
        }
        this.f69213e = null;
        com.transsion.player.orplayer.c cVar = this.f69226r;
        if (cVar != null) {
            cVar.b();
        }
    }

    @Override
    public void seekTo(String uuid, long j10) {
        ExoPlayer exoPlayer;
        t tVarO;
        t.h hVar;
        Intrinsics.h(uuid, "uuid");
        f.a.m(this, uuid, j10);
        ExoPlayer exoPlayer2 = this.f69212d;
        int iG = exoPlayer2 != null ? exoPlayer2.G() : 0;
        for (int i10 = 0; i10 < iG; i10++) {
            ExoPlayer exoPlayer3 = this.f69212d;
            if (Intrinsics.c((exoPlayer3 == null || (tVarO = exoPlayer3.O(i10)) == null || (hVar = tVarO.f9899b) == null) ? null : hVar.f9998h, uuid)) {
                ExoPlayer exoPlayer4 = this.f69212d;
                if ((exoPlayer4 != null ? exoPlayer4.c() : null) != null) {
                    prepare();
                }
                ExoPlayer exoPlayer5 = this.f69212d;
                if (exoPlayer5 != null && exoPlayer5.u() == i10) {
                    if (isComplete() && (exoPlayer = this.f69212d) != null) {
                        exoPlayer.seekTo(j10);
                    }
                    sn.e.d(sn.e.f72355a, this.f69210b, "seekTo   uuid:" + uuid + " mills:" + j10 + "  是当前视频直接播放", false, 4, null);
                } else {
                    sn.e.d(sn.e.f72355a, this.f69210b, "seekTo  index:" + i10 + " uuid:" + uuid, false, 4, null);
                    ExoPlayer exoPlayer6 = this.f69212d;
                    if (exoPlayer6 != null) {
                        exoPlayer6.seekTo(i10, j10);
                    }
                }
                play();
                return;
            }
        }
        sn.e.d(sn.e.f72355a, this.f69210b, "seekTo   uuid:" + uuid + " mills:" + j10 + "  没有找到", false, 4, null);
        pause();
    }

    public e(com.transsion.player.shorttv.preload.c cVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? com.transsion.player.shorttv.preload.d.a() : cVar);
    }
}
