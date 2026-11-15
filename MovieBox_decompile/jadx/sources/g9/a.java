package g9;

import android.os.Looper;
import com.google.android.exoplayer2.p2;
import java.util.List;

public interface a extends p2.d, com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.upstream.e.a, com.google.android.exoplayer2.drm.s {
    void a(Exception exc);

    void b(String str);

    void c(String str);

    void d(long j10);

    void e(Exception exc);

    void f(Object obj, long j10);

    void g(Exception exc);

    void h(int i10, long j10, long j11);

    void i(long j10, int i10);

    void j(com.google.android.exoplayer2.decoder.e eVar);

    void k(com.google.android.exoplayer2.p1 p1Var, com.google.android.exoplayer2.decoder.g gVar);

    void m();

    void n(com.google.android.exoplayer2.decoder.e eVar);

    void o(com.google.android.exoplayer2.decoder.e eVar);

    void onAudioDecoderInitialized(String str, long j10, long j11);

    void onDroppedFrames(int i10, long j10);

    void onVideoDecoderInitialized(String str, long j10, long j11);

    void q(c cVar);

    void r(p2 p2Var, Looper looper);

    void release();

    void t(com.google.android.exoplayer2.p1 p1Var, com.google.android.exoplayer2.decoder.g gVar);

    void v(com.google.android.exoplayer2.decoder.e eVar);

    void x(List list, com.google.android.exoplayer2.source.o.b bVar);
}
