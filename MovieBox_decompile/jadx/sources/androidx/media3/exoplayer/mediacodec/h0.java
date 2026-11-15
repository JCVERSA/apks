package androidx.media3.exoplayer.mediacodec;

import java.util.List;

public interface h0 {

    public static final h0 f11899a = new h0() {
        @Override
        public final List a(String str, boolean z10, boolean z11) {
            return MediaCodecUtil.k(str, z10, z11);
        }
    };

    public static final h0 f11900b = new h0() {
        @Override
        public final List a(String str, boolean z10, boolean z11) {
            return MediaCodecUtil.o(h0.f11899a.a(str, z10, z11));
        }
    };

    List a(String str, boolean z10, boolean z11);
}
