package androidx.media3.exoplayer.upstream;

import android.os.Handler;
import java.util.concurrent.CopyOnWriteArrayList;

public interface e {

    public interface a {

        public static final class C0096a {

            private final CopyOnWriteArrayList f12650a = new CopyOnWriteArrayList();

            static final class C0097a {

                private final Handler f12651a;

                private final a f12652b;

                private boolean f12653c;

                public C0097a(Handler handler, a aVar) {
                    this.f12651a = handler;
                    this.f12652b = aVar;
                }

                public void d() {
                    this.f12653c = true;
                }
            }

            public static void d(C0097a c0097a, int i10, long j10, long j11) {
                c0097a.f12652b.onBandwidthSample(i10, j10, j11);
            }

            public void b(Handler handler, a aVar) {
                androidx.media3.common.util.a.e(handler);
                androidx.media3.common.util.a.e(aVar);
                e(aVar);
                this.f12650a.add(new C0097a(handler, aVar));
            }

            public void c(final int i10, final long j10, final long j11) {
                for (final C0097a c0097a : this.f12650a) {
                    if (!c0097a.f12653c) {
                        c0097a.f12651a.post(new Runnable() {
                            @Override
                            public final void run() {
                                e.a.C0096a.d(c0097a, i10, j10, j11);
                            }
                        });
                    }
                }
            }

            public void e(a aVar) {
                for (C0097a c0097a : this.f12650a) {
                    if (c0097a.f12652b == aVar) {
                        c0097a.d();
                        this.f12650a.remove(c0097a);
                    }
                }
            }
        }

        void onBandwidthSample(int i10, long j10, long j11);
    }

    long a();

    w1.n b();

    void c(a aVar);

    void d(Handler handler, a aVar);

    long getBitrateEstimate();
}
