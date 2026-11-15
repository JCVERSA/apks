package com.google.android.exoplayer2.source;

public interface q {

    public interface a {
        void b(q qVar);
    }

    boolean continueLoading(long j);

    long getBufferedPositionUs();

    long getNextLoadPositionUs();

    boolean isLoading();

    void reevaluateBuffer(long j);
}
