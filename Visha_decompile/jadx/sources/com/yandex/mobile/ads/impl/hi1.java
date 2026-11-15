package com.yandex.mobile.ads.impl;

import android.os.Bundle;
import android.view.TextureView;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import com.google.android.material.color.utilities.Contrast;
import com.yandex.mobile.ads.impl.hi1;
import com.yandex.mobile.ads.impl.km;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public interface hi1 {

    public static final class a implements km {
        public static final a c = new a(new bc0.a().a());
        private final bc0 b;

        public static final class C0316a {
            private final bc0.a a = new bc0.a();

            public final C0316a a(int i) {
                this.a.a(i);
                return this;
            }

            public final C0316a a(a aVar) {
                this.a.a(aVar.b);
                return this;
            }

            public final C0316a a(int... iArr) {
                bc0.a aVar = this.a;
                aVar.getClass();
                for (int i : iArr) {
                    aVar.a(i);
                }
                return this;
            }

            public final C0316a a(boolean z, int i) {
                bc0.a aVar = this.a;
                if (z) {
                    aVar.a(i);
                } else {
                    aVar.getClass();
                }
                return this;
            }

            public final a a() {
                return new a(this.a.a());
            }
        }

        static {
            new km.a() {
                @Override
                public final km fromBundle(Bundle bundle) {
                    return hi1.a.a(bundle);
                }
            };
        }

        public static a a(Bundle bundle) {
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(Integer.toString(0, 36));
            if (integerArrayList == null) {
                return c;
            }
            bc0.a aVar = new bc0.a();
            for (int i = 0; i < integerArrayList.size(); i++) {
                aVar.a(integerArrayList.get(i).intValue());
            }
            return new a(aVar.a());
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                return this.b.equals(((a) obj).b);
            }
            return false;
        }

        public final int hashCode() {
            return this.b.hashCode();
        }

        private a(bc0 bc0Var) {
            this.b = bc0Var;
        }
    }

    public interface b {
        default void a(int i) {
        }

        default void b(m60 m60Var) {
        }

        @Deprecated
        default void onCues(List<hv> list) {
        }

        default void onIsLoadingChanged(boolean z) {
        }

        default void onIsPlayingChanged(boolean z) {
        }

        default void onPlayWhenReadyChanged(boolean z, int i) {
        }

        default void onPlaybackStateChanged(int i) {
        }

        default void onPlaybackSuppressionReasonChanged(int i) {
        }

        @Deprecated
        default void onPlayerStateChanged(boolean z, int i) {
        }

        default void onRenderedFirstFrame() {
        }

        default void onSkipSilenceEnabledChanged(boolean z) {
        }

        default void onSurfaceSizeChanged(int i, int i2) {
        }

        default void onVolumeChanged(float f) {
        }

        default void a(b72 b72Var) {
        }

        default void a(bi1 bi1Var) {
        }

        default void a(cg2 cg2Var) {
        }

        default void a(a aVar) {
        }

        default void a(c cVar, c cVar2, int i) {
        }

        default void a(i10 i10Var) {
        }

        default void a(jv jvVar) {
        }

        default void a(@Nullable jw0 jw0Var, int i) {
        }

        default void a(k01 k01Var) {
        }

        default void a(@Nullable m60 m60Var) {
        }

        default void a(mw0 mw0Var) {
        }

        default void a(boolean z, int i) {
        }
    }

    public static final class c implements km {

        @Nullable
        public final Object b;
        public final int c;

        @Nullable
        public final jw0 d;

        @Nullable
        public final Object e;
        public final int f;
        public final long g;
        public final long h;
        public final int i;
        public final int j;

        static {
            new km.a() {
                @Override
                public final km fromBundle(Bundle bundle) {
                    return hi1.c.a(bundle);
                }
            };
        }

        public c(@Nullable Object obj, int i, @Nullable jw0 jw0Var, @Nullable Object obj2, int i2, long j, long j2, int i3, int i4) {
            this.b = obj;
            this.c = i;
            this.d = jw0Var;
            this.e = obj2;
            this.f = i2;
            this.g = j;
            this.h = j2;
            this.i = i3;
            this.j = i4;
        }

        public static c a(Bundle bundle) {
            int i = bundle.getInt(Integer.toString(0, 36), -1);
            Bundle bundle2 = bundle.getBundle(Integer.toString(1, 36));
            return new c(null, i, bundle2 == null ? null : (jw0) jw0.h.fromBundle(bundle2), null, bundle.getInt(Integer.toString(2, 36), -1), bundle.getLong(Integer.toString(3, 36), C.TIME_UNSET), bundle.getLong(Integer.toString(4, 36), C.TIME_UNSET), bundle.getInt(Integer.toString(5, 36), -1), bundle.getInt(Integer.toString(6, 36), -1));
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            return this.c == cVar.c && this.f == cVar.f && this.g == cVar.g && this.h == cVar.h && this.i == cVar.i && this.j == cVar.j && zd1.a(this.b, cVar.b) && zd1.a(this.e, cVar.e) && zd1.a(this.d, cVar.d);
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{this.b, Integer.valueOf(this.c), this.d, this.e, Integer.valueOf(this.f), Long.valueOf(this.g), Long.valueOf(this.h), Integer.valueOf(this.i), Integer.valueOf(this.j)});
        }
    }

    @Nullable
    m60 a();

    void a(b bVar);

    void b(b bVar);

    long getContentPosition();

    int getCurrentAdGroupIndex();

    int getCurrentAdIndexInAdGroup();

    int getCurrentMediaItemIndex();

    int getCurrentPeriodIndex();

    long getCurrentPosition();

    i52 getCurrentTimeline();

    b72 getCurrentTracks();

    long getDuration();

    boolean getPlayWhenReady();

    int getPlaybackState();

    int getPlaybackSuppressionReason();

    long getTotalBufferedDuration();

    @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN)
    float getVolume();

    boolean hasNextMediaItem();

    boolean hasPreviousMediaItem();

    boolean isCurrentMediaItemDynamic();

    boolean isCurrentMediaItemLive();

    boolean isCurrentMediaItemSeekable();

    boolean isPlayingAd();

    void prepare();

    void release();

    void setPlayWhenReady(boolean z);

    void setVideoTextureView(@Nullable TextureView textureView);

    void setVolume(@FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f);

    void stop();
}
