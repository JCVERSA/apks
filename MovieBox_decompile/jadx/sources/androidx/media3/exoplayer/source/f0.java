package androidx.media3.exoplayer.source;

import androidx.media3.exoplayer.v2;

public interface f0 {

    public interface a {
        void h(f0 f0Var);
    }

    boolean a(v2 v2Var);

    long getBufferedPositionUs();

    long getNextLoadPositionUs();

    boolean isLoading();

    void reevaluateBuffer(long j10);
}
