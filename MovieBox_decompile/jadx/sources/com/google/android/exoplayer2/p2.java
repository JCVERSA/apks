package com.google.android.exoplayer2;

import android.os.Bundle;
import android.os.Looper;
import android.view.SurfaceView;
import android.view.TextureView;
import com.google.android.exoplayer2.metadata.Metadata;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.List;

public interface p2 {

    public static final class b implements k {

        public static final b f24942b = new a().e();

        public static final k.a f24943c = new k.a() {
            @Override
            public final k a(Bundle bundle) {
                return p2.b.d(bundle);
            }
        };

        private final com.google.android.exoplayer2.util.m f24944a;

        public static final class a {

            private static final int[] f24945b = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 31, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30};

            private final com.google.android.exoplayer2.util.m.b f24946a = new com.google.android.exoplayer2.util.m.b();

            public a a(int i10) {
                this.f24946a.a(i10);
                return this;
            }

            public a b(b bVar) {
                this.f24946a.b(bVar.f24944a);
                return this;
            }

            public a c(int... iArr) {
                this.f24946a.c(iArr);
                return this;
            }

            public a d(int i10, boolean z10) {
                this.f24946a.d(i10, z10);
                return this;
            }

            public b e() {
                return new b(this.f24946a.e());
            }
        }

        public static b d(Bundle bundle) {
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(e(0));
            if (integerArrayList == null) {
                return f24942b;
            }
            a aVar = new a();
            for (int i10 = 0; i10 < integerArrayList.size(); i10++) {
                aVar.a(integerArrayList.get(i10).intValue());
            }
            return aVar.e();
        }

        private static String e(int i10) {
            return Integer.toString(i10, 36);
        }

