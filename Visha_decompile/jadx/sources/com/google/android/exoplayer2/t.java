package com.google.android.exoplayer2;

import android.os.Bundle;
import android.view.TextureView;
import androidx.media3.common.C;
import com.google.android.exoplayer2.e;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.t;
import defpackage.f7c;
import defpackage.kc7;
import defpackage.pva;
import defpackage.qm1;
import defpackage.zx3;
import java.util.ArrayList;
import java.util.List;

public interface t {

    public static final class b implements com.google.android.exoplayer2.e {
        public static final b c = new a().e();
        public static final com.google.android.exoplayer2.e.a d = new com.google.android.exoplayer2.e.a() {
            @Override
            public final e fromBundle(Bundle bundle) {
                return t.b.c(bundle);
            }
        };
        public final zx3 b;

        public static final class a {
            public static final int[] b = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 31, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30};
            public final zx3.b a = new zx3.b();

            public a a(int i) {
                this.a.a(i);
                return this;
            }

            public a b(b bVar) {
                this.a.b(bVar.b);
                return this;
            }

            public a c(int... iArr) {
                this.a.c(iArr);
                return this;
            }

            public a d(int i, boolean z) {
                this.a.d(i, z);
                return this;
            }

            public b e() {
                return new b(this.a.e());
            }
        }

        public static b c(Bundle bundle) {
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(d(0));
            if (integerArrayList == null) {
                return c;
            }
            a aVar = new a();
            for (int i = 0; i < integerArrayList.size(); i++) {
                aVar.a(integerArrayList.get(i).intValue());
            }
            return aVar.e();
        }

