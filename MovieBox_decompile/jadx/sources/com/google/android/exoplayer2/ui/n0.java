package com.google.android.exoplayer2.ui;

public interface n0 {

    public interface a {
        void l(n0 n0Var, long j10);

        void p(n0 n0Var, long j10, boolean z10);

        void s(n0 n0Var, long j10);
    }

    void addListener(a aVar);

    long getPreferredUpdateDelay();

    void setAdGroupTimesMs(long[] jArr, boolean[] zArr, int i10);

    void setBufferedPosition(long j10);

    void setDuration(long j10);

    void setEnabled(boolean z10);

    void setPosition(long j10);
}
