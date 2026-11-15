package com.yandex.mobile.ads.impl;

import android.os.Handler;
import androidx.annotation.Nullable;

public interface vh {

    public static final class a {

        @Nullable
        private final Handler a;

        @Nullable
        private final vh b;

        public a(@Nullable Handler handler, @Nullable vh vhVar) {
            this.a = (Handler) hg.a(handler);
            this.b = vhVar;
        }

        public void c(Exception exc) {
            vh vhVar = this.b;
            int i = f92.a;
            vhVar.b(exc);
        }

        public void d(Exception exc) {
            vh vhVar = this.b;
            int i = f92.a;
            vhVar.a(exc);
        }

        public final void a(final Exception exc) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.c(exc);
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
                        this.b.d(exc);
                    }
                });
            }
        }

        public void c(py pyVar) {
            synchronized (pyVar) {
            }
            vh vhVar = this.b;
            int i = f92.a;
            vhVar.a(pyVar);
        }

        public void d(py pyVar) {
            vh vhVar = this.b;
            int i = f92.a;
            vhVar.b(pyVar);
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
            vh vhVar = this.b;
            int i = f92.a;
            vhVar.b(str, j, j2);
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
            vh vhVar = this.b;
            int i = f92.a;
            vhVar.b(str);
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

        public void b(jc0 jc0Var, ty tyVar) {
            vh vhVar = this.b;
            int i = f92.a;
            vhVar.getClass();
            this.b.a(jc0Var, tyVar);
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

        public final void b(final long j) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.a(j);
                    }
                });
            }
        }

        public void a(long j) {
            vh vhVar = this.b;
            int i = f92.a;
            vhVar.a(j);
        }

        public final void b(final boolean z) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.a(z);
                    }
                });
            }
        }

        public void a(boolean z) {
            vh vhVar = this.b;
            int i = f92.a;
            vhVar.onSkipSilenceEnabledChanged(z);
        }

        public final void b(final int i, final long j, final long j2) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.a(i, j, j2);
                    }
                });
            }
        }

        public void a(int i, long j, long j2) {
            vh vhVar = this.b;
            int i2 = f92.a;
            vhVar.a(i, j, j2);
        }
    }

    default void a(int i, long j, long j2) {
    }

    default void b(py pyVar) {
    }

    default void onSkipSilenceEnabledChanged(boolean z) {
    }

    default void a(long j) {
    }

    default void b(Exception exc) {
    }

    default void a(jc0 jc0Var, @Nullable ty tyVar) {
    }

    default void b(String str) {
    }

    default void a(py pyVar) {
    }

    default void b(String str, long j, long j2) {
    }

    default void a(Exception exc) {
    }
}
