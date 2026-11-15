package x9;

import com.google.android.exoplayer2.d3;
import com.google.android.exoplayer2.upstream.z;
import java.util.List;

public interface j {
    long b(long j10, d3 d3Var);

    boolean d(long j10, f fVar, List list);

    boolean f(f fVar, boolean z10, z.c cVar, z zVar);

    void g(long j10, long j11, List list, h hVar);

    int getPreferredQueueSize(long j10, List list);

    void h(f fVar);

    void maybeThrowError();

    void release();
}
