package com.transsion.player.ui.longvideo;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import com.cloud.config.utils.XLogUtil;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.f;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.player.ui.ORPlayerView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import jn.e;
import jn.n;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import on.e0;
import on.z;
import qn.b;
import qn.c;
import qn.d;

@Metadata(d1 = {"\u0000Ð\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u001b\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0005\u0010\tB#\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0005\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ'\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0011\u0010\u001f\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\rH\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0012H\u0014¢\u0006\u0004\b(\u0010)J\u0017\u0010+\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020*H\u0016¢\u0006\u0004\b+\u0010,J\u0017\u0010-\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020*H\u0016¢\u0006\u0004\b-\u0010,J\u0019\u00100\u001a\u00020\u00122\b\u0010/\u001a\u0004\u0018\u00010.H\u0016¢\u0006\u0004\b0\u00101J\u0019\u00104\u001a\u00020\u00122\b\u00103\u001a\u0004\u0018\u000102H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u0012H\u0016¢\u0006\u0004\b6\u0010)J\u0017\u00107\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020*H\u0016¢\u0006\u0004\b7\u0010,J\u0017\u0010:\u001a\u00020\u00122\u0006\u00109\u001a\u000208H\u0016¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\u0012H\u0016¢\u0006\u0004\b<\u0010)J\u000f\u0010=\u001a\u00020\u0012H\u0016¢\u0006\u0004\b=\u0010)J\u000f\u0010>\u001a\u00020\u0012H\u0016¢\u0006\u0004\b>\u0010)J\u000f\u0010?\u001a\u00020\u0012H\u0016¢\u0006\u0004\b?\u0010)J\u000f\u0010@\u001a\u00020\u0012H\u0016¢\u0006\u0004\b@\u0010)J\u0019\u0010@\u001a\u00020\u00122\b\u0010B\u001a\u0004\u0018\u00010AH\u0016¢\u0006\u0004\b@\u0010CJ\u000f\u0010D\u001a\u00020\u0012H\u0016¢\u0006\u0004\bD\u0010)J\u0017\u0010G\u001a\u00020\u00122\u0006\u0010F\u001a\u00020EH\u0016¢\u0006\u0004\bG\u0010HJ\u000f\u0010I\u001a\u00020EH\u0016¢\u0006\u0004\bI\u0010JJ\u000f\u0010K\u001a\u00020\rH\u0016¢\u0006\u0004\bK\u0010\u000fJ\u000f\u0010L\u001a\u00020\rH\u0016¢\u0006\u0004\bL\u0010\u000fJ\u0017\u0010N\u001a\u00020\u00122\u0006\u0010M\u001a\u00020\rH\u0016¢\u0006\u0004\bN\u0010'J\u000f\u0010O\u001a\u00020\rH\u0016¢\u0006\u0004\bO\u0010\u000fJ\u0017\u0010R\u001a\u00020\u00122\u0006\u0010Q\u001a\u00020PH\u0016¢\u0006\u0004\bR\u0010SJ\u0011\u0010T\u001a\u0004\u0018\u00010PH\u0016¢\u0006\u0004\bT\u0010UJ\u0017\u0010W\u001a\u00020\u00122\u0006\u0010V\u001a\u00020\rH\u0016¢\u0006\u0004\bW\u0010'J\u0017\u0010X\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\rH\u0016¢\u0006\u0004\bX\u0010'J\u001b\u0010Z\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0YH\u0016¢\u0006\u0004\bZ\u0010[J\u0011\u0010]\u001a\u0004\u0018\u00010\\H\u0016¢\u0006\u0004\b]\u0010^J\u000f\u0010_\u001a\u00020\rH\u0016¢\u0006\u0004\b_\u0010\u000fJ\u0011\u0010a\u001a\u0004\u0018\u00010`H\u0016¢\u0006\u0004\ba\u0010bJ\u000f\u0010c\u001a\u00020EH\u0016¢\u0006\u0004\bc\u0010JJ\u0011\u0010e\u001a\u0004\u0018\u00010dH\u0016¢\u0006\u0004\be\u0010fJ\u001f\u0010j\u001a\u00020\u00122\u0006\u0010h\u001a\u00020g2\u0006\u0010i\u001a\u00020\nH\u0016¢\u0006\u0004\bj\u0010kJ\u0017\u0010m\u001a\u00020\u00122\u0006\u0010l\u001a\u00020PH\u0016¢\u0006\u0004\bm\u0010SJ\u0017\u0010p\u001a\u00020\u00122\u0006\u0010o\u001a\u00020nH\u0016¢\u0006\u0004\bp\u0010qJ\u001f\u0010t\u001a\u00020\u00122\u0006\u0010r\u001a\u00020\r2\u0006\u0010s\u001a\u00020\nH\u0016¢\u0006\u0004\bt\u0010uR\u0018\u0010x\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010wR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010zR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010{R\u0016\u0010~\u001a\u00020|8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010}R\u0019\u0010\u0082\u0001\u001a\u00020\u007f8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001¨\u0006\u0083\u0001"}, d2 = {"Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;", "Landroid/widget/FrameLayout;", "Lcom/transsion/player/ui/longvideo/a;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Z", "Landroid/view/View;", "gestureView", "", "c", "(Landroid/view/View;)V", "Lhn/a;", XLogUtil.TAG, "Lcom/transsion/player/ui/ORPlayerView;", "playerView", "initLongVodPlayer", "(Lhn/a;Lcom/transsion/player/ui/ORPlayerView;)V", "Lcom/transsion/player/orplayer/f;", "orPlayer", "setExistPlayer", "(Lhn/a;Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;)V", "getOrPlayer", "()Lcom/transsion/player/orplayer/f;", "Lcom/transsion/player/ui/longvideo/a$b;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setGestureListener", "(Lcom/transsion/player/ui/longvideo/a$b;)V", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "enableGesture", "(Z)V", "onAttachedToWindow", "()V", "Lcom/transsion/player/orplayer/e;", "addPlayerListener", "(Lcom/transsion/player/orplayer/e;)V", "removePlayerListener", "Landroid/view/SurfaceView;", "surfaceView", "setSurfaceView", "(Landroid/view/SurfaceView;)V", "Landroid/view/TextureView;", "textureView", "setTextureView", "(Landroid/view/TextureView;)V", "clearSurfaceOnly", "setPlayerListener", "Lgn/e;", "mediaSource", "setDataSource", "(Lgn/e;)V", "prepare", MediaItem.MUSIC_FLOAT_STATE_PLAY, "pause", "stop", "release", "", "id", "(Ljava/lang/String;)V", "reset", "", "mills", "seekTo", "(J)V", "getDuration", "()J", "isPlaying", "isComplete", "isLoop", "setLooping", "isMute", "", "volume", "setVolume", "(F)V", "getVolume", "()Ljava/lang/Float;", "isAutoPlay", "setAutoPlay", "enableHardwareDecoder", "Lkotlin/Pair;", "getBitrate", "()Lkotlin/Pair;", "", "getDownloadBitrate", "()Ljava/lang/Object;", "requestForce", "Lqn/c;", "getCurrentTracks", "()Lqn/c;", "getCurrentPosition", "Lqn/b;", "getCurrentVideoFormat", "()Lqn/b;", "Lqn/d;", "mediaTrackGroup", "index", "changeTrackSelection", "(Lqn/d;I)V", "speed", "setSpeed", "Lcom/transsion/player/enum/ScaleMode;", "scaleMode", "setScaleMode", "(Lcom/transsion/player/enum/ScaleMode;)V", "isVipSubscriber", "vipResolution", "setVipResolution", "(ZI)V", "a", "Lcom/transsion/player/ui/longvideo/a$b;", "gestureListener", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/player/orplayer/f;", "Lhn/a;", "Ljn/e;", "Ljn/e;", "gestureControl", "Ljn/n;", "e", "Ljn/n;", "volumeControl", "PlayerView_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ORLongVodPlayerView extends FrameLayout implements com.transsion.player.ui.longvideo.a {

    private com.transsion.player.ui.longvideo.a.b gestureListener;

    private f orPlayer;

    private hn.a config;

    private e gestureControl;

    private n volumeControl;

    public static final class a implements e.a {

        private boolean f46576a;

        private boolean f46577b;

        private int f46578c;

        private float f46579d;

        a() {
        }

        @Override
        public void a() {
            com.transsion.player.ui.longvideo.a.b bVar = ORLongVodPlayerView.this.gestureListener;
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override
        public void b(float f10, float f11) {
            com.transsion.player.ui.longvideo.a.b bVar = ORLongVodPlayerView.this.gestureListener;
            if (bVar != null) {
                bVar.b(f10, f11);
            }
        }

        @Override
        public void c(float f10, float f11) {
            n nVar = null;
            if (!this.f46577b) {
                n nVar2 = ORLongVodPlayerView.this.volumeControl;
                if (nVar2 == null) {
                    Intrinsics.y("volumeControl");
                    nVar2 = null;
                }
                nVar2.f(false);
                n nVar3 = ORLongVodPlayerView.this.volumeControl;
                if (nVar3 == null) {
                    Intrinsics.y("volumeControl");
                    nVar3 = null;
                }
                this.f46579d = nVar3.b();
                this.f46577b = true;
            }
            float height = ((f10 - f11) * 2) / ORLongVodPlayerView.this.getHeight();
            n nVar4 = ORLongVodPlayerView.this.volumeControl;
            if (nVar4 == null) {
                Intrinsics.y("volumeControl");
            } else {
                nVar = nVar4;
            }
            nVar.a(this.f46579d, height);
        }

        @Override
        public void d(float f10, float f11) {
            n nVar = null;
            if (!this.f46576a) {
                n nVar2 = ORLongVodPlayerView.this.volumeControl;
                if (nVar2 == null) {
                    Intrinsics.y("volumeControl");
                    nVar2 = null;
                }
                nVar2.f(false);
                n nVar3 = ORLongVodPlayerView.this.volumeControl;
                if (nVar3 == null) {
                    Intrinsics.y("volumeControl");
                    nVar3 = null;
                }
                this.f46578c = nVar3.c();
                this.f46576a = true;
            }
            n nVar4 = ORLongVodPlayerView.this.volumeControl;
            if (nVar4 == null) {
                Intrinsics.y("volumeControl");
            } else {
                nVar = nVar4;
            }
            nVar.d(f10, f11, ORLongVodPlayerView.this.getHeight());
        }

        @Override
        public void e() {
            com.transsion.player.ui.longvideo.a.b bVar = ORLongVodPlayerView.this.gestureListener;
            if (bVar != null) {
                bVar.c();
            }
            this.f46576a = false;
            this.f46577b = false;
        }

        @Override
        public void onDoubleTap(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            com.transsion.player.ui.longvideo.a.b bVar = ORLongVodPlayerView.this.gestureListener;
            if (bVar != null) {
                bVar.onDoubleTap(e10);
            }
        }

        @Override
        public void onLongPress(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            com.transsion.player.ui.longvideo.a.b bVar = ORLongVodPlayerView.this.gestureListener;
            if (bVar != null) {
                bVar.onLongPress(e10);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ORLongVodPlayerView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    private final void c(View gestureView) {
        n.a aVar = n.f63232a;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        this.volumeControl = aVar.a(context, this);
        e eVar = new e(getContext(), gestureView);
        this.gestureControl = eVar;
        eVar.s(new a());
    }

    private final boolean d() {
        return getChildCount() == 0;
    }

    @Override
    public boolean addDataSource(gn.e eVar) {
        return com.transsion.player.ui.longvideo.a.C0617a.a(this, eVar);
    }

    @Override
    public void addPlayerListener(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.addPlayerListener(listener);
        }
    }

    @Override
    public void changeTrackSelection(d mediaTrackGroup, int index) {
        Intrinsics.h(mediaTrackGroup, "mediaTrackGroup");
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.changeTrackSelection(mediaTrackGroup, index);
        }
    }

    @Override
    public void clearScreen() {
        com.transsion.player.ui.longvideo.a.C0617a.b(this);
    }

    @Override
    public void clearSurfaceOnly() {
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.clearSurfaceOnly();
        }
    }

    @Override
    public gn.e currentMediaSource() {
        return com.transsion.player.ui.longvideo.a.C0617a.c(this);
    }

    @Override
    public void enableGesture(boolean enable) {
        e eVar = this.gestureControl;
        if (eVar == null) {
            Intrinsics.y("gestureControl");
            eVar = null;
        }
        eVar.l(enable);
    }

    @Override
    public void enableHardwareDecoder(boolean enable) {
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.enableHardwareDecoder(enable);
        }
    }

    @Override
    public Pair<Integer, Integer> getBitrate() {
        Pair<Integer, Integer> bitrate;
        f fVar = this.orPlayer;
        return (fVar == null || (bitrate = fVar.getBitrate()) == null) ? new Pair<>(0, 0) : bitrate;
    }

    @Override
    public long getCurrentPosition() {
        f fVar = this.orPlayer;
        if (fVar != null) {
            return fVar.getCurrentPosition();
        }
        return 0L;
    }

    @Override
    public c getCurrentTracks() {
        f fVar = this.orPlayer;
        if (fVar != null) {
            return fVar.getCurrentTracks();
        }
        return null;
    }

    @Override
    public b getCurrentVideoFormat() {
        f fVar = this.orPlayer;
        if (fVar != null) {
            return fVar.getCurrentVideoFormat();
        }
        return null;
    }

    @Override
    public Object getDownloadBitrate() {
        f fVar = this.orPlayer;
        if (fVar != null) {
            return fVar.getDownloadBitrate();
        }
        return null;
    }

    @Override
    public long getDuration() {
        f fVar = this.orPlayer;
        if (fVar != null) {
            return fVar.getDuration();
        }
        return 0L;
    }

    @Override
    public f getOrPlayer() {
        return this.orPlayer;
    }

    @Override
    public int getVideoHeight() {
        return com.transsion.player.ui.longvideo.a.C0617a.d(this);
    }

    @Override
    public int getVideoWidth() {
        return com.transsion.player.ui.longvideo.a.C0617a.e(this);
    }

    @Override
    public Float getVolume() {
        f fVar = this.orPlayer;
        if (fVar != null) {
            return fVar.getVolume();
        }
        return null;
    }

    @Override
    public void initLongVodPlayer(hn.a config, ORPlayerView playerView) {
        Intrinsics.h(config, "config");
        Intrinsics.h(playerView, "playerView");
        this.config = config;
        f fVarM = e0.f67859a.m();
        fVarM.setSpeed(config.b());
        fVarM.setScaleMode(config.a());
        fVarM.setPlayerConfig(config.d());
        fVarM.setVolume(1.0f);
        if (config.c()) {
            fVarM.setSurfaceView(playerView.getSurface());
        } else {
            fVarM.setTextureView(playerView.getTextureView());
        }
        this.orPlayer = fVarM;
        n nVar = this.volumeControl;
        if (nVar == null) {
            Intrinsics.y("volumeControl");
            nVar = null;
        }
        nVar.e(this.orPlayer);
        addView(playerView, 0);
    }

    @Override
    public boolean isComplete() {
        f fVar = this.orPlayer;
        if (fVar != null) {
            return fVar.isComplete();
        }
        return false;
    }

    @Override
    public boolean isLoading() {
        return com.transsion.player.ui.longvideo.a.C0617a.f(this);
    }

    @Override
    public boolean isMute() {
        f fVar = this.orPlayer;
        if (fVar != null) {
            return fVar.isMute();
        }
        return false;
    }

    @Override
    public boolean isPlaying() {
        f fVar = this.orPlayer;
        if (fVar != null) {
            return fVar.isPlaying();
        }
        return false;
    }

    @Override
    public boolean isPrepared() {
        return com.transsion.player.ui.longvideo.a.C0617a.g(this);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setFocusableInTouchMode(true);
        requestFocus();
    }

    @Override
    public void pause() {
        f fVar;
        if (d() || (fVar = this.orPlayer) == null) {
            return;
        }
        fVar.pause();
    }

    @Override
    public void play() {
        f fVar;
        if (d() || (fVar = this.orPlayer) == null) {
            return;
        }
        fVar.play();
    }

    @Override
    public void prepare() {
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.prepare();
        }
    }

    @Override
    public void release() {
        f fVar;
        if (!d() && (fVar = this.orPlayer) != null) {
            fVar.release();
        }
        if (getChildAt(0) instanceof ORPlayerView) {
            removeViewAt(0);
        }
    }

    @Override
    public boolean removeDataSource(gn.e eVar) {
        return com.transsion.player.ui.longvideo.a.C0617a.i(this, eVar);
    }

    @Override
    public void removePlayerListener(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.removePlayerListener(listener);
        }
    }

    @Override
    public boolean requestForce() {
        f fVar = this.orPlayer;
        if (fVar != null) {
            return fVar.requestForce();
        }
        return false;
    }

    @Override
    public void reset() {
        f fVar;
        if (d() || (fVar = this.orPlayer) == null) {
            return;
        }
        fVar.reset();
    }

    @Override
    public void seekTo(String str, long j10) {
        com.transsion.player.ui.longvideo.a.C0617a.j(this, str, j10);
    }

    public void seekToDefaultPosition() {
        com.transsion.player.ui.longvideo.a.C0617a.k(this);
    }

    @Override
    public void setAutoPlay(boolean isAutoPlay) {
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.setAutoPlay(isAutoPlay);
        }
    }

    @Override
    public void setDataSource(gn.e mediaSource) {
        Intrinsics.h(mediaSource, "mediaSource");
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.setDataSource(mediaSource);
        }
    }

    public void setErrorInterceptor(z zVar) {
        com.transsion.player.ui.longvideo.a.C0617a.l(this, zVar);
    }

    @Override
    public void setExistPlayer(hn.a config, f orPlayer, ORPlayerView playerView) {
        Intrinsics.h(config, "config");
        Intrinsics.h(orPlayer, "orPlayer");
        Intrinsics.h(playerView, "playerView");
        this.orPlayer = orPlayer;
        if (config.c()) {
            orPlayer.setSurfaceView(playerView.getSurface());
        } else {
            orPlayer.setTextureView(playerView.getTextureView());
        }
        n nVar = this.volumeControl;
        if (nVar == null) {
            Intrinsics.y("volumeControl");
            nVar = null;
        }
        nVar.e(orPlayer);
        addView(playerView, 0);
    }

    @Override
    public void setGestureListener(com.transsion.player.ui.longvideo.a.b listener) {
        Intrinsics.h(listener, "listener");
        this.gestureListener = listener;
    }

    @Override
    public void setLooping(boolean isLoop) {
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.setLooping(isLoop);
        }
    }

    @Override
    public void setMute(boolean z10) {
        com.transsion.player.ui.longvideo.a.C0617a.m(this, z10);
    }

    @Override
    public void setPlayerConfig(hn.d dVar) {
        com.transsion.player.ui.longvideo.a.C0617a.n(this, dVar);
    }

    @Override
    public void setPlayerListener(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.setPlayerListener(listener);
        }
    }

    @Override
    public void setScaleMode(ScaleMode scaleMode) {
        Intrinsics.h(scaleMode, "scaleMode");
        com.transsion.player.ui.longvideo.a.C0617a.o(this, scaleMode);
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.setScaleMode(scaleMode);
        }
    }

    @Override
    public void setSpeed(float speed) {
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.setSpeed(speed);
        }
    }

    @Override
    public void setSurfaceView(SurfaceView surfaceView) {
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.setSurfaceView(surfaceView);
        }
    }

    @Override
    public void setTextureView(TextureView textureView) {
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.setTextureView(textureView);
        }
    }

    @Override
    public void setVipResolution(boolean isVipSubscriber, int vipResolution) {
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.setVipResolution(isVipSubscriber, vipResolution);
        }
    }

    @Override
    public void setVolume(float volume) {
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.setVolume(volume);
        }
    }

    @Override
    public void stop() {
        f fVar;
        if (d() || (fVar = this.orPlayer) == null) {
            return;
        }
        fVar.stop();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ORLongVodPlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    @Override
    public void seekTo(long mills) {
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.seekTo(mills);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ORLongVodPlayerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        c(this);
    }

    @Override
    public void release(String id2) {
        f fVar;
        com.transsion.player.ui.longvideo.a.C0617a.h(this, id2);
        if (!d() && (fVar = this.orPlayer) != null) {
            fVar.release(id2);
        }
        if (getChildAt(0) instanceof ORPlayerView) {
            removeViewAt(0);
        }
    }
}
