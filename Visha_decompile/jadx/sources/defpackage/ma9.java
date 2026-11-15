package defpackage;

import androidx.media3.common.C;

public interface ma9 extends ja9 {

    public static class a extends ja9.b implements ma9 {
        public a() {
            super(C.TIME_UNSET);
        }

        @Override
        public long getDataEndPosition() {
            return -1L;
        }

        @Override
        public long getTimeUs(long j) {
            return 0L;
        }
    }

    long getDataEndPosition();

    long getTimeUs(long j);
}
