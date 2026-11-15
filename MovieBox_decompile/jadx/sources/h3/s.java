package h3;

import com.mbridge.msdk.playercommon.exoplayer2.C;

public interface s {

    public interface a {

        public static final a f61264a = new C0743a();

        class C0743a implements a {
            C0743a() {
            }

            @Override
            public boolean a(androidx.media3.common.r rVar) {
                return false;
            }

            @Override
            public int b(androidx.media3.common.r rVar) {
                return 1;
            }

            @Override
            public s c(androidx.media3.common.r rVar) {
                throw new IllegalStateException("This SubtitleParser.Factory doesn't support any formats.");
            }
        }

        boolean a(androidx.media3.common.r rVar);

        int b(androidx.media3.common.r rVar);

        s c(androidx.media3.common.r rVar);
    }

    public static class b {

        private static final b f61265c = new b(C.TIME_UNSET, false);

        public final long f61266a;

        public final boolean f61267b;

        private b(long j10, boolean z10) {
            this.f61266a = j10;
            this.f61267b = z10;
        }

        public static b b() {
            return f61265c;
        }

        public static b c(long j10) {
            return new b(j10, true);
        }
    }

    k a(byte[] bArr, int i10, int i11);

    void b(byte[] bArr, int i10, int i11, b bVar, androidx.media3.common.util.m mVar);

    int c();

    void reset();
}
