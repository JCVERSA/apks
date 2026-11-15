package com.google.android.exoplayer2.upstream;

import android.os.Handler;
import java.util.concurrent.CopyOnWriteArrayList;

public interface e {

    public interface a {

        public static final class C0356a {

            private final CopyOnWriteArrayList f26624a = new CopyOnWriteArrayList();

            static final class C0357a {

                private final Handler f26625a;

                private final a f26626b;

                private boolean f26627c;

                public C0357a(Handler handler, a aVar) {
                    this.f26625a = handler;
                    this.f26626b = aVar;
                }

                public void d() {
                    this.f26627c = true;
                }
            }

            public static void d(C0357a c0357a, int i10, long j10, long j11) {
                c0357a.f26626b.onBandwidthSample(i10, j10, j11);
            }

            public void b(Handler handler, a aVar) {
                com.google.android.exoplayer2.util.a.e(handler);
                com.google.android.exoplayer2.util.a.e(aVar);
                e(aVar);
                this.f26624a.add(new C0357a(handler, aVar));
            }

            public void c(final int i10, final long j10, final long j11) {
                for (final C0357a c0357a : this.f26624a) {
                    if (!c0357a.f26627c) {
                        c0357a.f26625a.post(new Runnable() {
                            @Override
                            public final void run() {
                                e.a.C0356a.d(c0357a, i10, j10, j11);
                            }
                        });
                    }
                }
            }

            public void e(a aVar) {
                for (C0357a c0357a : this.f26624a) {
                    if (c0357a.f26626b == aVar) {
                        c0357a.d();
                        this.f26624a.remove(c0357a);
                    }
                }
            }
        }

        void onBandwidthSample(int i10, long j10, long j11);
    }

    long a();

    k0 b();

    void d(a aVar);

    void f(Handler handler, a aVar);

    long getBitrateEstimate();
}
