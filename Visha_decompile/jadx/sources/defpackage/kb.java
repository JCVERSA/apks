package defpackage;

import android.os.Looper;
import com.google.android.exoplayer2.drm.b;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.source.i;
import com.google.android.exoplayer2.source.j;
import com.google.android.exoplayer2.t;
import java.util.List;

public interface kb extends t.d, j, o70.a, b {
    void a(k kVar, lu1 lu1Var);

    void b(ju1 ju1Var);

    void c(ju1 ju1Var);

    void d(ju1 ju1Var);

    void e(ju1 ju1Var);

    void f(k kVar, lu1 lu1Var);

    void h(t tVar, Looper looper);

    void notifySeekStarted();

    void onAudioCodecError(Exception exc);

    void onAudioDecoderInitialized(String str, long j, long j2);

    void onAudioDecoderReleased(String str);

    void onAudioPositionAdvancing(long j);

    void onAudioSinkError(Exception exc);

    void onAudioUnderrun(int i, long j, long j2);

    void onDroppedFrames(int i, long j);

    void onRenderedFirstFrame(Object obj, long j);

    void onVideoCodecError(Exception exc);

    void onVideoDecoderInitialized(String str, long j, long j2);

    void onVideoDecoderReleased(String str);

    void onVideoFrameProcessingOffset(long j, int i);

    void q(List list, i.b bVar);

    void r(nb nbVar);

    void release();
}