        private static String d(int i) {
            return Integer.toString(i, 36);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                return this.b.equals(((b) obj).b);
            }
            return false;
        }

        public int hashCode() {
            return this.b.hashCode();
        }

        @Override
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            ArrayList<Integer> arrayList = new ArrayList<>();
            for (int i = 0; i < this.b.c(); i++) {
                arrayList.add(Integer.valueOf(this.b.b(i)));
            }
            bundle.putIntegerArrayList(d(0), arrayList);
            return bundle;
        }

        public b(zx3 zx3Var) {
            this.b = zx3Var;
        }
    }

    public static final class c {
        public final zx3 a;

        public c(zx3 zx3Var) {
            this.a = zx3Var;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof c) {
                return this.a.equals(((c) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return this.a.hashCode();
        }
    }

    public interface d {
        default void onAudioAttributesChanged(com.google.android.exoplayer2.audio.a aVar) {
        }

        default void onAudioSessionIdChanged(int i) {
        }

        default void onAvailableCommandsChanged(b bVar) {
        }

        default void onCues(List list) {
        }

        default void onDeviceInfoChanged(h hVar) {
        }

        default void onDeviceVolumeChanged(int i, boolean z) {
        }

        default void onEvents(t tVar, c cVar) {
        }

        default void onIsLoadingChanged(boolean z) {
        }

        default void onIsPlayingChanged(boolean z) {
        }

        default void onLoadingChanged(boolean z) {
        }

        default void onMaxSeekToPreviousPositionChanged(long j) {
        }

        default void onMediaItemTransition(n nVar, int i) {
        }

        default void onMediaMetadataChanged(o oVar) {
        }

        default void onMetadata(Metadata metadata) {
        }

        default void onPlayWhenReadyChanged(boolean z, int i) {
        }

        default void onPlaybackParametersChanged(s sVar) {
        }

        void onPlaybackStateChanged(int i);

        default void onPlaybackSuppressionReasonChanged(int i) {
        }

        default void onPlayerError(PlaybackException playbackException) {
        }

        default void onPlayerErrorChanged(PlaybackException playbackException) {
        }

        default void onPlayerStateChanged(boolean z, int i) {
        }

        default void onPlaylistMetadataChanged(o oVar) {
        }

        default void onPositionDiscontinuity(int i) {
        }

        default void onRenderedFirstFrame() {
        }

        default void onRepeatModeChanged(int i) {
        }

        default void onSeekBackIncrementChanged(long j) {
        }

        default void onSeekForwardIncrementChanged(long j) {
        }

        default void onSeekProcessed() {
        }

        default void onShuffleModeEnabledChanged(boolean z) {
        }

        default void onSkipSilenceEnabledChanged(boolean z) {
        }

        default void onSurfaceSizeChanged(int i, int i2) {
        }

        default void onTimelineChanged(a0 a0Var, int i) {
        }

        default void onTrackSelectionParametersChanged(pva pvaVar) {
        }

        default void onTracksChanged(b0 b0Var) {
        }

        default void onVideoSizeChanged(f7c f7cVar) {
        }

        default void onVolumeChanged(float f) {
        }

        default void onCues(qm1 qm1Var) {
        }

        default void onPositionDiscontinuity(e eVar, e eVar2, int i) {
        }
    }

    public static final class e implements com.google.android.exoplayer2.e {
        public static final com.google.android.exoplayer2.e.a l = new com.google.android.exoplayer2.e.a() {
            @Override
            public final e fromBundle(Bundle bundle) {
                return t.e.b(bundle);
            }
        };
        public final Object b;
        public final int c;
        public final int d;
        public final n e;
        public final Object f;
        public final int g;
        public final long h;
        public final long i;
        public final int j;
        public final int k;

        public e(Object obj, int i, n nVar, Object obj2, int i2, long j, long j2, int i3, int i4) {
            this.b = obj;
            this.c = i;
            this.d = i;
            this.e = nVar;
            this.f = obj2;
            this.g = i2;
            this.h = j;
            this.i = j2;
            this.j = i3;
            this.k = i4;
        }

        public static e b(Bundle bundle) {
            int i = bundle.getInt(c(0), -1);
            Bundle bundle2 = bundle.getBundle(c(1));
            return new e(null, i, bundle2 == null ? null : (n) n.k.fromBundle(bundle2), null, bundle.getInt(c(2), -1), bundle.getLong(c(3), C.TIME_UNSET), bundle.getLong(c(4), C.TIME_UNSET), bundle.getInt(c(5), -1), bundle.getInt(c(6), -1));
        }

        private static String c(int i) {
            return Integer.toString(i, 36);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return this.d == eVar.d && this.g == eVar.g && this.h == eVar.h && this.i == eVar.i && this.j == eVar.j && this.k == eVar.k && kc7.a(this.b, eVar.b) && kc7.a(this.f, eVar.f) && kc7.a(this.e, eVar.e);
        }

        public int hashCode() {
            return kc7.b(this.b, Integer.valueOf(this.d), this.e, this.f, Integer.valueOf(this.g), Long.valueOf(this.h), Long.valueOf(this.i), Integer.valueOf(this.j), Integer.valueOf(this.k));
        }

        @Override
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(c(0), this.d);
            if (this.e != null) {
                bundle.putBundle(c(1), this.e.toBundle());
            }
            bundle.putInt(c(2), this.g);
            bundle.putLong(c(3), this.h);
            bundle.putLong(c(4), this.i);
            bundle.putInt(c(5), this.j);
            bundle.putInt(c(6), this.k);
            return bundle;
        }
    }

    void b(d dVar);

    void c(n nVar);

    void clearVideoSurface();

    void d(d dVar);

    long getContentDuration();

    long getContentPosition();

    int getCurrentAdGroupIndex();

    int getCurrentAdIndexInAdGroup();

    int getCurrentMediaItemIndex();

    int getCurrentPeriodIndex();

    long getCurrentPosition();

    a0 getCurrentTimeline();

    b0 getCurrentTracks();

    long getDuration();

    boolean getPlayWhenReady();

    int getPlaybackState();

    int getPlaybackSuppressionReason();

    PlaybackException getPlayerError();

    int getRepeatMode();

    boolean getShuffleModeEnabled();

    long getTotalBufferedDuration();

    f7c getVideoSize();

    float getVolume();

    boolean hasNextMediaItem();

    boolean hasPreviousMediaItem();

    boolean isCurrentMediaItemDynamic();

    boolean isCurrentMediaItemLive();

    boolean isCurrentMediaItemSeekable();

    boolean isPlaying();

    boolean isPlayingAd();

    void pause();

    void play();

    void prepare();

    void release();

    void seekTo(int i, long j);

    void seekTo(long j);

    void setMediaItems(List list, boolean z);

    void setPlayWhenReady(boolean z);

    void setVideoTextureView(TextureView textureView);

    void setVolume(float f);

    void stop();
}
