package on;

import android.app.Application;
import android.view.SurfaceView;
import android.view.TextureView;
import com.blankj.utilcode.util.Utils;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.p007enum.ScaleMode;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a0 implements com.transsion.player.orplayer.f {

    public static final a f67835r = new a(null);

    private volatile com.transsion.player.orplayer.f f67836a;

    private volatile gn.e f67837b;

    private SurfaceView f67838c;

    private TextureView f67839d;

    private com.transsion.player.orplayer.e f67840e;

    private Float f67842g;

    private boolean f67843h;

    private boolean f67844i;

    private hn.d f67845j;

    private boolean f67846k;

    private boolean f67850o;

    private long f67851p;

    private CopyOnWriteArrayList f67841f = new CopyOnWriteArrayList();

    private boolean f67847l = true;

    private float f67848m = 1.0f;

    private ScaleMode f67849n = ScaleMode.SCALE_ASPECT_FIT;

    private final on.a f67852q = new on.a();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void c() {
        gn.e eVar = this.f67837b;
        if (eVar != null) {
            f();
            if (g(eVar)) {
                if (this.f67836a instanceof in.e) {
                    return;
                }
                com.transsion.player.orplayer.f fVar = this.f67836a;
                if (fVar != null) {
                    fVar.release();
                }
                f0 f0Var = f0.f67871a;
                Application applicationA = Utils.a();
                Intrinsics.g(applicationA, "getApp(...)");
                in.e eVarC = f0Var.c(applicationA);
                e(eVarC);
                this.f67836a = eVarC;
                return;
            }
            if (this.f67836a instanceof y) {
                return;
            }
            com.transsion.player.orplayer.f fVar2 = this.f67836a;
            if (fVar2 != null) {
                fVar2.release();
            }
            f0 f0Var2 = f0.f67871a;
            Application applicationA2 = Utils.a();
            Intrinsics.g(applicationA2, "getApp(...)");
            y yVarB = f0Var2.b(applicationA2);
            e(yVarB);
            this.f67836a = yVarB;
        }
    }

    private final int d() {
        return e0.f67859a.l();
    }

    private final void e(com.transsion.player.orplayer.f fVar) {
        if (fVar == null) {
            return;
        }
        fVar.setMute(this.f67846k);
        hn.d dVar = this.f67845j;
        if (dVar != null) {
            fVar.setPlayerConfig(dVar);
        }
        Float f10 = this.f67842g;
        if (f10 != null) {
            fVar.setVolume(f10.floatValue());
        }
        fVar.setLooping(this.f67844i);
        fVar.setAutoPlay(this.f67843h);
        fVar.setSpeed(this.f67848m);
        fVar.enableHardwareDecoder(this.f67847l);
        SurfaceView surfaceView = this.f67838c;
        if (surfaceView != null) {
            fVar.setSurfaceView(surfaceView);
        }
        TextureView textureView = this.f67839d;
        if (textureView != null) {
            fVar.setTextureView(textureView);
        }
        com.transsion.player.orplayer.e eVar = this.f67840e;
        if (eVar != null) {
            fVar.setPlayerListener(eVar);
        }
        for (com.transsion.player.orplayer.e eVar2 : this.f67841f) {
            Intrinsics.e(eVar2);
            fVar.addPlayerListener(eVar2);
        }
        fVar.setScaleMode(this.f67849n);
    }

    private final void f() {
        this.f67850o = false;
        this.f67851p = 0L;
    }

    private final boolean g(gn.e eVar) {
        return d() == 1 || eVar.m() || eVar.c();
    }

    @Override
    public boolean addDataSource(gn.e eVar) {
        return com.transsion.player.orplayer.f.b.a(this, eVar);
    }

    @Override
    public void addPlayerListener(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        this.f67852q.a(listener);
    }

    @Override
    public void changeTrackSelection(qn.d mediaTrackGroup, int i10) {
        Intrinsics.h(mediaTrackGroup, "mediaTrackGroup");
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.changeTrackSelection(mediaTrackGroup, i10);
        }
    }

    @Override
    public void clearScreen() {
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.clearScreen();
        }
    }

    @Override
    public void clearSurfaceOnly() {
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.clearSurfaceOnly();
        }
        this.f67838c = null;
        this.f67839d = null;
    }

    @Override
    public gn.e currentMediaSource() {
        return this.f67837b;
    }

    @Override
    public void enableHardwareDecoder(boolean z10) {
        this.f67847l = z10;
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.enableHardwareDecoder(z10);
        }
    }

    @Override
    public Pair getBitrate() {
        Pair bitrate;
        com.transsion.player.orplayer.f fVar = this.f67836a;
        return (fVar == null || (bitrate = fVar.getBitrate()) == null) ? new Pair(0, 0) : bitrate;
    }

    @Override
    public long getCurrentPosition() {
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            return fVar.getCurrentPosition();
        }
        return 0L;
    }

    @Override
    public qn.c getCurrentTracks() {
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            return fVar.getCurrentTracks();
        }
        return null;
    }

    @Override
    public qn.b getCurrentVideoFormat() {
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            return fVar.getCurrentVideoFormat();
        }
        return null;
    }

    @Override
    public Object getDownloadBitrate() {
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            return fVar.getDownloadBitrate();
        }
        return null;
    }

    @Override
    public long getDuration() {
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            return fVar.getDuration();
        }
        return 0L;
    }

    @Override
    public int getVideoHeight() {
        com.transsion.player.orplayer.f fVar = this.f67836a;
        return fVar != null ? fVar.getVideoHeight() : com.transsion.player.orplayer.f.b.k(this);
    }

    @Override
    public int getVideoWidth() {
        com.transsion.player.orplayer.f fVar = this.f67836a;
        return fVar != null ? fVar.getVideoWidth() : com.transsion.player.orplayer.f.b.l(this);
    }

    @Override
    public Float getVolume() {
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            return fVar.getVolume();
        }
        return null;
    }

    @Override
    public boolean isComplete() {
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            return fVar.isComplete();
        }
        return false;
    }

    @Override
    public boolean isLoading() {
        com.transsion.player.orplayer.f fVar = this.f67836a;
        return fVar != null ? fVar.isLoading() : com.transsion.player.orplayer.f.b.m(this);
    }

    @Override
    public boolean isMute() {
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            return fVar.isMute();
        }
        return false;
    }

    @Override
    public boolean isPlaying() {
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            return fVar.isPlaying();
        }
        return false;
    }

    @Override
    public boolean isPrepared() {
        com.transsion.player.orplayer.f fVar = this.f67836a;
        return fVar != null ? fVar.isPrepared() : com.transsion.player.orplayer.f.b.n(this);
    }

    @Override
    public void pause() {
        e0.f67859a.o(this, this.f67837b);
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.pause();
        }
    }

    @Override
    public void play() {
        e0 e0Var = e0.f67859a;
        e0Var.t(this, MediaItem.MUSIC_FLOAT_STATE_PLAY);
        e0Var.p(this, this.f67837b);
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.play();
        }
    }

    @Override
    public void prepare() {
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.prepare();
        }
    }

    @Override
    public void release(String str) {
        release();
    }

    @Override
    public boolean removeDataSource(gn.e eVar) {
        return com.transsion.player.orplayer.f.b.p(this, eVar);
    }

    @Override
    public void removePlayerListener(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        this.f67852q.d(listener);
    }

    @Override
    public boolean requestForce() {
        return com.transsion.player.orplayer.f.b.r(this);
    }

    @Override
    public void reset() {
        f();
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.reset();
        }
    }

    @Override
    public void seekTo(long j10) {
        MediaItem mediaItemH;
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.seekTo(j10);
        }
        gn.e eVar = this.f67837b;
        if (eVar != null && (mediaItemH = eVar.h()) != null) {
            mediaItemH.setPosition(Long.valueOf(j10));
        }
        e0.f67859a.v(this, this.f67837b);
    }

    @Override
    public void setAutoPlay(boolean z10) {
        this.f67843h = z10;
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.setAutoPlay(z10);
        }
    }

    @Override
    public void setDataSource(gn.e mediaSource) {
        Intrinsics.h(mediaSource, "mediaSource");
        e0.f67859a.t(this, "setDataSource");
        this.f67837b = mediaSource;
        c();
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.addPlayerListener(this.f67852q);
        }
        com.transsion.player.orplayer.f fVar2 = this.f67836a;
        if (fVar2 != null) {
            fVar2.setDataSource(mediaSource);
        }
    }

    @Override
    public void setLooping(boolean z10) {
        this.f67844i = z10;
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.setLooping(z10);
        }
    }

    @Override
    public void setMute(boolean z10) {
        this.f67846k = z10;
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.setMute(z10);
        }
    }

    @Override
    public void setPlayerConfig(hn.d vodConfig) {
        Intrinsics.h(vodConfig, "vodConfig");
        this.f67845j = vodConfig;
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.setPlayerConfig(vodConfig);
        }
    }

    @Override
    public void setPlayerListener(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        this.f67840e = listener;
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.setPlayerListener(listener);
        }
    }

    @Override
    public void setScaleMode(ScaleMode scaleMode) {
        Intrinsics.h(scaleMode, "scaleMode");
        this.f67849n = scaleMode;
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.setScaleMode(scaleMode);
        }
    }

    @Override
    public void setSpeed(float f10) {
        this.f67848m = f10;
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.setSpeed(f10);
        }
    }

    @Override
    public void setSurfaceView(SurfaceView surfaceView) {
        this.f67839d = null;
        this.f67838c = surfaceView;
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.setSurfaceView(surfaceView);
        }
    }

    @Override
    public void setTextureView(TextureView textureView) {
        this.f67838c = null;
        this.f67839d = textureView;
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.setTextureView(textureView);
        }
    }

    @Override
    public void setVipResolution(boolean z10, int i10) {
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.setVipResolution(z10, i10);
        }
    }

    @Override
    public void setVolume(float f10) {
        this.f67842g = Float.valueOf(f10);
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.setVolume(f10);
        }
    }

    @Override
    public void stop() {
        f();
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.stop();
        }
    }

    @Override
    public void release() {
        f();
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.release();
        }
        this.f67836a = null;
        this.f67840e = null;
        this.f67838c = null;
        this.f67839d = null;
        e0.f67859a.r(this);
    }

    @Override
    public void seekTo(String uuid, long j10) {
        Intrinsics.h(uuid, "uuid");
        com.transsion.player.orplayer.f fVar = this.f67836a;
        if (fVar != null) {
            fVar.seekTo(uuid, j10);
        }
    }
}
