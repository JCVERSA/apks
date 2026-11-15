package androidx.media3.ui;

public interface y0 {

    public interface a {
        void l(y0 y0Var, long j10);

        void p(y0 y0Var, long j10);

        void r(y0 y0Var, long j10, boolean z10);
    }

    void addListener(a aVar);

    long getPreferredUpdateDelay();

    void setAdGroupTimesMs(long[] jArr, boolean[] zArr, int i10);

    void setBufferedPosition(long j10);

    void setDuration(long j10);

    void setEnabled(boolean z10);

    void setPosition(long j10);
}
