package com.yandex.mobile.ads.impl;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import java.util.concurrent.CopyOnWriteArrayList;

public interface h40 {

    public static class a {
        public final int a;

        @Nullable
        public final vw0.b b;
        private final CopyOnWriteArrayList<C0315a> c;

        public static final class C0315a {
            public Handler a;
            public h40 b;

            public C0315a(Handler handler, h40 h40Var) {
                this.a = handler;
                this.b = h40Var;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        private a(CopyOnWriteArrayList<C0315a> copyOnWriteArrayList, int i, @Nullable vw0.b bVar) {
            this.c = copyOnWriteArrayList;
            this.a = i;
            this.b = bVar;
        }

        public final void a(Handler handler, h40 h40Var) {
            h40Var.getClass();
            this.c.add(new C0315a(handler, h40Var));
        }

        public final void b() {
            for (C0315a c0315a : this.c) {
                final h40 h40Var = c0315a.b;
                f92.a(c0315a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.b(h40Var);
                    }
                });
            }
        }

        public final void c() {
            for (C0315a c0315a : this.c) {
                final h40 h40Var = c0315a.b;
                f92.a(c0315a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.c(h40Var);
                    }
                });
            }
        }

        public final void d() {
            for (C0315a c0315a : this.c) {
                final h40 h40Var = c0315a.b;
                f92.a(c0315a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.d(h40Var);
                    }
                });
            }
        }

        public final void e(h40 h40Var) {
            for (C0315a c0315a : this.c) {
                if (c0315a.b == h40Var) {
                    this.c.remove(c0315a);
                }
            }
        }

        public final void a() {
            for (C0315a c0315a : this.c) {
                final h40 h40Var = c0315a.b;
                f92.a(c0315a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.a(h40Var);
                    }
                });
            }
        }

        public void b(h40 h40Var) {
            h40Var.d(this.a, this.b);
        }

        public void c(h40 h40Var) {
            h40Var.a(this.a, this.b);
        }

        public void d(h40 h40Var) {
            h40Var.b(this.a, this.b);
        }

        public final void a(final int i) {
            for (C0315a c0315a : this.c) {
                final h40 h40Var = c0315a.b;
                f92.a(c0315a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.a(h40Var, i);
                    }
                });
            }
        }

        public final void a(final Exception exc) {
            for (C0315a c0315a : this.c) {
                final h40 h40Var = c0315a.b;
                f92.a(c0315a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.a(h40Var, exc);
                    }
                });
            }
        }

        public void a(h40 h40Var) {
            h40Var.c(this.a, this.b);
        }

        public void a(h40 h40Var, int i) {
            h40Var.getClass();
            h40Var.a(this.a, this.b, i);
        }

        public void a(h40 h40Var, Exception exc) {
            h40Var.a(this.a, this.b, exc);
        }

        @CheckResult
        public final a a(int i, @Nullable vw0.b bVar) {
            return new a(this.c, i, bVar);
        }
    }

    default void a(int i, @Nullable vw0.b bVar) {
    }

    default void b(int i, @Nullable vw0.b bVar) {
    }

    default void c(int i, @Nullable vw0.b bVar) {
    }

    default void d(int i, @Nullable vw0.b bVar) {
    }

    default void a(int i, @Nullable vw0.b bVar, int i2) {
    }

    default void a(int i, @Nullable vw0.b bVar, Exception exc) {
    }
}
