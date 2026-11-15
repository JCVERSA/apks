package com.transsion.player.orplayer;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import com.aliyun.player.AliPlayer;
import com.aliyun.player.AliPlayerFactory;
import com.aliyun.player.AliPlayerGlobalSettings;
import com.aliyun.player.IPlayer;
import com.aliyun.player.bean.ErrorCode;
import com.aliyun.player.bean.ErrorInfo;
import com.aliyun.player.bean.InfoBean;
import com.aliyun.player.bean.InfoCode;
import com.aliyun.player.nativeclass.CacheConfig;
import com.aliyun.player.nativeclass.MediaInfo;
import com.aliyun.player.nativeclass.PlayerConfig;
import com.aliyun.player.nativeclass.TrackInfo;
import com.aliyun.player.source.UrlSource;
import com.transsion.player.p007enum.ScaleMode;
import java.io.File;
import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class q implements f {

    private final String f46464a;

    private AliPlayer f46465b;

    private com.transsion.player.orplayer.c f46466c;

    private com.transsion.player.orplayer.e f46467d;

    private String f46468e;

    private gn.e f46469f;

    private boolean f46470g;

    private boolean f46471h;

    private boolean f46472i;

    private boolean f46473j;

    private boolean f46474k;

    private CopyOnWriteArrayList f46475l;

    private Context f46476m;

    private long f46477n;

    private int f46478o;

    private int f46479p;

    private boolean f46480q;

    private volatile boolean f46481r;

    private Handler f46482s;

    private final d f46483t;

    private TextureView f46484u;

    private SurfaceView f46485v;

    private final e f46486w;

    public class a {

        public static final int[] f46487a;

        public static final int[] f46488b;

        static {
            int[] iArr = new int[TrackInfo.Type.values().length];
            try {
                iArr[TrackInfo.Type.TYPE_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TrackInfo.Type.TYPE_AUDIO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f46487a = iArr;
            int[] iArr2 = new int[ScaleMode.values().length];
            try {
                iArr2[ScaleMode.SCALE_ASPECT_FILL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[ScaleMode.SCALE_TO_FILL.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[ScaleMode.SCALE_ASPECT_FIT.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            f46488b = iArr2;
        }
    }

    public static final class b implements com.transsion.player.orplayer.d {
        b() {
        }

        @Override
        public boolean isMute() {
            AliPlayer aliPlayer = q.this.f46465b;
            if (aliPlayer != null) {
                return aliPlayer.isMute();
            }
            return false;
        }

        @Override
        public void pause() {
            AliPlayer aliPlayer = q.this.f46465b;
            if (aliPlayer != null) {
                aliPlayer.pause();
            }
        }

        @Override
        public void play() {
            AliPlayer aliPlayer = q.this.f46465b;
            if (aliPlayer != null) {
                aliPlayer.start();
            }
        }

        @Override
        public void setVolume(float f10) {
            AliPlayer aliPlayer = q.this.f46465b;
            if (aliPlayer != null) {
                aliPlayer.setVolume(f10);
            }
        }
    }

    public static final class c implements IPlayer.OnLoadingStatusListener {
        c() {
        }

        @Override
        public void onLoadingBegin() {
            if (q.this.f46481r) {
                return;
            }
            String unused = q.this.f46464a;
            q.this.f46471h = true;
            com.transsion.player.orplayer.e eVar = q.this.f46467d;
            if (eVar != null) {
                eVar.onLoadingBegin(q.this.f46469f);
            }
            CopyOnWriteArrayList copyOnWriteArrayList = q.this.f46475l;
            q qVar = q.this;
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ((com.transsion.player.orplayer.e) it.next()).onLoadingBegin(qVar.f46469f);
            }
        }

        @Override
        public void onLoadingEnd() {
            if (q.this.f46481r) {
                return;
            }
            String unused = q.this.f46464a;
            q.this.f46471h = false;
            com.transsion.player.orplayer.e eVar = q.this.f46467d;
            if (eVar != null) {
                eVar.onLoadingEnd(q.this.f46469f);
            }
            CopyOnWriteArrayList copyOnWriteArrayList = q.this.f46475l;
            q qVar = q.this;
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ((com.transsion.player.orplayer.e) it.next()).onLoadingEnd(qVar.f46469f);
            }
        }

        @Override
        public void onLoadingProgress(int i10, float f10) {
            String unused = q.this.f46464a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onLoadingProgress percent:");
            sb2.append(i10);
            sb2.append(",netSpeed:");
            sb2.append(f10);
        }
    }

    public static final class d implements SurfaceHolder.Callback {
        d() {
        }

        public static final Unit d(q qVar) {
            AliPlayer aliPlayer = qVar.f46465b;
            if (aliPlayer != null) {
                aliPlayer.surfaceChanged();
            }
            return Unit.f64096a;
        }

        public static final void e(SurfaceHolder surfaceHolder, q qVar) {
            AliPlayer aliPlayer;
            Surface surface = surfaceHolder.getSurface();
            if (!surface.isValid() || (aliPlayer = qVar.f46465b) == null) {
                return;
            }
            aliPlayer.setSurface(surface);
        }

        public static final Unit f(q qVar) {
            AliPlayer aliPlayer = qVar.f46465b;
            if (aliPlayer != null) {
                aliPlayer.setSurface(null);
            }
            return Unit.f64096a;
        }

        @Override
        public void surfaceChanged(SurfaceHolder holder, int i10, int i11, int i12) {
            Intrinsics.h(holder, "holder");
            final q qVar = q.this;
            qVar.H(new Function0() {
                @Override
                public final Object invoke() {
                    return q.d.d(qVar);
                }
            });
        }

        @Override
        public void surfaceCreated(final SurfaceHolder holder) {
            Intrinsics.h(holder, "holder");
            Handler handler = q.this.f46482s;
            if (handler != null) {
                final q qVar = q.this;
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        q.d.e(holder, qVar);
                    }
                });
            }
        }

        @Override
        public void surfaceDestroyed(SurfaceHolder holder) {
            Intrinsics.h(holder, "holder");
            final q qVar = q.this;
            qVar.H(new Function0() {
                @Override
                public final Object invoke() {
                    return q.d.f(qVar);
                }
            });
        }
    }

    public static final class e implements TextureView.SurfaceTextureListener {
        e() {
        }

        public static final Unit d(SurfaceTexture surfaceTexture, q qVar) {
            AliPlayer aliPlayer;
            Surface surface = new Surface(surfaceTexture);
            if (surface.isValid() && (aliPlayer = qVar.f46465b) != null) {
                aliPlayer.setSurface(surface);
            }
            return Unit.f64096a;
        }

        public static final Unit e(q qVar) {
            AliPlayer aliPlayer = qVar.f46465b;
            if (aliPlayer != null) {
                aliPlayer.setSurface(null);
            }
            return Unit.f64096a;
        }

        public static final Unit f(q qVar) {
            AliPlayer aliPlayer = qVar.f46465b;
            if (aliPlayer != null) {
                aliPlayer.surfaceChanged();
            }
            return Unit.f64096a;
        }

        @Override
        public void onSurfaceTextureAvailable(final SurfaceTexture surfaceTexture, int i10, int i11) {
            Intrinsics.h(surfaceTexture, "surfaceTexture");
            final q qVar = q.this;
            qVar.H(new Function0() {
                @Override
                public final Object invoke() {
                    return q.e.d(surfaceTexture, qVar);
                }
            });
        }

        @Override
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surface) {
            Intrinsics.h(surface, "surface");
            final q qVar = q.this;
            qVar.H(new Function0() {
                @Override
                public final Object invoke() {
                    return q.e.e(qVar);
                }
            });
            return false;
        }

        @Override
        public void onSurfaceTextureSizeChanged(SurfaceTexture surface, int i10, int i11) {
            Intrinsics.h(surface, "surface");
            final q qVar = q.this;
            qVar.H(new Function0() {
                @Override
                public final Object invoke() {
                    return q.e.f(qVar);
                }
            });
        }

        @Override
        public void onSurfaceTextureUpdated(SurfaceTexture surface) {
            Intrinsics.h(surface, "surface");
        }
    }

    public q(Context context, hn.d dVar) {
        Intrinsics.h(context, "context");
        this.f46464a = "ORPlayerImpl";
        this.f46468e = "";
        this.f46475l = new CopyOnWriteArrayList();
        this.f46483t = new d();
        this.f46486w = new e();
        this.f46476m = context;
        AliPlayer aliPlayerCreateAliPlayer = AliPlayerFactory.createAliPlayer(context);
        aliPlayerCreateAliPlayer.setTraceId(dVar != null ? dVar.o() : null);
        aliPlayerCreateAliPlayer.enableHardwareDecoder(dVar != null ? dVar.e() : true);
        this.f46465b = aliPlayerCreateAliPlayer;
        if (dVar == null || dVar.i()) {
            x();
        }
        setPlayerConfig(dVar == null ? hn.b.f61411a.a() : dVar);
        z(dVar != null ? dVar.j() : true);
    }

    public static final void A(q qVar, ErrorInfo errorInfo) {
        if (qVar.f46481r) {
            return;
        }
        ErrorCode code = errorInfo.getCode();
        String msg = errorInfo.getMsg();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onError code:");
        sb2.append(code);
        sb2.append(",msg:");
        sb2.append(msg);
        PlayError playError = new PlayError(Integer.valueOf(errorInfo.getCode().getValue()), errorInfo.getMsg());
        if (qVar.w(playError)) {
            return;
        }
        com.transsion.player.orplayer.e eVar = qVar.f46467d;
        if (eVar != null) {
            eVar.onPlayError(playError, qVar.f46469f);
        }
        Iterator it = qVar.f46475l.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onPlayError(playError, qVar.f46469f);
        }
        if (errorInfo.getCode() == ErrorCode.ERROR_DECODE_AUDIO) {
            qVar.prepare();
            qVar.play();
        }
    }

    public static final void B(q qVar) {
        if (qVar.f46481r) {
            return;
        }
        qVar.f46474k = true;
        if (qVar.f46480q && qVar.f46477n > 0) {
            sn.e.f72355a.a(qVar.f46464a, "aliyun onPrepare 内部的解码切换，已有播放进度，直接播放", true);
            qVar.seekTo(qVar.f46477n);
            qVar.play();
        } else {
            com.transsion.player.orplayer.e eVar = qVar.f46467d;
            if (eVar != null) {
                eVar.onPrepare(qVar.f46469f);
            }
            Iterator it = qVar.f46475l.iterator();
            while (it.hasNext()) {
                ((com.transsion.player.orplayer.e) it.next()).onPrepare(qVar.f46469f);
            }
        }
    }

    public static final void C(q qVar, InfoBean infoBean) {
        if (qVar.f46481r) {
            return;
        }
        long extraValue = infoBean.getExtraValue();
        if (infoBean.getCode() == InfoCode.CurrentPosition) {
            qVar.f46477n = extraValue;
            com.transsion.player.orplayer.e eVar = qVar.f46467d;
            if (eVar != null) {
                eVar.onProgress(extraValue, qVar.f46469f);
            }
            Iterator it = qVar.f46475l.iterator();
            while (it.hasNext()) {
                ((com.transsion.player.orplayer.e) it.next()).onProgress(extraValue, qVar.f46469f);
            }
        }
        if (infoBean.getCode() == InfoCode.LoopingStart) {
            com.transsion.player.orplayer.e eVar2 = qVar.f46467d;
            if (eVar2 != null) {
                eVar2.onLoopingStart();
            }
            Iterator it2 = qVar.f46475l.iterator();
            while (it2.hasNext()) {
                ((com.transsion.player.orplayer.e) it2.next()).onLoopingStart();
            }
        }
        if (infoBean.getCode() == InfoCode.BufferedPosition) {
            com.transsion.player.orplayer.e eVar3 = qVar.f46467d;
            if (eVar3 != null) {
                eVar3.onBufferedPosition(extraValue, qVar.f46469f);
            }
            Iterator it3 = qVar.f46475l.iterator();
            while (it3.hasNext()) {
                ((com.transsion.player.orplayer.e) it3.next()).onBufferedPosition(extraValue, qVar.f46469f);
            }
        }
        if (infoBean.getCode() == InfoCode.SwitchToSoftwareVideoDecoder) {
            sn.e.f72355a.e(qVar.f46464a, "aliyun 硬解失败，自动切换到软件", true);
        }
    }

    public static final void D(q qVar, int i10) {
        if (qVar.f46481r) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setOnStateChangedListener status:");
        sb2.append(i10);
        boolean z10 = i10 == 3;
        qVar.f46470g = z10;
        com.transsion.player.orplayer.e eVar = qVar.f46467d;
        if (eVar != null) {
            eVar.onIsPlayingChanged(z10);
        }
        Iterator it = qVar.f46475l.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onIsPlayingChanged(qVar.f46470g);
        }
        qVar.f46473j = i10 == 6;
        com.transsion.player.orplayer.c cVar = qVar.f46466c;
        if (cVar != null) {
            cVar.f(qVar.f46470g);
        }
        if (i10 == 3) {
            com.transsion.player.orplayer.e eVar2 = qVar.f46467d;
            if (eVar2 != null) {
                eVar2.onVideoStart(qVar.f46469f);
            }
            Iterator it2 = qVar.f46475l.iterator();
            while (it2.hasNext()) {
                ((com.transsion.player.orplayer.e) it2.next()).onVideoStart(qVar.f46469f);
            }
            return;
        }
        if (i10 == 4) {
            com.transsion.player.orplayer.e eVar3 = qVar.f46467d;
            if (eVar3 != null) {
                eVar3.onVideoPause(qVar.f46469f);
            }
            Iterator it3 = qVar.f46475l.iterator();
            while (it3.hasNext()) {
                ((com.transsion.player.orplayer.e) it3.next()).onVideoPause(qVar.f46469f);
            }
            return;
        }
        if (i10 != 6) {
            return;
        }
        com.transsion.player.orplayer.e eVar4 = qVar.f46467d;
        if (eVar4 != null) {
            eVar4.onCompletion(qVar.f46469f);
        }
        Iterator it4 = qVar.f46475l.iterator();
        while (it4.hasNext()) {
            ((com.transsion.player.orplayer.e) it4.next()).onCompletion(qVar.f46469f);
        }
    }

    public static final void E(q qVar) {
        if (qVar.f46481r) {
            return;
        }
        com.transsion.player.orplayer.e eVar = qVar.f46467d;
        if (eVar != null) {
            eVar.setOnSeekCompleteListener();
        }
        Iterator it = qVar.f46475l.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).setOnSeekCompleteListener();
        }
    }

    public static final void F(q qVar) {
        MediaInfo mediaInfo;
        List<TrackInfo> trackInfos;
        if (qVar.f46481r) {
            return;
        }
        AliPlayer aliPlayer = qVar.f46465b;
        if (aliPlayer != null && (mediaInfo = aliPlayer.getMediaInfo()) != null && (trackInfos = mediaInfo.getTrackInfos()) != null) {
            for (TrackInfo trackInfo : trackInfos) {
                sn.e.f72355a.a(qVar.f46464a, "setOnInfoListener onRenderFirstFrame " + com.blankj.utilcode.util.o.j(trackInfo), true);
                TrackInfo.Type type = trackInfo.mType;
                int i10 = type == null ? -1 : a.f46487a[type.ordinal()];
                if (i10 == 1) {
                    int i11 = trackInfo.videoBitrate;
                    qVar.f46478o = i11;
                    com.transsion.player.orplayer.e eVar = qVar.f46467d;
                    if (eVar != null) {
                        eVar.onTracksVideoBitrateChange(i11);
                    }
                    Iterator it = qVar.f46475l.iterator();
                    while (it.hasNext()) {
                        ((com.transsion.player.orplayer.e) it.next()).onTracksVideoBitrateChange(qVar.f46478o);
                    }
                } else if (i10 == 2) {
                    int i12 = trackInfo.videoBitrate;
                    qVar.f46479p = i12;
                    com.transsion.player.orplayer.e eVar2 = qVar.f46467d;
                    if (eVar2 != null) {
                        eVar2.onTracksAudioBitrateChange(i12);
                    }
                    Iterator it2 = qVar.f46475l.iterator();
                    while (it2.hasNext()) {
                        ((com.transsion.player.orplayer.e) it2.next()).onTracksAudioBitrateChange(qVar.f46479p);
                    }
                }
            }
        }
        int i13 = qVar.f46478o;
        int i14 = qVar.f46479p;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setOnInfoListener onRenderFirstFrame，videoBitrate:");
        sb2.append(i13);
        sb2.append(", audioBitrate:");
        sb2.append(i14);
        com.transsion.player.orplayer.e eVar3 = qVar.f46467d;
        if (eVar3 != null) {
            eVar3.onRenderFirstFrame();
        }
        Iterator it3 = qVar.f46475l.iterator();
        while (it3.hasNext()) {
            ((com.transsion.player.orplayer.e) it3.next()).onRenderFirstFrame();
        }
    }

    public static final void G(q qVar, int i10, int i11) {
        if (qVar.f46481r) {
            return;
        }
        com.transsion.player.orplayer.e eVar = qVar.f46467d;
        if (eVar != null) {
            eVar.onVideoSizeChanged(i10, i11);
        }
        Iterator it = qVar.f46475l.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onVideoSizeChanged(i10, i11);
        }
    }

    public final void H(final Function0 function0) {
        Handler handler = this.f46482s;
        if (handler == null || Intrinsics.c(Thread.currentThread(), handler.getLooper().getThread())) {
            function0.invoke();
        } else {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    q.I(function0);
                }
            });
        }
    }

    public static final void I(Function0 function0) {
        function0.invoke();
    }

    private final void J(hn.d dVar, boolean z10) {
        CacheConfig cacheConfig = new CacheConfig();
        cacheConfig.mEnable = z10;
        cacheConfig.mMaxDurationS = 120L;
        File externalCacheDir = this.f46476m.getExternalCacheDir();
        String absolutePath = externalCacheDir != null ? externalCacheDir.getAbsolutePath() : null;
        String str = absolutePath + File.separator + "video_cache";
        cacheConfig.mDir = str;
        cacheConfig.mMaxSizeMB = dVar.a();
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            aliPlayer.setCacheConfig(cacheConfig);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            AliPlayerGlobalSettings.enableLocalCache(z10, 0, str);
            AliPlayerGlobalSettings.setCacheUrlHashCallback(new AliPlayerGlobalSettings.OnGetUrlHashCallback() {
                @Override
                public final String getUrlHashCallback(String str2) {
                    return q.K(str2);
                }
            });
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public static final String K(String str) {
        try {
            URI uri = new URI(str);
            sn.d.a aVar = sn.d.f72353a;
            String string = new URI(uri.getScheme(), uri.getAuthority(), uri.getPath(), null, uri.getFragment()).toString();
            Intrinsics.g(string, "toString(...)");
            return aVar.a(string);
        } catch (Exception unused) {
            sn.d.a aVar2 = sn.d.f72353a;
            if (str == null) {
                str = "";
            }
            return aVar2.a(str);
        }
    }

    private final void v() {
        SurfaceHolder holder;
        SurfaceView surfaceView = this.f46485v;
        if (surfaceView != null && (holder = surfaceView.getHolder()) != null) {
            holder.removeCallback(this.f46483t);
        }
        this.f46485v = null;
        TextureView textureView = this.f46484u;
        if (textureView != null) {
            textureView.setSurfaceTextureListener(null);
        }
        this.f46484u = null;
    }

    private final boolean w(PlayError playError) {
        Integer errorCode;
        Integer errorCode2 = playError.getErrorCode();
        if ((errorCode2 == null || errorCode2.intValue() != 537133057) && ((errorCode = playError.getErrorCode()) == null || errorCode.intValue() != 537133058)) {
            return false;
        }
        if (this.f46480q) {
            sn.e.f72355a.a(this.f46464a, "aliyun 已经切过软解，还是出错不再处理", true);
            return false;
        }
        sn.e.f72355a.c(this.f46464a, "aliyun onError -- 解码失败，强制切到软解", true);
        com.transsion.player.orplayer.e eVar = this.f46467d;
        if (eVar != null) {
            eVar.onAliyunDecodeErrorChangeSoftwareDecoder(this.f46469f);
        }
        Iterator it = this.f46475l.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onAliyunDecodeErrorChangeSoftwareDecoder(this.f46469f);
        }
        stop();
        reset();
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            aliPlayer.enableHardwareDecoder(false);
        }
        gn.e eVar2 = this.f46469f;
        if (eVar2 != null) {
            setDataSource(eVar2);
            prepare();
        }
        this.f46480q = true;
        return true;
    }

    private final void x() {
        this.f46466c = new com.transsion.player.orplayer.c(new b(), new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return q.y(this.f46455a, ((Boolean) obj).booleanValue());
            }
        });
    }

    public static final Unit y(q qVar, boolean z10) {
        com.transsion.player.orplayer.e eVar = qVar.f46467d;
        if (eVar != null) {
            eVar.onFocusChange(z10);
        }
        Iterator it = qVar.f46475l.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onFocusChange(z10);
        }
        return Unit.f64096a;
    }

    private final void z(boolean z10) {
        hn.b bVar = hn.b.f61411a;
        J(bVar.a(), bVar.c() && z10);
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            aliPlayer.setOnRenderingStartListener(new IPlayer.OnRenderingStartListener() {
                @Override
                public final void onRenderingStart() {
                    q.F(this.f46456a);
                }
            });
        }
        AliPlayer aliPlayer2 = this.f46465b;
        if (aliPlayer2 != null) {
            aliPlayer2.setOnVideoSizeChangedListener(new IPlayer.OnVideoSizeChangedListener() {
                @Override
                public final void onVideoSizeChanged(int i10, int i11) {
                    q.G(this.f46457a, i10, i11);
                }
            });
        }
        AliPlayer aliPlayer3 = this.f46465b;
        if (aliPlayer3 != null) {
            aliPlayer3.setOnErrorListener(new IPlayer.OnErrorListener() {
                @Override
                public final void onError(ErrorInfo errorInfo) {
                    q.A(this.f46458a, errorInfo);
                }
            });
        }
        AliPlayer aliPlayer4 = this.f46465b;
        if (aliPlayer4 != null) {
            aliPlayer4.setOnLoadingStatusListener(new c());
        }
        AliPlayer aliPlayer5 = this.f46465b;
        if (aliPlayer5 != null) {
            aliPlayer5.setOnPreparedListener(new IPlayer.OnPreparedListener() {
                @Override
                public final void onPrepared() {
                    q.B(this.f46459a);
                }
            });
        }
        AliPlayer aliPlayer6 = this.f46465b;
        if (aliPlayer6 != null) {
            aliPlayer6.setOnInfoListener(new IPlayer.OnInfoListener() {
                @Override
                public final void onInfo(InfoBean infoBean) {
                    q.C(this.f46460a, infoBean);
                }
            });
        }
        AliPlayer aliPlayer7 = this.f46465b;
        if (aliPlayer7 != null) {
            aliPlayer7.setOnStateChangedListener(new IPlayer.OnStateChangedListener() {
                @Override
                public final void onStateChanged(int i10) {
                    q.D(this.f46461a, i10);
                }
            });
        }
        AliPlayer aliPlayer8 = this.f46465b;
        if (aliPlayer8 != null) {
            aliPlayer8.setOnSeekCompleteListener(new IPlayer.OnSeekCompleteListener() {
                @Override
                public final void onSeekComplete() {
                    q.E(this.f46462a);
                }
            });
        }
    }

    @Override
    public boolean addDataSource(gn.e eVar) {
        return f.b.a(this, eVar);
    }

    @Override
    public void addPlayerListener(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        if (this.f46475l.contains(listener)) {
            return;
        }
        this.f46475l.add(listener);
    }

    @Override
    public void changeTrackSelection(qn.d dVar, int i10) {
        f.b.c(this, dVar, i10);
    }

    @Override
    public void clearScreen() {
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            aliPlayer.clearScreen();
        }
    }

    @Override
    public void clearSurfaceOnly() {
        SurfaceTexture surfaceTexture;
        SurfaceHolder holder;
        Surface surface;
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            aliPlayer.setSurface(null);
        }
        SurfaceView surfaceView = this.f46485v;
        if (surfaceView != null && (holder = surfaceView.getHolder()) != null && (surface = holder.getSurface()) != null) {
            surface.release();
        }
        TextureView textureView = this.f46484u;
        if (textureView != null && (surfaceTexture = textureView.getSurfaceTexture()) != null) {
            surfaceTexture.release();
        }
        v();
    }

    @Override
    public gn.e currentMediaSource() {
        return this.f46469f;
    }

    @Override
    public void enableHardwareDecoder(boolean z10) {
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            aliPlayer.enableHardwareDecoder(z10);
        }
    }

    @Override
    public Pair getBitrate() {
        return new Pair(Integer.valueOf(this.f46478o), Integer.valueOf(this.f46479p));
    }

    @Override
    public long getCurrentPosition() {
        return this.f46477n;
    }

    @Override
    public qn.c getCurrentTracks() {
        return f.b.h(this);
    }

    @Override
    public qn.b getCurrentVideoFormat() {
        return f.b.i(this);
    }

    @Override
    public Object getDownloadBitrate() {
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            return aliPlayer.getOption(IPlayer.Option.DownloadBitrate);
        }
        return null;
    }

    @Override
    public long getDuration() {
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            return aliPlayer.getDuration();
        }
        return 0L;
    }

    @Override
    public int getVideoHeight() {
        AliPlayer aliPlayer = this.f46465b;
        return aliPlayer != null ? aliPlayer.getVideoHeight() : f.b.k(this);
    }

    @Override
    public int getVideoWidth() {
        AliPlayer aliPlayer = this.f46465b;
        return aliPlayer != null ? aliPlayer.getVideoWidth() : f.b.l(this);
    }

    @Override
    public Float getVolume() {
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            return Float.valueOf(aliPlayer.getVolume());
        }
        return null;
    }

    @Override
    public boolean isComplete() {
        return this.f46473j;
    }

    @Override
    public boolean isLoading() {
        return this.f46471h;
    }

    @Override
    public boolean isMute() {
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            return aliPlayer.isMute();
        }
        return false;
    }

    @Override
    public boolean isPlaying() {
        return this.f46470g;
    }

    @Override
    public boolean isPrepared() {
        return this.f46474k;
    }

    @Override
    public void pause() {
        com.transsion.player.orplayer.c cVar = this.f46466c;
        if (cVar != null) {
            cVar.g(true);
        }
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            aliPlayer.pause();
        }
        com.transsion.player.orplayer.c cVar2 = this.f46466c;
        if (cVar2 != null) {
            cVar2.b();
        }
    }

    @Override
    public void play() {
        com.transsion.player.orplayer.e eVar = this.f46467d;
        if (eVar != null) {
            eVar.initPlayer();
        }
        Iterator it = this.f46475l.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).initPlayer();
        }
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            aliPlayer.start();
        }
        com.transsion.player.orplayer.c cVar = this.f46466c;
        if (cVar != null) {
            cVar.g(false);
        }
        com.transsion.player.orplayer.c cVar2 = this.f46466c;
        if (cVar2 != null) {
            cVar2.e();
        }
    }

    @Override
    public void prepare() {
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            aliPlayer.prepare();
        }
        this.f46472i = false;
    }

    @Override
    public void release(String str) {
        f.b.o(this, str);
    }

    @Override
    public boolean removeDataSource(gn.e eVar) {
        return f.b.p(this, eVar);
    }

    @Override
    public void removePlayerListener(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        this.f46475l.remove(listener);
    }

    @Override
    public boolean requestForce() {
        return f.b.r(this);
    }

    @Override
    public void reset() {
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            aliPlayer.stop();
        }
        AliPlayer aliPlayer2 = this.f46465b;
        if (aliPlayer2 != null) {
            aliPlayer2.reset();
        }
        AliPlayer aliPlayer3 = this.f46465b;
        if (aliPlayer3 != null) {
            aliPlayer3.clearScreen();
        }
        com.transsion.player.orplayer.c cVar = this.f46466c;
        if (cVar != null) {
            cVar.b();
        }
        if (!this.f46472i) {
            com.transsion.player.orplayer.e eVar = this.f46467d;
            if (eVar != null) {
                eVar.onPlayerReset();
            }
            Iterator it = this.f46475l.iterator();
            while (it.hasNext()) {
                ((com.transsion.player.orplayer.e) it.next()).onPlayerReset();
            }
        }
        this.f46472i = true;
        this.f46474k = false;
        this.f46480q = false;
    }

    @Override
    public void seekTo(String str, long j10) {
        f.b.s(this, str, j10);
    }

    @Override
    public void setAutoPlay(boolean z10) {
    }

    @Override
    public void setDataSource(gn.e mediaSource) {
        Intrinsics.h(mediaSource, "mediaSource");
        UrlSource urlSource = new UrlSource();
        String strJ = mediaSource.j();
        this.f46468e = strJ;
        this.f46469f = mediaSource;
        urlSource.setUri(strJ);
        com.transsion.player.orplayer.e eVar = this.f46467d;
        if (eVar != null) {
            eVar.onSetDataSource();
        }
        Iterator it = this.f46475l.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onSetDataSource();
        }
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            aliPlayer.setDataSource(urlSource);
        }
        this.f46474k = false;
        this.f46480q = false;
    }

    @Override
    public void setLooping(boolean z10) {
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            aliPlayer.setLoop(z10);
        }
    }

    @Override
    public void setMute(boolean z10) {
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            aliPlayer.setMute(z10);
        }
    }

    @Override
    public void setPlayerConfig(hn.d vodConfig) {
        Intrinsics.h(vodConfig, "vodConfig");
        AliPlayer aliPlayer = this.f46465b;
        PlayerConfig config = aliPlayer != null ? aliPlayer.getConfig() : null;
        Intrinsics.f(config, "null cannot be cast to non-null type com.aliyun.player.nativeclass.PlayerConfig");
        config.mClearFrameWhenStop = vodConfig.b();
        config.mEnableLocalCache = vodConfig.j();
        config.mPositionTimerIntervalMs = vodConfig.k();
        config.mMaxBufferDuration = vodConfig.g();
        config.mHighBufferDuration = vodConfig.f();
        config.mStartBufferDuration = vodConfig.n();
        config.mNetworkRetryCount = vodConfig.m();
        config.mNetworkTimeout = vodConfig.h();
        config.mDisableAudio = vodConfig.c();
        config.mDisableVideo = vodConfig.d();
        AliPlayer aliPlayer2 = this.f46465b;
        if (aliPlayer2 != null) {
            aliPlayer2.setConfig(config);
        }
    }

    @Override
    public void setPlayerListener(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        this.f46467d = listener;
    }

    @Override
    public void setScaleMode(ScaleMode scaleMode) {
        Intrinsics.h(scaleMode, "scaleMode");
        int i10 = a.f46488b[scaleMode.ordinal()];
        if (i10 == 1) {
            AliPlayer aliPlayer = this.f46465b;
            if (aliPlayer != null) {
                aliPlayer.setScaleMode(IPlayer.ScaleMode.SCALE_ASPECT_FILL);
                return;
            }
            return;
        }
        if (i10 == 2) {
            AliPlayer aliPlayer2 = this.f46465b;
            if (aliPlayer2 != null) {
                aliPlayer2.setScaleMode(IPlayer.ScaleMode.SCALE_TO_FILL);
                return;
            }
            return;
        }
        if (i10 != 3) {
            throw new NoWhenBranchMatchedException();
        }
        AliPlayer aliPlayer3 = this.f46465b;
        if (aliPlayer3 != null) {
            aliPlayer3.setScaleMode(IPlayer.ScaleMode.SCALE_ASPECT_FIT);
        }
    }

    @Override
    public void setSpeed(float f10) {
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            aliPlayer.setSpeed(f10);
        }
    }

    @Override
    public void setSurfaceView(SurfaceView surfaceView) {
        SurfaceHolder holder;
        Surface surface;
        AliPlayer aliPlayer;
        SurfaceHolder holder2;
        v();
        this.f46485v = surfaceView;
        Thread threadCurrentThread = Thread.currentThread();
        if (surfaceView != null) {
            this.f46482s = threadCurrentThread instanceof HandlerThread ? new Handler(((HandlerThread) threadCurrentThread).getLooper()) : new Handler(Looper.getMainLooper());
        }
        if (surfaceView != null && (holder2 = surfaceView.getHolder()) != null) {
            holder2.addCallback(this.f46483t);
        }
        if (surfaceView == null || (holder = surfaceView.getHolder()) == null || (surface = holder.getSurface()) == null || !surface.isValid() || (aliPlayer = this.f46465b) == null) {
            return;
        }
        aliPlayer.setSurface(surface);
    }

    @Override
    public void setTextureView(TextureView textureView) {
        SurfaceTexture surfaceTexture;
        AliPlayer aliPlayer;
        v();
        this.f46484u = textureView;
        Thread threadCurrentThread = Thread.currentThread();
        if (this.f46485v != null) {
            this.f46482s = threadCurrentThread instanceof HandlerThread ? new Handler(((HandlerThread) threadCurrentThread).getLooper()) : new Handler(Looper.getMainLooper());
        }
        if (textureView != null) {
            textureView.setSurfaceTextureListener(this.f46486w);
        }
        if (textureView == null || (surfaceTexture = textureView.getSurfaceTexture()) == null) {
            return;
        }
        Surface surface = new Surface(surfaceTexture);
        if (!surface.isValid() || (aliPlayer = this.f46465b) == null) {
            return;
        }
        aliPlayer.setSurface(surface);
    }

    @Override
    public void setVipResolution(boolean z10, int i10) {
    }

    @Override
    public void setVolume(float f10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setVolume   volume:");
        sb2.append(f10);
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            aliPlayer.setVolume(RangesKt.k(f10, 0.0f, 2.0f));
        }
    }

    @Override
    public void stop() {
        this.f46468e = "";
        com.transsion.player.orplayer.c cVar = this.f46466c;
        if (cVar != null) {
            cVar.g(true);
        }
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            aliPlayer.stop();
        }
        com.transsion.player.orplayer.c cVar2 = this.f46466c;
        if (cVar2 != null) {
            cVar2.b();
        }
        this.f46480q = false;
    }

    @Override
    public void release() {
        if (this.f46481r) {
            return;
        }
        this.f46481r = true;
        com.transsion.player.orplayer.e eVar = this.f46467d;
        ArrayList arrayList = new ArrayList(this.f46475l);
        this.f46467d = null;
        this.f46475l.clear();
        this.f46468e = "";
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            aliPlayer.setOnRenderingStartListener(null);
        }
        AliPlayer aliPlayer2 = this.f46465b;
        if (aliPlayer2 != null) {
            aliPlayer2.setOnVideoSizeChangedListener(null);
        }
        AliPlayer aliPlayer3 = this.f46465b;
        if (aliPlayer3 != null) {
            aliPlayer3.setOnErrorListener(null);
        }
        AliPlayer aliPlayer4 = this.f46465b;
        if (aliPlayer4 != null) {
            aliPlayer4.setOnLoadingStatusListener(null);
        }
        AliPlayer aliPlayer5 = this.f46465b;
        if (aliPlayer5 != null) {
            aliPlayer5.setOnPreparedListener(null);
        }
        AliPlayer aliPlayer6 = this.f46465b;
        if (aliPlayer6 != null) {
            aliPlayer6.setOnInfoListener(null);
        }
        AliPlayer aliPlayer7 = this.f46465b;
        if (aliPlayer7 != null) {
            aliPlayer7.setOnStateChangedListener(null);
        }
        AliPlayer aliPlayer8 = this.f46465b;
        if (aliPlayer8 != null) {
            aliPlayer8.setOnSeekCompleteListener(null);
        }
        AliPlayer aliPlayer9 = this.f46465b;
        if (aliPlayer9 != null) {
            aliPlayer9.release();
        }
        this.f46465b = null;
        if (eVar != null) {
            com.transsion.player.orplayer.e.a.u(eVar, null, 1, null);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            com.transsion.player.orplayer.e.a.u((com.transsion.player.orplayer.e) it.next(), null, 1, null);
        }
        com.transsion.player.orplayer.c cVar = this.f46466c;
        if (cVar != null) {
            cVar.b();
        }
        v();
        this.f46474k = false;
        this.f46480q = false;
    }

    @Override
    public void seekTo(long j10) {
        AliPlayer aliPlayer = this.f46465b;
        if (aliPlayer != null) {
            aliPlayer.setMaxAccurateSeekDelta(150000);
        }
        AliPlayer aliPlayer2 = this.f46465b;
        if (aliPlayer2 != null) {
            aliPlayer2.seekTo(j10, IPlayer.SeekMode.Accurate);
        }
    }
}
