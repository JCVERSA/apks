package androidx.media3.common;

import android.os.Looper;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.util.a1;
import java.util.List;
import java.util.Objects;

public interface a0 {

    public static final class b {

        public static final b f9480b = new a().e();

        private static final String f9481c = a1.C0(0);

        private final p f9482a;

        public static final class a {

            private static final int[] f9483b = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 31, 20, 21, 22, 23, 24, 25, 33, 26, 34, 35, 27, 28, 29, 30, 32};

            private final p.b f9484a = new p.b();

            public a a(int i10) {
                this.f9484a.a(i10);
                return this;
            }

            public a b(b bVar) {
                this.f9484a.b(bVar.f9482a);
                return this;
            }

            public a c(int... iArr) {
                this.f9484a.c(iArr);
                return this;
            }

            public a d(int i10, boolean z10) {
                this.f9484a.d(i10, z10);
                return this;
            }

            public b e() {
                return new b(this.f9484a.e());
            }
        }

        public boolean b(int i10) {
            return this.f9482a.a(i10);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                return this.f9482a.equals(((b) obj).f9482a);
            }
            return false;
        }

        public int hashCode() {
            return this.f9482a.hashCode();
        }

        private b(p pVar) {
            this.f9482a = pVar;
        }
    }

    public static final class c {

        private final p f9485a;

        public c(p pVar) {
            this.f9485a = pVar;
        }

        public boolean a(int i10) {
            return this.f9485a.a(i10);
        }

        public boolean b(int... iArr) {
            return this.f9485a.b(iArr);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof c) {
                return this.f9485a.equals(((c) obj).f9485a);
            }
            return false;
        }

        public int hashCode() {
            return this.f9485a.hashCode();
        }
    }

    public interface d {
        void onAudioSessionIdChanged(int i10);

        void onAvailableCommandsChanged(b bVar);

        void onCues(List list);

        void onCues(u1.b bVar);

        void onDeviceInfoChanged(m mVar);

        void onDeviceVolumeChanged(int i10, boolean z10);

        void onEvents(a0 a0Var, c cVar);

        void onIsLoadingChanged(boolean z10);

        void onIsPlayingChanged(boolean z10);

        void onLoadingChanged(boolean z10);

        void onMediaItemTransition(t tVar, int i10);

        void onMediaMetadataChanged(v vVar);

        void onMetadata(x xVar);

        void onPlayWhenReadyChanged(boolean z10, int i10);

        void onPlaybackParametersChanged(z zVar);

        void onPlaybackStateChanged(int i10);

        void onPlaybackSuppressionReasonChanged(int i10);

        void onPlayerError(PlaybackException playbackException);

        void onPlayerErrorChanged(PlaybackException playbackException);

        void onPlayerStateChanged(boolean z10, int i10);

        void onPositionDiscontinuity(int i10);

        void onPositionDiscontinuity(e eVar, e eVar2, int i10);

        void onRenderedFirstFrame();

        void onRepeatModeChanged(int i10);

        void onShuffleModeEnabledChanged(boolean z10);

        void onSkipSilenceEnabledChanged(boolean z10);

        void onSurfaceSizeChanged(int i10, int i11);

        void onTimelineChanged(e0 e0Var, int i10);

        void onTrackSelectionParametersChanged(h0 h0Var);

        void onTracksChanged(i0 i0Var);

        void onVideoSizeChanged(m0 m0Var);

        void onVolumeChanged(float f10);
    }

    public static final class e {

        static final String f9486k = a1.C0(0);

        private static final String f9487l = a1.C0(1);

        static final String f9488m = a1.C0(2);

        static final String f9489n = a1.C0(3);

        static final String f9490o = a1.C0(4);

        private static final String f9491p = a1.C0(5);

        private static final String f9492q = a1.C0(6);

        public final Object f9493a;

        public final int f9494b;

        public final int f9495c;

        public final t f9496d;

        public final Object f9497e;

        public final int f9498f;

        public final long f9499g;

        public final long f9500h;

        public final int f9501i;

        public final int f9502j;

        public e(Object obj, int i10, t tVar, Object obj2, int i11, long j10, long j11, int i12, int i13) {
            this.f9493a = obj;
            this.f9494b = i10;
            this.f9495c = i10;
            this.f9496d = tVar;
            this.f9497e = obj2;
            this.f9498f = i11;
            this.f9499g = j10;
            this.f9500h = j11;
            this.f9501i = i12;
            this.f9502j = i13;
        }

        public boolean a(e eVar) {
            return this.f9495c == eVar.f9495c && this.f9498f == eVar.f9498f && this.f9499g == eVar.f9499g && this.f9500h == eVar.f9500h && this.f9501i == eVar.f9501i && this.f9502j == eVar.f9502j && Objects.equals(this.f9496d, eVar.f9496d);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return a(eVar) && Objects.equals(this.f9493a, eVar.f9493a) && Objects.equals(this.f9497e, eVar.f9497e);
        }

        public int hashCode() {
            return Objects.hash(this.f9493a, Integer.valueOf(this.f9495c), this.f9496d, this.f9497e, Integer.valueOf(this.f9498f), Long.valueOf(this.f9499g), Long.valueOf(this.f9500h), Integer.valueOf(this.f9501i), Integer.valueOf(this.f9502j));
        }
    }

    boolean A();

    void B(boolean z10, int i10);

    void C();

    void E(int i10, int i11, List list);

    void F(int i10);

    int G();

    void H(int i10, int i11);

    void I(t tVar);

    void K(t tVar);

    void L(d dVar);

    void M(d dVar);

    void N(int i10, t tVar);

    t O(int i10);

    long Q();

    void S(int i10, List list);

    void V(h0 h0Var);

    boolean W();

    void a(float f10);

    void b(z zVar);

    PlaybackException c();

    void clearVideoSurface();

    void clearVideoSurfaceView(SurfaceView surfaceView);

    void clearVideoTextureView(TextureView textureView);

    long d();

    void e(List list, boolean z10);

    void f();

    boolean g();

    long getContentPosition();

    int getCurrentAdGroupIndex();

    int getCurrentAdIndexInAdGroup();

    int getCurrentPeriodIndex();

    long getCurrentPosition();

    e0 getCurrentTimeline();

    i0 getCurrentTracks();

    long getDuration();

    boolean getPlayWhenReady();

    z getPlaybackParameters();

    int getPlaybackState();

    int getRepeatMode();

    boolean getShuffleModeEnabled();

    float getVolume();

    u1.b h();

    boolean i(int i10);

    boolean isPlaying();

    boolean isPlayingAd();

    boolean j();

    int k();

    Looper l();

    h0 m();

    void n();

    b o();

    long p();

    void pause();

    void play();

    void prepare();

    m0 q();

    boolean r();

    long s();

    void seekTo(int i10, long j10);

    void seekTo(long j10);

    void seekToDefaultPosition();

    void setPlayWhenReady(boolean z10);

    void setRepeatMode(int i10);

    void setShuffleModeEnabled(boolean z10);

    void setVideoSurfaceView(SurfaceView surfaceView);

    void setVideoTextureView(TextureView textureView);

    void setVolume(float f10);

    void stop();

    boolean t();

    int u();

    long v();

    void w();

    void x();

    v y();

    long z();
}
