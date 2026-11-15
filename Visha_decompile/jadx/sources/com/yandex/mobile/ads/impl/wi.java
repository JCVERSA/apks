package com.yandex.mobile.ads.impl;

import android.os.Handler;
import androidx.annotation.Nullable;
import java.util.concurrent.CopyOnWriteArrayList;

public interface wi {
    @Nullable
    jz a();

    void a(Handler handler, ed edVar);

    void a(ed edVar);

    public interface a {
        void b(int i, long j, long j2);

        public static final class C0331a {
            private final CopyOnWriteArrayList<C0332a> a = new CopyOnWriteArrayList<>();

            public static final class C0332a {
                private final Handler a;
                private final a b;
                private boolean c;

                public C0332a(Handler handler, ed edVar) {
                    this.a = handler;
                    this.b = edVar;
                }
            }

            public final void a(Handler handler, ed edVar) {
                edVar.getClass();
                a(edVar);
                this.a.add(new C0332a(handler, edVar));
            }

            public final void a(final int i, final long j, final long j2) {
                for (final C0332a c0332a : this.a) {
                    if (!c0332a.c) {
                        c0332a.a.post(new Runnable() {
                            @Override
                            public final void run() {
                                wi.a.C0331a.a(c0332a, i, j, j2);
                            }
                        });
                    }
                }
            }

            public static void a(C0332a c0332a, int i, long j, long j2) {
                c0332a.b.b(i, j, j2);
            }

            public final void a(ed edVar) {
                for (C0332a c0332a : this.a) {
                    if (c0332a.b == edVar) {
                        c0332a.c = true;
                        this.a.remove(c0332a);
                    }
                }
            }
        }
    }
}