        public boolean c(int i10) {
            return this.f24944a.a(i10);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                return this.f24944a.equals(((b) obj).f24944a);
            }
            return false;
        }

        public int hashCode() {
            return this.f24944a.hashCode();
        }

        @Override
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            ArrayList<Integer> arrayList = new ArrayList<>();
            for (int i10 = 0; i10 < this.f24944a.d(); i10++) {
                arrayList.add(Integer.valueOf(this.f24944a.c(i10)));
            }
            bundle.putIntegerArrayList(e(0), arrayList);
            return bundle;
        }

        private b(com.google.android.exoplayer2.util.m mVar) {
            this.f24944a = mVar;
        }
    }

    public static final class c {

        private final com.google.android.exoplayer2.util.m f24947a;

        public c(com.google.android.exoplayer2.util.m mVar) {
            this.f24947a = mVar;
        }

        public boolean a(int i10) {
            return this.f24947a.a(i10);
        }

        public boolean b(int... iArr) {
            return this.f24947a.b(iArr);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof c) {
                return this.f24947a.equals(((c) obj).f24947a);
            }
            return false;
        }

        public int hashCode() {
            return this.f24947a.hashCode();
        }
    }

    public interface d {
        void onAvailableCommandsChanged(b bVar);

        void onCues(da.f fVar);

        void onCues(List list);

        void onDeviceInfoChanged(r rVar);

        void onDeviceVolumeChanged(int i10, boolean z10);

        void onEvents(p2 p2Var, c cVar);

        void onIsLoadingChanged(boolean z10);

        void onIsPlayingChanged(boolean z10);

        void onLoadingChanged(boolean z10);

        void onMediaItemTransition(w1 w1Var, int i10);

        void onMediaMetadataChanged(b2 b2Var);

        void onMetadata(Metadata metadata);

        void onPlayWhenReadyChanged(boolean z10, int i10);

        void onPlaybackParametersChanged(o2 o2Var);

        void onPlaybackStateChanged(int i10);

        void onPlaybackSuppressionReasonChanged(int i10);

        void onPlayerError(PlaybackException playbackException);

        void onPlayerErrorChanged(PlaybackException playbackException);

        void onPlayerStateChanged(boolean z10, int i10);

        void onPositionDiscontinuity(int i10);

        void onPositionDiscontinuity(e eVar, e eVar2, int i10);

        void onRenderedFirstFrame();

        void onRepeatModeChanged(int i10);

        void onSeekProcessed();

        void onShuffleModeEnabledChanged(boolean z10);

        void onSkipSilenceEnabledChanged(boolean z10);

        void onSurfaceSizeChanged(int i10, int i11);

        void onTimelineChanged(l3 l3Var, int i10);

        void onTrackSelectionParametersChanged(na.z zVar);

        void onTracksChanged(q3 q3Var);

        void onVideoSizeChanged(com.google.android.exoplayer2.video.y yVar);

        void onVolumeChanged(float f10);
    }

    public static final class e implements k {

        public static final k.a f24948k = new k.a() {
            @Override
            public final k a(Bundle bundle) {
                return p2.e.b(bundle);
            }
        };

        public final Object f24949a;

        public final int f24950b;

        public final int f24951c;

        public final w1 f24952d;

        public final Object f24953e;

        public final int f24954f;

        public final long f24955g;

        public final long f24956h;

        public final int f24957i;

        public final int f24958j;

        public e(Object obj, int i10, w1 w1Var, Object obj2, int i11, long j10, long j11, int i12, int i13) {
            this.f24949a = obj;
            this.f24950b = i10;
            this.f24951c = i10;
            this.f24952d = w1Var;
            this.f24953e = obj2;
            this.f24954f = i11;
            this.f24955g = j10;
            this.f24956h = j11;
            this.f24957i = i12;
            this.f24958j = i13;
        }

        public static e b(Bundle bundle) {
            int i10 = bundle.getInt(c(0), -1);
            Bundle bundle2 = bundle.getBundle(c(1));
            return new e(null, i10, bundle2 == null ? null : (w1) w1.f27147j.a(bundle2), null, bundle.getInt(c(2), -1), bundle.getLong(c(3), C.TIME_UNSET), bundle.getLong(c(4), C.TIME_UNSET), bundle.getInt(c(5), -1), bundle.getInt(c(6), -1));
        }

        private static String c(int i10) {
            return Integer.toString(i10, 36);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return this.f24951c == eVar.f24951c && this.f24954f == eVar.f24954f && this.f24955g == eVar.f24955g && this.f24956h == eVar.f24956h && this.f24957i == eVar.f24957i && this.f24958j == eVar.f24958j && com.google.common.base.j.a(this.f24949a, eVar.f24949a) && com.google.common.base.j.a(this.f24953e, eVar.f24953e) && com.google.common.base.j.a(this.f24952d, eVar.f24952d);
        }

        public int hashCode() {
            return com.google.common.base.j.b(this.f24949a, Integer.valueOf(this.f24951c), this.f24952d, this.f24953e, Integer.valueOf(this.f24954f), Long.valueOf(this.f24955g), Long.valueOf(this.f24956h), Integer.valueOf(this.f24957i), Integer.valueOf(this.f24958j));
        }

        @Override
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(c(0), this.f24951c);
            if (this.f24952d != null) {
                bundle.putBundle(c(1), this.f24952d.toBundle());
            }
            bundle.putInt(c(2), this.f24954f);
            bundle.putLong(c(3), this.f24955g);
            bundle.putLong(c(4), this.f24956h);
            bundle.putInt(c(5), this.f24957i);
            bundle.putInt(c(6), this.f24958j);
            return bundle;
        }
    }

    boolean A();

    void B(d dVar);

    void C(w1 w1Var);

    void D(na.z zVar);

    void E(d dVar);

    void b(o2 o2Var);

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

    l3 getCurrentTimeline();

    q3 getCurrentTracks();

    long getDuration();

    boolean getPlayWhenReady();

    o2 getPlaybackParameters();

    int getPlaybackState();

    int getRepeatMode();

    boolean getShuffleModeEnabled();

    float getVolume();

    da.f h();

    boolean i(int i10);

    boolean isPlaying();

    boolean isPlayingAd();

    boolean j();

    int k();

    Looper l();

    na.z m();

    void n();

    b o();

    long p();

    void pause();

    void play();

    void prepare();

    com.google.android.exoplayer2.video.y q();

    boolean r();

    void release();

    long s();

    void seekTo(int i10, long j10);

    void seekTo(long j10);

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

    b2 y();

    long z();
}
