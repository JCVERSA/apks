package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import androidx.annotation.Nullable;

public interface vf2 {

    public static final class a {

        @Nullable
        private final Handler a;

        @Nullable
        private final vf2 b;

        public a(@Nullable Handler handler, @Nullable vf2 vf2Var) {
            this.a = (Handler) hg.a(handler);
            this.b = vf2Var;
        }

        public void c(py pyVar) {
            synchronized (pyVar) {
            }
            vf2 vf2Var = this.b;
            int i = f92.a;
            vf2Var.c(pyVar);
        }

        public void d(py pyVar) {
            vf2 vf2Var = this.b;
            int i = f92.a;
            vf2Var.d(pyVar);
        }

        public final void a(final String str, final long j, final long j2) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.b(str, j, j2);
                    }
                });
            }
        }

        public final void b(final py pyVar) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.d(pyVar);
                    }
                });
            }
        }

        public void b(String str, long j, long j2) {
            vf2 vf2Var = this.b;
            int i = f92.a;
            vf2Var.a(str, j, j2);
        }

        public final void a(final String str) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.b(str);
                    }
                });
            }
        }

        public void b(String str) {
            vf2 vf2Var = this.b;
            int i = f92.a;
            vf2Var.a(str);
        }

        public final void a(final py pyVar) {
            synchronized (pyVar) {
            }
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.c(pyVar);
                    }
                });
            }
        }

        public final void c(final int i, final long j) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.a(j, i);
                    }
                });
            }
        }

        public void b(int i, long j) {
            vf2 vf2Var = this.b;
            int i2 = f92.a;
            vf2Var.b(i, j);
        }

        public void b(jc0 jc0Var, ty tyVar) {
            vf2 vf2Var = this.b;
            int i = f92.a;
            vf2Var.getClass();
            this.b.b(jc0Var, tyVar);
        }

        public final void a(final int i, final long j) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.b(i, j);
                    }
                });
            }
        }

        public final void a(final jc0 jc0Var, @Nullable final ty tyVar) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.b(jc0Var, tyVar);
                    }
                });
            }
        }

        public final void b(final Exception exc) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.a(exc);
                    }
                });
            }
        }

        public void a(Object obj, long j) {
            vf2 vf2Var = this.b;
            int i = f92.a;
            vf2Var.a(obj, j);
        }

        public final void b(final cg2 cg2Var) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.a(cg2Var);
                    }
                });
            }
        }

        public void a(long j, int i) {
            vf2 vf2Var = this.b;
            int i2 = f92.a;
            vf2Var.a(i, j);
        }

        public void a(Exception exc) {
            vf2 vf2Var = this.b;
            int i = f92.a;
            vf2Var.c(exc);
        }

        public void a(cg2 cg2Var) {
            vf2 vf2Var = this.b;
            int i = f92.a;
            vf2Var.a(cg2Var);
        }

        public final void a(final Surface surface) {
            if (this.a != null) {
                final long jElapsedRealtime = SystemClock.elapsedRealtime();
                this.a.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.a(surface, jElapsedRealtime);
                    }
                });
            }
        }
    }

    default void a(int i, long j) {
    }

    default void b(int i, long j) {
    }

    default void c(py pyVar) {
    }

    default void d(py pyVar) {
    }

    default void a(cg2 cg2Var) {
    }

    default void b(jc0 jc0Var, @Nullable ty tyVar) {
    }

    default void c(Exception exc) {
    }

    default void a(Object obj, long j) {
    }

    default void a(String str) {
    }

    default void a(String str, long j, long j2) {
    }
}
