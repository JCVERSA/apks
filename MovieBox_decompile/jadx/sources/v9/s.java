package v9;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.q1;

public interface s {
    int a(q1 q1Var, DecoderInputBuffer decoderInputBuffer, int i10);

    boolean isReady();

    void maybeThrowError();

    int skipData(long j10);
}
