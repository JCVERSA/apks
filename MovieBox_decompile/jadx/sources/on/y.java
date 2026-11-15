package on;

import android.app.Application;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.view.SurfaceView;
import android.view.TextureView;
import com.blankj.utilcode.util.Utils;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.p007enum.ScaleMode;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class y implements com.transsion.player.orplayer.f, com.transsion.player.orplayer.e {

    public static final a f67917j = new a(null);

    private static final Thread.UncaughtExceptionHandler f67918k = new Thread.UncaughtExceptionHandler() {
        @Override
        public final void uncaughtException(Thread thread, Throwable th2) {
            y.F(thread, th2);
        }
    };

    private final HandlerThread f67919a;

    private final Handler f67920b;

    private com.transsion.player.orplayer.f f67921c;

    private volatile long f67922d;

    private volatile com.transsion.player.orplayer.e f67923e;

    private CopyOnWriteArrayList f67924f;

    private volatile gn.e f67925g;

    private long f67926h;

    private final AtomicBoolean f67927i;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final y a() {
            return new y(null);
        }

        private a() {
        }
    }

    public y(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static final Unit A(y yVar, com.transsion.player.orplayer.e eVar) {
        yVar.f67924f.add(eVar);
        yVar.E("addPlayerListener:" + eVar);
        return Unit.f64096a;
    }

    public static final Unit B(y yVar) {
        com.transsion.player.orplayer.f fVarD = yVar.D();
        if (fVarD != null) {
            fVarD.clearScreen();
        }
        yVar.E("clearScreen  mediaSource:" + yVar.f67925g);
        return Unit.f64096a;
    }

    public static final Unit C(y yVar, boolean z10) {
        com.transsion.player.orplayer.f fVarD = yVar.D();
        if (fVarD != null) {
            fVarD.enableHardwareDecoder(z10);
        }
        return Unit.f64096a;
    }

    private final com.transsion.player.orplayer.f D() {
        return this.f67921c;
    }

    private final void E(String str) {
        sn.e eVar = sn.e.f72355a;
        int iHashCode = hashCode();
        com.transsion.player.orplayer.f fVar = this.f67921c;
        eVar.a("TnPlayer", "this@" + iHashCode + "  player@" + (fVar != null ? fVar.hashCode() : 0) + "  " + str, true);
    }

    public static final void F(Thread thread, Throwable th2) {
        sn.e.f72355a.c("TnPlayer", "uncaughtException:" + th2, true);
    }

    public static final Unit G(y yVar) {
        com.transsion.player.orplayer.f fVarD = yVar.D();
        if (fVarD != null) {
            fVarD.pause();
        }
        yVar.E("pause:" + yVar.f67925g);
        return Unit.f64096a;
    }

    public static final Unit H(y yVar) {
        com.transsion.player.orplayer.f fVarD = yVar.D();
        if (fVarD != null) {
            fVarD.play();
        }
        yVar.E("play:" + yVar.f67925g);
        return Unit.f64096a;
    }

    public static final Unit I(y yVar) {
        com.transsion.player.orplayer.f fVarD = yVar.D();
        if (fVarD != null) {
            fVarD.prepare();
        }
        yVar.E("prepare:" + yVar.f67925g);
        return Unit.f64096a;
    }

    public static final Unit J(y yVar) {
        yVar.f67926h = 0L;
        yVar.f67927i.set(true);
        com.transsion.player.orplayer.f fVarD = yVar.D();
        if (fVarD != null) {
            fVarD.stop();
        }
        if (e0.f67859a.i()) {
            if (f0.f67871a.a(yVar)) {
                com.transsion.player.orplayer.f fVarD2 = yVar.D();
                if (fVarD2 != null) {
                    fVarD2.release();
                }
                HandlerThread handlerThread = yVar.f67919a;
                if (handlerThread != null) {
                    handlerThread.quitSafely();
                }
                HandlerThread handlerThread2 = yVar.f67919a;
                if (handlerThread2 != null) {
                    handlerThread2.setUncaughtExceptionHandler(null);
                }
                yVar.f67920b.removeCallbacksAndMessages(null);
            } else {
                com.transsion.player.orplayer.f fVarD3 = yVar.D();
                if (fVarD3 != null) {
                    fVarD3.reset();
                }
                com.transsion.player.orplayer.f fVarD4 = yVar.D();
                if (fVarD4 != null) {
                    fVarD4.clearScreen();
                }
            }
            yVar.E(" release:" + yVar.f67925g);
        } else {
            com.transsion.player.orplayer.f fVarD5 = yVar.D();
            if (fVarD5 != null) {
                fVarD5.reset();
            }
            yVar.E(" reset:" + yVar.f67925g);
        }
        yVar.f67923e = null;
        return Unit.f64096a;
    }

    public static final Unit K(y yVar, com.transsion.player.orplayer.e eVar) {
        yVar.f67924f.remove(eVar);
        yVar.E("removePlayerListener:" + eVar);
        return Unit.f64096a;
    }

    public static final Unit L(y yVar) {
        yVar.E("reset:" + yVar.f67925g);
        yVar.f67926h = 0L;
        yVar.f67927i.set(true);
        com.transsion.player.orplayer.f fVarD = yVar.D();
        if (fVarD != null) {
            fVarD.clearScreen();
        }
        com.transsion.player.orplayer.f fVarD2 = yVar.D();
        if (fVarD2 != null) {
            fVarD2.reset();
        }
        return Unit.f64096a;
    }

    public static final void N(Function0 function0) {
        function0.invoke();
    }

    public static final Unit O(y yVar, long j10) {
        com.transsion.player.orplayer.f fVarD = yVar.D();
        if (fVarD != null) {
            fVarD.seekTo(j10);
        }
        yVar.E(" seekTo:" + j10 + "  mediaSource:" + yVar.f67925g);
        return Unit.f64096a;
    }

    public static final Unit P(y yVar, boolean z10) {
        com.transsion.player.orplayer.f fVarD = yVar.D();
        if (fVarD != null) {
            fVarD.setAutoPlay(z10);
        }
        yVar.E("setAutoPlay:" + z10 + "  mediaSource:" + yVar.f67925g);
        return Unit.f64096a;
    }

    public static final Unit Q(y yVar, gn.e eVar) {
        yVar.f67925g = eVar;
        yVar.f67922d = 0L;
        yVar.f67926h = 0L;
        yVar.f67927i.set(true);
        com.transsion.player.orplayer.f fVarD = yVar.D();
        if (fVarD != null) {
            fVarD.setDataSource(eVar);
        }
        yVar.E("setDataSource:" + eVar);
        return Unit.f64096a;
    }

    public static final Unit R(y yVar, boolean z10) {
        com.transsion.player.orplayer.f fVarD = yVar.D();
        if (fVarD != null) {
            fVarD.setLooping(z10);
        }
        yVar.E("setLooping:" + z10 + "  mediaSource:" + yVar.f67925g);
        return Unit.f64096a;
    }

    public static final Unit S(y yVar, hn.d dVar) {
        com.transsion.player.orplayer.f fVarD = yVar.D();
        if (fVarD != null) {
            fVarD.setPlayerConfig(dVar);
        }
        return Unit.f64096a;
    }

    public static final Unit T(y yVar, com.transsion.player.orplayer.e eVar) {
        yVar.f67923e = eVar;
        yVar.E("setPlayerListener:" + eVar);
        return Unit.f64096a;
    }

    public static final Unit U(y yVar, float f10) {
        com.transsion.player.orplayer.f fVarD = yVar.D();
        if (fVarD != null) {
            fVarD.setSpeed(f10);
        }
        return Unit.f64096a;
    }

    public static final Unit V(y yVar, SurfaceView surfaceView) {
        com.transsion.player.orplayer.f fVarD = yVar.D();
        if (fVarD != null) {
            fVarD.setSurfaceView(surfaceView);
        }
        yVar.E("setSurfaceView:" + surfaceView);
        return Unit.f64096a;
    }

    public static final Unit W(y yVar, TextureView textureView) {
        com.transsion.player.orplayer.f fVarD = yVar.D();
        if (fVarD != null) {
            fVarD.setTextureView(textureView);
        }
        yVar.E("setTextureView:" + textureView);
        return Unit.f64096a;
    }

    public static final Unit X(y yVar, float f10) {
        com.transsion.player.orplayer.f fVarD = yVar.D();
        if (fVarD != null) {
            fVarD.setVolume(f10);
        }
        yVar.E("setVolume:" + f10 + "  mediaSource:" + yVar.f67925g);
        return Unit.f64096a;
    }

    public static final Unit Y(y yVar) {
        com.transsion.player.orplayer.f fVarD = yVar.D();
        if (fVarD != null) {
            fVarD.stop();
        }
        yVar.E("stop:" + yVar.f67925g);
        return Unit.f64096a;
    }

    public static final Unit z(y yVar) {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        com.transsion.player.orplayer.f fVarA = new com.transsion.player.orplayer.f.a(applicationA).b(new hn.d(null, false, 0, 0, 0, 0, 0, 0, 0L, 0, 0, false, false, false, false, false, null, 126975, null)).a();
        fVarA.setLooping(false);
        fVarA.setAutoPlay(false);
        fVarA.setPlayerListener(yVar);
        yVar.f67921c = fVarA;
        yVar.E("init player:" + fVarA);
        return Unit.f64096a;
    }

    public final void M(final Function0 action) {
        Intrinsics.h(action, "action");
        if (Intrinsics.c(Thread.currentThread(), this.f67920b.getLooper().getThread())) {
            action.invoke();
            return;
        }
        HandlerThread handlerThread = this.f67919a;
        if (handlerThread == null || !handlerThread.isAlive()) {
            E("runOnPlayerThread handlerThread.isAlive:false");
        } else {
            this.f67920b.post(new Runnable() {
                @Override
                public final void run() {
                    y.N(action);
                }
            });
        }
    }

    @Override
    public boolean addDataSource(gn.e mediaSource) {
        Intrinsics.h(mediaSource, "mediaSource");
        setDataSource(mediaSource);
        return true;
    }

    @Override
    public void addPlayerListener(final com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        if (this.f67924f.contains(listener)) {
            return;
        }
        M(new Function0() {
            @Override
            public final Object invoke() {
                return y.A(this.f67857a, listener);
            }
        });
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, qn.d dVar) {
        com.transsion.player.orplayer.e.a.a(this, z10, i10, i11, dVar);
    }

    @Override
    public void changeTrackSelection(qn.d mediaTrackGroup, int i10) {
        Intrinsics.h(mediaTrackGroup, "mediaTrackGroup");
        com.transsion.player.orplayer.f fVarD = D();
        if (fVarD != null) {
            fVarD.changeTrackSelection(mediaTrackGroup, i10);
        }
    }

    @Override
    public void clearScreen() {
        M(new Function0() {
            @Override
            public final Object invoke() {
                return y.B(this.f67873a);
            }
        });
    }

    @Override
    public void clearSurfaceOnly() {
        com.transsion.player.orplayer.f fVarD = D();
        if (fVarD != null) {
            fVarD.clearSurfaceOnly();
        }
    }

    @Override
    public gn.e currentMediaSource() {
        return com.transsion.player.orplayer.f.b.f(this);
    }

    @Override
    public void enableHardwareDecoder(final boolean z10) {
        M(new Function0() {
            @Override
            public final Object invoke() {
                return y.C(this.f67895a, z10);
            }
        });
    }

    @Override
    public Pair getBitrate() {
        Pair bitrate;
        com.transsion.player.orplayer.f fVarD = D();
        return (fVarD == null || (bitrate = fVarD.getBitrate()) == null) ? new Pair(0, 0) : bitrate;
    }

    @Override
    public long getCurrentPosition() {
        com.transsion.player.orplayer.f fVarD = D();
        if (fVarD != null) {
            return fVarD.getCurrentPosition();
        }
        return 0L;
    }

    @Override
    public qn.c getCurrentTracks() {
        com.transsion.player.orplayer.f fVarD = D();
        if (fVarD != null) {
            return fVarD.getCurrentTracks();
        }
        return null;
    }

    @Override
    public qn.b getCurrentVideoFormat() {
        com.transsion.player.orplayer.f fVarD = D();
        if (fVarD != null) {
            return fVarD.getCurrentVideoFormat();
        }
        return null;
    }

    @Override
    public Object getDownloadBitrate() {
        com.transsion.player.orplayer.f fVarD = D();
        if (fVarD != null) {
            return fVarD.getDownloadBitrate();
        }
        return null;
    }

    @Override
    public long getDuration() {
        return this.f67922d;
    }

    @Override
    public int getVideoHeight() {
        com.transsion.player.orplayer.f fVarD = D();
        return fVarD != null ? fVarD.getVideoHeight() : com.transsion.player.orplayer.f.b.k(this);
    }

    @Override
    public int getVideoWidth() {
        com.transsion.player.orplayer.f fVarD = D();
        return fVarD != null ? fVarD.getVideoWidth() : com.transsion.player.orplayer.f.b.l(this);
    }

    @Override
    public Float getVolume() {
        com.transsion.player.orplayer.f fVarD = D();
        if (fVarD != null) {
            return fVarD.getVolume();
        }
        return null;
    }

    @Override
    public void initPlayer() {
        com.transsion.player.orplayer.e eVar = this.f67923e;
        if (eVar != null) {
            eVar.initPlayer();
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).initPlayer();
        }
        E("initPlayer  mediaSource:" + this.f67925g);
    }

    @Override
    public boolean isComplete() {
        com.transsion.player.orplayer.f fVarD = D();
        if (fVarD != null) {
            return fVarD.isComplete();
        }
        return false;
    }

    @Override
    public boolean isLoading() {
        com.transsion.player.orplayer.f fVarD = D();
        return fVarD != null ? fVarD.isLoading() : com.transsion.player.orplayer.f.b.m(this);
    }

    @Override
    public boolean isMute() {
        com.transsion.player.orplayer.f fVarD = D();
        if (fVarD != null) {
            return fVarD.isMute();
        }
        return false;
    }

    @Override
    public boolean isPlaying() {
        com.transsion.player.orplayer.f fVarD = D();
        if (fVarD != null) {
            return fVarD.isPlaying();
        }
        return false;
    }

    @Override
    public boolean isPrepared() {
        com.transsion.player.orplayer.f fVarD = D();
        return fVarD != null ? fVarD.isPrepared() : com.transsion.player.orplayer.f.b.n(this);
    }

    @Override
    public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
        com.transsion.player.orplayer.e eVar2 = this.f67923e;
        if (eVar2 != null) {
            eVar2.onAliyunDecodeErrorChangeSoftwareDecoder(eVar);
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onAliyunDecodeErrorChangeSoftwareDecoder(eVar);
        }
    }

    @Override
    public void onBufferedPosition(long j10, gn.e eVar) {
        com.transsion.player.orplayer.e eVar2 = this.f67923e;
        if (eVar2 != null) {
            eVar2.onBufferedPosition(j10, eVar);
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onBufferedPosition(j10, eVar);
        }
    }

    @Override
    public void onCompletion(gn.e eVar) {
        com.transsion.player.orplayer.e eVar2 = this.f67923e;
        if (eVar2 != null) {
            eVar2.onCompletion(eVar);
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onCompletion(eVar);
        }
        E("onCompletion  mediaSource:" + eVar);
    }

    @Override
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.e eVar = this.f67923e;
        if (eVar != null) {
            eVar.onFocusChange(z10);
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onFocusChange(z10);
        }
        E("onFocusChange mediaSource:" + this.f67925g);
    }

    @Override
    public void onIsPlayingChanged(boolean z10) {
        com.transsion.player.orplayer.e eVar = this.f67923e;
        if (eVar != null) {
            eVar.onIsPlayingChanged(z10);
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onIsPlayingChanged(z10);
        }
    }

    @Override
    public void onLoadingBegin(gn.e eVar) {
        com.transsion.player.orplayer.e eVar2 = this.f67923e;
        if (eVar2 != null) {
            eVar2.onLoadingBegin(eVar);
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onLoadingBegin(eVar);
        }
        E("onLoadingBegin  mediaSource:" + eVar);
    }

    @Override
    public void onLoadingEnd(gn.e eVar) {
        com.transsion.player.orplayer.e eVar2 = this.f67923e;
        if (eVar2 != null) {
            eVar2.onLoadingEnd(eVar);
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onLoadingEnd(eVar);
        }
        E("onLoadingEnd mediaSource:" + eVar);
    }

    @Override
    public void onLoadingProgress(int i10, float f10, gn.e eVar) {
        com.transsion.player.orplayer.e eVar2 = this.f67923e;
        if (eVar2 != null) {
            eVar2.onLoadingProgress(i10, f10, eVar);
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onLoadingProgress(i10, f10, eVar);
        }
        E("onLoadingProgress percent:" + i10 + " netSpeed:" + f10 + " mediaSource:" + eVar);
    }

    @Override
    public void onLoopingStart() {
        com.transsion.player.orplayer.e eVar = this.f67923e;
        if (eVar != null) {
            eVar.onLoopingStart();
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onLoopingStart();
        }
        E("onLoopingStart  mediaSource:" + this.f67925g);
    }

    @Override
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.e.a.p(this, str);
    }

    @Override
    public void onPlayError(PlayError errorInfo, gn.e eVar) {
        Intrinsics.h(errorInfo, "errorInfo");
        com.transsion.player.orplayer.e eVar2 = this.f67923e;
        if (eVar2 != null) {
            eVar2.onPlayError(errorInfo, eVar);
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onPlayError(errorInfo, eVar);
        }
        this.f67927i.set(true);
        E("onPlayError  errorInfo:" + errorInfo + " mediaSource:" + eVar);
    }

    @Override
    public void onPlayerRelease(gn.e eVar) {
        com.transsion.player.orplayer.e eVar2 = this.f67923e;
        if (eVar2 != null) {
            eVar2.onPlayerRelease(eVar);
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onPlayerRelease(eVar);
        }
        E("onPlayerRelease  mediaSource:" + eVar);
    }

    @Override
    public void onPlayerReset() {
        com.transsion.player.orplayer.e eVar = this.f67923e;
        if (eVar != null) {
            eVar.onPlayerReset();
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onPlayerReset();
        }
        E("onPlayerReset mediaSource:" + this.f67925g);
    }

    @Override
    public void onPrepare(gn.e eVar) {
        com.transsion.player.orplayer.f fVarD = D();
        this.f67922d = fVarD != null ? fVarD.getDuration() : 0L;
        com.transsion.player.orplayer.e eVar2 = this.f67923e;
        if (eVar2 != null) {
            eVar2.onPrepare(eVar);
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onPrepare(eVar);
        }
        E("onPrepare  mediaSource:" + eVar);
    }

    @Override
    public void onProgress(long j10, gn.e eVar) {
        if (this.f67927i.get()) {
            com.transsion.player.orplayer.e eVar2 = this.f67923e;
            if (eVar2 != null) {
                eVar2.onProgress(j10, eVar);
            }
            Iterator it = this.f67924f.iterator();
            while (it.hasNext()) {
                ((com.transsion.player.orplayer.e) it.next()).onProgress(j10, eVar);
            }
        }
    }

    @Override
    public void onRenderFirstFrame() {
        E("onRenderFirstFrame  mediaSource:" + this.f67925g);
        com.transsion.player.orplayer.e eVar = this.f67923e;
        if (eVar != null) {
            eVar.onRenderFirstFrame();
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onRenderFirstFrame();
        }
    }

    @Override
    public void onSetDataSource() {
        com.transsion.player.orplayer.e eVar = this.f67923e;
        if (eVar != null) {
            eVar.onSetDataSource();
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onSetDataSource();
        }
        E("onSetDataSource  mediaSource:" + this.f67925g);
    }

    @Override
    public void onTracksAudioBitrateChange(int i10) {
        com.transsion.player.orplayer.e eVar = this.f67923e;
        if (eVar != null) {
            eVar.onTracksAudioBitrateChange(i10);
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onTracksAudioBitrateChange(i10);
        }
    }

    @Override
    public void onTracksChange(qn.c cVar) {
        com.transsion.player.orplayer.e.a.D(this, cVar);
    }

    @Override
    public void onTracksVideoBitrateChange(int i10) {
        com.transsion.player.orplayer.e eVar = this.f67923e;
        if (eVar != null) {
            eVar.onTracksVideoBitrateChange(i10);
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onTracksVideoBitrateChange(i10);
        }
    }

    @Override
    public void onVideoPause(gn.e eVar) {
        com.transsion.player.orplayer.e eVar2 = this.f67923e;
        if (eVar2 != null) {
            eVar2.onVideoPause(eVar);
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onVideoPause(eVar);
        }
        E("onVideoPause  mediaSource:" + eVar);
    }

    @Override
    public void onVideoSizeChanged(int i10, int i11) {
        com.transsion.player.orplayer.e eVar = this.f67923e;
        if (eVar != null) {
            eVar.onVideoSizeChanged(i10, i11);
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onVideoSizeChanged(i10, i11);
        }
        E("onVideoSizeChanged width:" + i10 + " height:" + i11 + " mediaSource:" + this.f67925g);
    }

    @Override
    public void onVideoStart(gn.e eVar) {
        com.transsion.player.orplayer.e eVar2 = this.f67923e;
        if (eVar2 != null) {
            eVar2.onVideoStart(eVar);
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onVideoStart(eVar);
        }
        E("onVideoStart  mediaSource:" + eVar);
    }

    @Override
    public void pause() {
        M(new Function0() {
            @Override
            public final Object invoke() {
                return y.G(this.f67909a);
            }
        });
    }

    @Override
    public void play() {
        M(new Function0() {
            @Override
            public final Object invoke() {
                return y.H(this.f67899a);
            }
        });
    }

    @Override
    public void prepare() {
        M(new Function0() {
            @Override
            public final Object invoke() {
                return y.I(this.f67905a);
            }
        });
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
    public void removePlayerListener(final com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        M(new Function0() {
            @Override
            public final Object invoke() {
                return y.K(this.f67875a, listener);
            }
        });
    }

    @Override
    public boolean requestForce() {
        return com.transsion.player.orplayer.f.b.r(this);
    }

    @Override
    public void reset() {
        M(new Function0() {
            @Override
            public final Object invoke() {
                return y.L(this.f67870a);
            }
        });
    }

    @Override
    public void seekTo(String str, long j10) {
        com.transsion.player.orplayer.f.b.s(this, str, j10);
    }

    @Override
    public void setAutoPlay(final boolean z10) {
        M(new Function0() {
            @Override
            public final Object invoke() {
                return y.P(this.f67897a, z10);
            }
        });
    }

    @Override
    public void setDataSource(final gn.e mediaSource) {
        Intrinsics.h(mediaSource, "mediaSource");
        M(new Function0() {
            @Override
            public final Object invoke() {
                return y.Q(this.f67902a, mediaSource);
            }
        });
    }

    @Override
    public void setLooping(final boolean z10) {
        M(new Function0() {
            @Override
            public final Object invoke() {
                return y.R(this.f67915a, z10);
            }
        });
    }

    @Override
    public void setMute(boolean z10) {
        com.transsion.player.orplayer.f fVarD = D();
        if (fVarD != null) {
            fVarD.setMute(z10);
        }
    }

    @Override
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.e.a.K(this);
        this.f67927i.set(true);
        com.transsion.player.orplayer.e eVar = this.f67923e;
        if (eVar != null) {
            eVar.setOnSeekCompleteListener();
        }
        Iterator it = this.f67924f.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).setOnSeekCompleteListener();
        }
        E("setOnSeekCompleteListener nextSeekTo:" + this.f67926h + " mediaSource:" + this.f67925g);
        long j10 = this.f67926h;
        if (j10 > 0) {
            seekTo(j10);
        }
    }

    @Override
    public void setPlayerConfig(final hn.d vodConfig) {
        Intrinsics.h(vodConfig, "vodConfig");
        M(new Function0() {
            @Override
            public final Object invoke() {
                return y.S(this.f67853a, vodConfig);
            }
        });
    }

    @Override
    public void setPlayerListener(final com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        M(new Function0() {
            @Override
            public final Object invoke() {
                return y.T(this.f67892a, listener);
            }
        });
    }

    @Override
    public void setScaleMode(ScaleMode scaleMode) {
        Intrinsics.h(scaleMode, "scaleMode");
        com.transsion.player.orplayer.f fVarD = D();
        if (fVarD != null) {
            fVarD.setScaleMode(scaleMode);
        }
    }

    @Override
    public void setSpeed(final float f10) {
        M(new Function0() {
            @Override
            public final Object invoke() {
                return y.U(this.f67900a, f10);
            }
        });
    }

    @Override
    public void setSurfaceView(final SurfaceView surfaceView) {
        M(new Function0() {
            @Override
            public final Object invoke() {
                return y.V(this.f67913a, surfaceView);
            }
        });
    }

    @Override
    public void setTextureView(final TextureView textureView) {
        M(new Function0() {
            @Override
            public final Object invoke() {
                return y.W(this.f67907a, textureView);
            }
        });
    }

    @Override
    public void setVipResolution(boolean z10, int i10) {
    }

    @Override
    public void setVolume(final float f10) {
        M(new Function0() {
            @Override
            public final Object invoke() {
                return y.X(this.f67855a, f10);
            }
        });
    }

    @Override
    public void stop() {
        M(new Function0() {
            @Override
            public final Object invoke() {
                return y.Y(this.f67894a);
            }
        });
    }

    private y() {
        this.f67924f = new CopyOnWriteArrayList();
        if (e0.f67859a.g()) {
            HandlerThread handlerThread = new HandlerThread("TnPlayerThread", Build.VERSION.SDK_INT >= 28 ? -10 : -16);
            handlerThread.start();
            handlerThread.setUncaughtExceptionHandler(f67918k);
            this.f67920b = new Handler(handlerThread.getLooper());
            this.f67919a = handlerThread;
        } else {
            this.f67919a = null;
            this.f67920b = new Handler(Looper.getMainLooper());
        }
        M(new Function0() {
            @Override
            public final Object invoke() {
                return y.z(this.f67906a);
            }
        });
        this.f67927i = new AtomicBoolean(true);
    }

    @Override
    public void release() {
        this.f67922d = 0L;
        M(new Function0() {
            @Override
            public final Object invoke() {
                return y.J(this.f67910a);
            }
        });
    }

    @Override
    public void seekTo(final long j10) {
        if (this.f67927i.compareAndSet(true, false)) {
            M(new Function0() {
                @Override
                public final Object invoke() {
                    return y.O(this.f67911a, j10);
                }
            });
            this.f67926h = 0L;
            return;
        }
        this.f67926h = j10;
        E("seekTo:" + j10 + "  waiting.... mediaSource:" + this.f67925g);
    }
}
