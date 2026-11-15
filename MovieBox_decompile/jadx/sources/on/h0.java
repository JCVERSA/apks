package on;

import android.view.SurfaceView;
import android.view.TextureView;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.p007enum.ScaleMode;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class h0 implements com.transsion.player.orplayer.f {

    public static final a f67877o = new a(null);

    private volatile com.transsion.player.orplayer.f f67878a;

    private volatile gn.e f67879b;

    private SurfaceView f67880c;

    private TextureView f67881d;

    private com.transsion.player.orplayer.e f67882e;

    private Float f67884g;

    private boolean f67885h;

    private boolean f67886i;

    private hn.d f67887j;

    private boolean f67888k;

    private CopyOnWriteArrayList f67883f = new CopyOnWriteArrayList();

    private boolean f67889l = true;

    private float f67890m = 1.0f;

    private ScaleMode f67891n = ScaleMode.SCALE_ASPECT_FIT;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final Unit e(h0 h0Var) {
        com.transsion.player.orplayer.f fVar = h0Var.f67878a;
        if (fVar != null) {
            fVar.stop();
            fVar.reset();
            fVar.enableHardwareDecoder(h0Var.f67889l);
            hn.d dVar = h0Var.f67887j;
            if (dVar != null) {
                fVar.setPlayerConfig(dVar);
            }
            fVar.setMute(h0Var.f67888k);
            Float f10 = h0Var.f67884g;
            if (f10 != null) {
                fVar.setVolume(f10.floatValue());
            }
            fVar.setSpeed(h0Var.f67890m);
            fVar.setLooping(h0Var.f67886i);
            fVar.setAutoPlay(h0Var.f67885h);
            SurfaceView surfaceView = h0Var.f67880c;
            if (surfaceView != null) {
                fVar.setSurfaceView(surfaceView);
            }
            TextureView textureView = h0Var.f67881d;
            if (textureView != null) {
                fVar.setTextureView(textureView);
            }
            com.transsion.player.orplayer.e eVar = h0Var.f67882e;
            if (eVar != null) {
                fVar.setPlayerListener(eVar);
            }
            for (com.transsion.player.orplayer.e eVar2 : h0Var.f67883f) {
                Intrinsics.e(eVar2);
                fVar.addPlayerListener(eVar2);
            }
            fVar.setScaleMode(h0Var.f67891n);
            gn.e eVar3 = h0Var.f67879b;
            if (eVar3 != null) {
                fVar.setDataSource(eVar3);
            }
        }
        return Unit.f64096a;
    }

    @Override
    public boolean addDataSource(gn.e eVar) {
        return com.transsion.player.orplayer.f.b.a(this, eVar);
    }

    @Override
    public void addPlayerListener(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        if (this.f67883f.contains(listener)) {
            return;
        }
        this.f67883f.add(listener);
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.addPlayerListener(listener);
        }
    }

    @Override
    public void changeTrackSelection(qn.d mediaTrackGroup, int i10) {
        Intrinsics.h(mediaTrackGroup, "mediaTrackGroup");
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.changeTrackSelection(mediaTrackGroup, i10);
        }
    }

    @Override
    public void clearScreen() {
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.clearScreen();
        }
    }

    @Override
    public void clearSurfaceOnly() {
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.clearSurfaceOnly();
        }
        this.f67880c = null;
        this.f67881d = null;
    }

    @Override
    public gn.e currentMediaSource() {
        return this.f67879b;
    }

    public final void d(boolean z10) {
        com.transsion.player.orplayer.e eVar = this.f67882e;
        if (eVar != null) {
            eVar.onFocusChange(z10);
        }
    }

    @Override
    public void enableHardwareDecoder(boolean z10) {
        this.f67889l = z10;
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.enableHardwareDecoder(z10);
        }
    }

    public final void f(com.transsion.player.orplayer.f fVar) {
        this.f67878a = fVar;
    }

    @Override
    public Pair getBitrate() {
        Pair bitrate;
        com.transsion.player.orplayer.f fVar = this.f67878a;
        return (fVar == null || (bitrate = fVar.getBitrate()) == null) ? new Pair(0, 0) : bitrate;
    }

    @Override
    public long getCurrentPosition() {
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            return fVar.getCurrentPosition();
        }
        return 0L;
    }

    @Override
    public qn.c getCurrentTracks() {
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            return fVar.getCurrentTracks();
        }
        return null;
    }

    @Override
    public qn.b getCurrentVideoFormat() {
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            return fVar.getCurrentVideoFormat();
        }
        return null;
    }

    @Override
    public Object getDownloadBitrate() {
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            return fVar.getDownloadBitrate();
        }
        return null;
    }

    @Override
    public long getDuration() {
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            return fVar.getDuration();
        }
        return 0L;
    }

    @Override
    public int getVideoHeight() {
        com.transsion.player.orplayer.f fVar = this.f67878a;
        return fVar != null ? fVar.getVideoHeight() : com.transsion.player.orplayer.f.b.k(this);
    }

    @Override
    public int getVideoWidth() {
        com.transsion.player.orplayer.f fVar = this.f67878a;
        return fVar != null ? fVar.getVideoWidth() : com.transsion.player.orplayer.f.b.l(this);
    }

    @Override
    public Float getVolume() {
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            return fVar.getVolume();
        }
        return null;
    }

    @Override
    public boolean isComplete() {
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            return fVar.isComplete();
        }
        return false;
    }

    @Override
    public boolean isLoading() {
        com.transsion.player.orplayer.f fVar = this.f67878a;
        return fVar != null ? fVar.isLoading() : com.transsion.player.orplayer.f.b.m(this);
    }

    @Override
    public boolean isMute() {
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            return fVar.isMute();
        }
        return false;
    }

    @Override
    public boolean isPlaying() {
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            return fVar.isPlaying();
        }
        return false;
    }

    @Override
    public boolean isPrepared() {
        com.transsion.player.orplayer.f fVar = this.f67878a;
        return fVar != null ? fVar.isPrepared() : com.transsion.player.orplayer.f.b.n(this);
    }

    @Override
    public void pause() {
        e0.f67859a.o(this, this.f67879b);
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.pause();
        }
    }

    @Override
    public void play() {
        e0 e0Var = e0.f67859a;
        e0Var.p(this, this.f67879b);
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            e0Var.t(fVar, MediaItem.MUSIC_FLOAT_STATE_PLAY);
        }
        com.transsion.player.orplayer.f fVar2 = this.f67878a;
        if (fVar2 != null) {
            fVar2.play();
        }
    }

    @Override
    public void prepare() {
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.prepare();
        }
    }

    @Override
    public void release() {
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.release();
        }
        this.f67878a = null;
        this.f67882e = null;
        this.f67880c = null;
        this.f67881d = null;
        e0.f67859a.r(this);
    }

    @Override
    public boolean removeDataSource(gn.e eVar) {
        return com.transsion.player.orplayer.f.b.p(this, eVar);
    }

    @Override
    public void removePlayerListener(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        this.f67883f.remove(listener);
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.removePlayerListener(listener);
        }
    }

    @Override
    public boolean requestForce() {
        if (this.f67878a != null) {
            return false;
        }
        e0.f67859a.u(this);
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar == null) {
            return true;
        }
        Function0 function0 = new Function0() {
            @Override
            public final Object invoke() {
                return h0.e(this.f67874a);
            }
        };
        if (fVar instanceof y) {
            ((y) fVar).M(function0);
            return true;
        }
        function0.invoke();
        return true;
    }

    @Override
    public void reset() {
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.reset();
        }
    }

    @Override
    public void seekTo(long j10) {
        MediaItem mediaItemH;
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.seekTo(j10);
        }
        gn.e eVar = this.f67879b;
        if (eVar != null && (mediaItemH = eVar.h()) != null) {
            mediaItemH.setPosition(Long.valueOf(j10));
        }
        e0.f67859a.v(this, this.f67879b);
    }

    @Override
    public void setAutoPlay(boolean z10) {
        this.f67885h = z10;
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.setAutoPlay(z10);
        }
    }

    @Override
    public void setDataSource(gn.e mediaSource) {
        com.transsion.player.orplayer.f fVar;
        Intrinsics.h(mediaSource, "mediaSource");
        this.f67879b = mediaSource;
        com.transsion.player.orplayer.f fVar2 = this.f67878a;
        if (fVar2 != null) {
            e0.f67859a.t(fVar2, "setDataSource");
        }
        if (requestForce() || (fVar = this.f67878a) == null) {
            return;
        }
        fVar.setDataSource(mediaSource);
    }

    @Override
    public void setLooping(boolean z10) {
        this.f67886i = z10;
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.setLooping(z10);
        }
    }

    @Override
    public void setMute(boolean z10) {
        this.f67888k = z10;
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.setMute(z10);
        }
    }

    @Override
    public void setPlayerConfig(hn.d vodConfig) {
        Intrinsics.h(vodConfig, "vodConfig");
        this.f67887j = vodConfig;
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.setPlayerConfig(vodConfig);
        }
    }

    @Override
    public void setPlayerListener(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        this.f67882e = listener;
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.setPlayerListener(listener);
        }
    }

    @Override
    public void setScaleMode(ScaleMode scaleMode) {
        Intrinsics.h(scaleMode, "scaleMode");
        this.f67891n = scaleMode;
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.setScaleMode(scaleMode);
        }
    }

    @Override
    public void setSpeed(float f10) {
        this.f67890m = f10;
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.setSpeed(f10);
        }
    }

    @Override
    public void setSurfaceView(SurfaceView surfaceView) {
        this.f67881d = null;
        this.f67880c = surfaceView;
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.setSurfaceView(surfaceView);
        }
    }

    @Override
    public void setTextureView(TextureView textureView) {
        this.f67880c = null;
        this.f67881d = textureView;
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.setTextureView(textureView);
        }
    }

    @Override
    public void setVipResolution(boolean z10, int i10) {
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.setVipResolution(z10, i10);
        }
    }

    @Override
    public void setVolume(float f10) {
        this.f67884g = Float.valueOf(f10);
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.setVolume(f10);
        }
    }

    @Override
    public void stop() {
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.stop();
        }
    }

    @Override
    public void seekTo(String uuid, long j10) {
        Intrinsics.h(uuid, "uuid");
        com.transsion.player.orplayer.f fVar = this.f67878a;
        if (fVar != null) {
            fVar.seekTo(uuid, j10);
        }
    }

    @Override
    public void release(String str) {
        if (str != null && str.length() != 0) {
            gn.e eVar = this.f67879b;
            if (!Intrinsics.c(eVar != null ? eVar.e() : null, str)) {
                return;
            }
        }
        release();
    }
}
