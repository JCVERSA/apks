package androidx.media3.exoplayer.video;

import android.view.Surface;
import androidx.media3.common.m0;
import androidx.media3.common.util.l0;
import androidx.media3.exoplayer.w3;
import java.util.List;
import java.util.concurrent.Executor;

public interface VideoSink {

    public static final class VideoSinkException extends Exception {
        public final androidx.media3.common.r format;

        public VideoSinkException(Throwable th2, androidx.media3.common.r rVar) {
            super(th2);
            this.format = rVar;
        }
    }

    public interface b {
        void a(long j10);

        void b();
    }

    void a(float f10);

    boolean b(long j10, boolean z10, b bVar);

    void c();

    void d(t tVar);

    void e();

    void f(long j10, long j11);

    void g();

    void h(w3.a aVar);

    void i(List list);

    boolean isEnded();

    boolean isInitialized();

    boolean j(boolean z10);

    boolean k(androidx.media3.common.r rVar);

    void l(boolean z10);

    Surface m();

    void n();

    void o(int i10, androidx.media3.common.r rVar, List list);

    void p(Surface surface, l0 l0Var);

    void q();

    void r(int i10);

    void release();

    void render(long j10, long j11);

    void s();

    void t(boolean z10);

    void u(boolean z10);

    void v(a aVar, Executor executor);

    public interface a {

        public static final a f12761a = new C0099a();

        void a(VideoSink videoSink);

        void b(VideoSink videoSink, m0 m0Var);

        void c(VideoSink videoSink);

        class C0099a implements a {
            C0099a() {
            }

            @Override
            public void a(VideoSink videoSink) {
            }

            @Override
            public void c(VideoSink videoSink) {
            }

            @Override
            public void b(VideoSink videoSink, m0 m0Var) {
            }
        }
    }
}
