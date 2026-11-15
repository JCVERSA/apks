package com.google.android.exoplayer2.source;

public interface b0 {

    public interface a {
        void g(b0 b0Var);
    }

    boolean continueLoading(long j10);

    long getBufferedPositionUs();

    long getNextLoadPositionUs();

    boolean isLoading();

    void reevaluateBuffer(long j10);
}
