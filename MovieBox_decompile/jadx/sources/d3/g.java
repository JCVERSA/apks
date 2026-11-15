package d3;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import k2.m0;

interface g extends m0 {

    public static class a extends m0.b implements g {
        public a() {
            super(C.TIME_UNSET);
        }

        @Override
        public long a() {
            return -1L;
        }

        @Override
        public int g() {
            return -2147483647;
        }

        @Override
        public long getTimeUs(long j10) {
            return 0L;
        }
    }

    long a();

    int g();

    long getTimeUs(long j10);
}
