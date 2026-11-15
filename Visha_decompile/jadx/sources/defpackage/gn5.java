package defpackage;

import com.google.android.exoplayer2.w;

public interface gn5 {
    void a(w[] wVarArr, eva evaVar, qi3[] qi3VarArr);

    cb getAllocator();

    long getBackBufferDurationUs();

    void onPrepared();

    void onReleased();

    void onStopped();

    boolean retainBackBufferFromKeyframe();

    boolean shouldContinueLoading(long j, long j2, float f);

    boolean shouldStartPlayback(long j, float f, boolean z, long j2);
}
