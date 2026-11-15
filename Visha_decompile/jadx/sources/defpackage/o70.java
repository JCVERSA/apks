package defpackage;

import android.os.Handler;
import java.util.concurrent.CopyOnWriteArrayList;

public interface o70 {

    public interface a {

        public static final class C0428a {
            public final CopyOnWriteArrayList a = new CopyOnWriteArrayList();

            public static final class C0429a {
                public final Handler a;
                public final a b;
                public boolean c;

                public C0429a(Handler handler, a aVar) {
                    this.a = handler;
                    this.b = aVar;
                }

                public void d() {
                    this.c = true;
                }
            }

            public static void d(C0429a c0429a, int i, long j, long j2) {
                c0429a.b.onBandwidthSample(i, j, j2);
            }

            public void b(Handler handler, a aVar) {
                zi.e(handler);
                zi.e(aVar);
                e(aVar);
                this.a.add(new C0429a(handler, aVar));
            }

            public void c(final int i, final long j, final long j2) {
                for (final C0429a c0429a : this.a) {
                    if (!c0429a.c) {
                        c0429a.a.post(new Runnable() {
                            @Override
                            public final void run() {
                                o70.a.C0428a.d(c0429a, i, j, j2);
                            }
                        });
                    }
                }
            }

            public void e(a aVar) {
                for (C0429a c0429a : this.a) {
                    if (c0429a.b == aVar) {
                        c0429a.d();
                        this.a.remove(c0429a);
                    }
                }
            }
        }

        void onBandwidthSample(int i, long j, long j2);
    }

    void d(a aVar);

    void e(Handler handler, a aVar);

    u5b getTransferListener();
}
