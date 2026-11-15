package com.yandex.mobile.ads.impl;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;

public interface ww0 {

    public static class a {
        public final int a;

        @Nullable
        public final vw0.b b;
        private final CopyOnWriteArrayList<C0333a> c;
        private final long d;

        public static final class C0333a {
            public Handler a;
            public ww0 b;

            public C0333a(Handler handler, ww0 ww0Var) {
                this.a = handler;
                this.b = ww0Var;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        private a(CopyOnWriteArrayList copyOnWriteArrayList, int i, @Nullable vw0.b bVar) {
            this.c = copyOnWriteArrayList;
            this.a = i;
            this.b = bVar;
            this.d = 0L;
        }

        public void b(ww0 ww0Var, es0 es0Var, lw0 lw0Var) {
            ww0Var.b(this.a, this.b, es0Var, lw0Var);
        }

        public void c(ww0 ww0Var, es0 es0Var, lw0 lw0Var) {
            ww0Var.c(this.a, this.b, es0Var, lw0Var);
        }

        public final void a(Handler handler, ww0 ww0Var) {
            ww0Var.getClass();
            this.c.add(new C0333a(handler, ww0Var));
        }

        public final void b(final es0 es0Var, final lw0 lw0Var) {
            for (C0333a c0333a : this.c) {
                final ww0 ww0Var = c0333a.b;
                f92.a(c0333a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.b(ww0Var, es0Var, lw0Var);
                    }
                });
            }
        }

        public final void c(final es0 es0Var, final lw0 lw0Var) {
            for (C0333a c0333a : this.c) {
                final ww0 ww0Var = c0333a.b;
                f92.a(c0333a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.c(ww0Var, es0Var, lw0Var);
                    }
                });
            }
        }

        private long a(long j) {
            long jB = f92.b(j);
            return jB == C.TIME_UNSET ? C.TIME_UNSET : this.d + jB;
        }

        public final void a(int i, @Nullable jc0 jc0Var, long j) {
            a(new lw0(1, i, jc0Var, 0, null, a(j), C.TIME_UNSET));
        }

        public final void b(es0 es0Var, @Nullable jc0 jc0Var, long j, long j2) {
            c(es0Var, new lw0(1, -1, jc0Var, 0, null, a(j), a(j2)));
        }

        public final void a(final lw0 lw0Var) {
            for (C0333a c0333a : this.c) {
                final ww0 ww0Var = c0333a.b;
                f92.a(c0333a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.a(ww0Var, lw0Var);
                    }
                });
            }
        }

        public void a(ww0 ww0Var, lw0 lw0Var) {
            ww0Var.a(this.a, this.b, lw0Var);
        }

        public void a(ww0 ww0Var, es0 es0Var, lw0 lw0Var) {
            ww0Var.a(this.a, this.b, es0Var, lw0Var);
        }

        public void a(ww0 ww0Var, es0 es0Var, lw0 lw0Var, IOException iOException, boolean z) {
            ww0Var.a(this.a, this.b, es0Var, lw0Var, iOException, z);
        }

        public final void a(es0 es0Var, long j, long j2) {
            a(es0Var, new lw0(1, -1, null, 0, null, a(j), a(j2)));
        }

        public final void a(final es0 es0Var, final lw0 lw0Var) {
            for (C0333a c0333a : this.c) {
                final ww0 ww0Var = c0333a.b;
                f92.a(c0333a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.a(ww0Var, es0Var, lw0Var);
                    }
                });
            }
        }

        public final void a(es0 es0Var, @Nullable jc0 jc0Var, long j, long j2) {
            b(es0Var, new lw0(1, -1, jc0Var, 0, null, a(j), a(j2)));
        }

        public final void a(es0 es0Var, int i, @Nullable jc0 jc0Var, long j, long j2, IOException iOException, boolean z) {
            a(es0Var, new lw0(i, -1, jc0Var, 0, null, a(j), a(j2)), iOException, z);
        }

        public final void a(final es0 es0Var, final lw0 lw0Var, final IOException iOException, final boolean z) {
            for (C0333a c0333a : this.c) {
                final ww0 ww0Var = c0333a.b;
                f92.a(c0333a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.a(ww0Var, es0Var, lw0Var, iOException, z);
                    }
                });
            }
        }

        public final void a(ww0 ww0Var) {
            for (C0333a c0333a : this.c) {
                if (c0333a.b == ww0Var) {
                    this.c.remove(c0333a);
                }
            }
        }

        @CheckResult
        public final a a(int i, @Nullable vw0.b bVar) {
            return new a(this.c, i, bVar);
        }
    }

    default void a(int i, @Nullable vw0.b bVar, es0 es0Var, lw0 lw0Var) {
    }

    default void b(int i, @Nullable vw0.b bVar, es0 es0Var, lw0 lw0Var) {
    }

    default void c(int i, @Nullable vw0.b bVar, es0 es0Var, lw0 lw0Var) {
    }

    default void a(int i, @Nullable vw0.b bVar, es0 es0Var, lw0 lw0Var, IOException iOException, boolean z) {
    }

    default void a(int i, @Nullable vw0.b bVar, lw0 lw0Var) {
    }
}
