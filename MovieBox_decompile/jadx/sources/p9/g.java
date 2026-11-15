package p9;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import i9.b0;

interface g extends b0 {

    public static class a extends b0.b implements g {
        public a() {
            super(C.TIME_UNSET);
        }

        @Override
        public long a() {
            return -1L;
        }

        @Override
        public long getTimeUs(long j10) {
            return 0L;
        }
    }

    long a();

    long getTimeUs(long j10);
}
