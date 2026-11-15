package com.transsion.player.orplayer;

import android.content.Context;
import android.view.SurfaceView;
import android.view.TextureView;
import com.transsion.player.p007enum.ScaleMode;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import on.z;

public interface f {

    public static final class a {

        private Context f46453a;

        private hn.d f46454b;

        public a(Context context) {
            Intrinsics.h(context, "context");
            this.f46453a = context;
        }

        public final f a() {
            return new q(this.f46453a, this.f46454b);
        }

        public final a b(hn.d config) {
            Intrinsics.h(config, "config");
            this.f46454b = config;
            return this;
        }
    }

    public static final class b {
        public static boolean a(f fVar, gn.e mediaSource) {
            Intrinsics.h(mediaSource, "mediaSource");
            return false;
        }

        public static void b(f fVar, e listener) {
            Intrinsics.h(listener, "listener");
        }

        public static void c(f fVar, qn.d mediaTrackGroup, int i10) {
            Intrinsics.h(mediaTrackGroup, "mediaTrackGroup");
        }

        public static void d(f fVar) {
        }

        public static void e(f fVar) {
        }

        public static gn.e f(f fVar) {
            return null;
        }

        public static long g(f fVar) {
            return 0L;
        }

        public static qn.c h(f fVar) {
            return null;
        }

        public static qn.b i(f fVar) {
            return null;
        }

        public static Object j(f fVar) {
            return null;
        }

        public static int k(f fVar) {
            return 0;
        }

        public static int l(f fVar) {
            return 0;
        }

        public static boolean m(f fVar) {
            return false;
        }

        public static boolean n(f fVar) {
            return false;
        }

        public static void o(f fVar, String str) {
        }

        public static boolean p(f fVar, gn.e mediaSource) {
            Intrinsics.h(mediaSource, "mediaSource");
            return false;
        }

        public static void q(f fVar, e listener) {
            Intrinsics.h(listener, "listener");
        }

        public static boolean r(f fVar) {
            return false;
        }

        public static void s(f fVar, String uuid, long j10) {
            Intrinsics.h(uuid, "uuid");
        }

        public static void t(f fVar) {
        }

        public static void u(f fVar, z listener) {
            Intrinsics.h(listener, "listener");
        }

        public static void v(f fVar, boolean z10) {
        }

        public static void w(f fVar, hn.d vodConfig) {
            Intrinsics.h(vodConfig, "vodConfig");
        }

        public static void x(f fVar, ScaleMode scaleMode) {
            Intrinsics.h(scaleMode, "scaleMode");
        }
    }

    boolean addDataSource(gn.e eVar);

    void addPlayerListener(e eVar);

    void changeTrackSelection(qn.d dVar, int i10);

    void clearScreen();

    void clearSurfaceOnly();

    gn.e currentMediaSource();

    void enableHardwareDecoder(boolean z10);

    Pair getBitrate();

    long getCurrentPosition();

    qn.c getCurrentTracks();

    qn.b getCurrentVideoFormat();

    Object getDownloadBitrate();

    long getDuration();

    int getVideoHeight();

    int getVideoWidth();

    Float getVolume();

    boolean isComplete();

    boolean isLoading();

    boolean isMute();

    boolean isPlaying();

    boolean isPrepared();

    void pause();

    void play();

    void prepare();

    void release();

    void release(String str);

    boolean removeDataSource(gn.e eVar);

    void removePlayerListener(e eVar);

    boolean requestForce();

    void reset();

    void seekTo(long j10);

    void seekTo(String str, long j10);

    void setAutoPlay(boolean z10);

    void setDataSource(gn.e eVar);

    void setLooping(boolean z10);

    void setMute(boolean z10);

    void setPlayerConfig(hn.d dVar);

    void setPlayerListener(e eVar);

    void setScaleMode(ScaleMode scaleMode);

    void setSpeed(float f10);

    void setSurfaceView(SurfaceView surfaceView);

    void setTextureView(TextureView textureView);

    void setVipResolution(boolean z10, int i10);

    void setVolume(float f10);

    void stop();
}
