package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class u2 {
    private final gt a;
    private final ym0 b;
    private final z2 c;
    private final h4 d;
    private final d3 e;
    private v2 f;
    private boolean g;

    public final class a implements j4 {
        public a() {
        }

        @Override
        public final void a() {
            if (u2.this.c.a(u2.this.a) == y2.d) {
                u2.this.c.a(u2.this.a, y2.i);
            }
        }

        @Override
        public final void b() {
            if (u2.this.c.a(u2.this.a) == y2.h) {
                u2.this.c.a(u2.this.a, y2.i);
            }
        }

        @Override
        public final void c() {
            u2.this.c.a(u2.this.a, y2.c);
        }

        @Override
        public final void d() {
            if (u2.this.c.a(u2.this.a) == y2.h) {
                u2.this.c.a(u2.this.a, y2.i);
            }
        }

        @Override
        public final void e() {
            if (u2.this.c.a(u2.this.a) == y2.i) {
                u2.this.c.a(u2.this.a, y2.h);
            }
        }

        @Override
        public final void f() {
            if (u2.this.c.a(u2.this.a) == y2.d) {
                u2.this.c.a(u2.this.a, y2.i);
                u2.this.e.c();
                v2 v2Var = u2.this.f;
                if (v2Var != null) {
                    v2Var.b();
                }
            }
        }

        @Override
        public final void g() {
            y2 y2VarA = u2.this.c.a(u2.this.a);
            if (y2VarA == y2.i || y2VarA == y2.h) {
                u2.this.c.a(u2.this.a, y2.e);
                u2.this.e.a();
                v2 v2Var = u2.this.f;
                if (v2Var != null) {
                    v2Var.e();
                }
            }
        }

        @Override
        public final void h() {
            boolean z = u2.this.g;
            u2.this.g = false;
            if (y2.c == u2.this.c.a(u2.this.a)) {
                u2.this.c.a(u2.this.a, y2.d);
                if (z) {
                    u2.g(u2.this);
                    return;
                }
                v2 v2Var = u2.this.f;
                if (v2Var != null) {
                    v2Var.a();
                }
            }
        }

        @Override
        public final void i() {
            if (y2.c == u2.this.c.a(u2.this.a)) {
                u2.this.c.a(u2.this.a, y2.d);
            }
        }

        @Override
        public final void j() {
            u2.this.c.a(u2.this.a, y2.g);
            u2.this.e.b();
            v2 v2Var = u2.this.f;
            if (v2Var != null) {
                v2Var.g();
            }
        }

        @Override
        public final void k() {
            u2.this.c.a(u2.this.a, y2.g);
            u2.this.e.b();
            v2 v2Var = u2.this.f;
            if (v2Var != null) {
                v2Var.g();
            }
        }
    }

    public u2(Context context, gt gtVar, jm0 jm0Var, ym0 ym0Var, cn0 cn0Var, z2 z2Var) {
        y45.j(context, "context");
        y45.j(gtVar, "instreamAdBreak");
        y45.j(jm0Var, "adPlayerController");
        y45.j(ym0Var, "instreamAdUiElementsManager");
        y45.j(cn0Var, "instreamAdViewsHolderManager");
        y45.j(z2Var, "adBreakStatusController");
        this.a = gtVar;
        this.b = ym0Var;
        this.c = z2Var;
        this.d = new h4(context, gtVar, jm0Var, ym0Var, cn0Var, new a());
        this.e = new d3(context, gtVar.a());
    }

    public static final void g(u2 u2Var) {
        if (u2Var.c.a(u2Var.a) == y2.d) {
            v2 v2Var = u2Var.f;
            if (v2Var != null) {
                v2Var.d();
            }
            u2Var.d.d();
        }
    }

    public final void a() {
        int iOrdinal = this.c.a(this.a).ordinal();
        if (iOrdinal == 6 || iOrdinal == 7) {
            this.c.a(this.a, y2.h);
            this.d.c();
        }
    }

    public final void b() {
        int iOrdinal = this.c.a(this.a).ordinal();
        if (iOrdinal == 1) {
            this.c.a(this.a, y2.b);
            this.d.g();
            this.d.a();
        } else if (iOrdinal == 2) {
            this.g = false;
            this.c.a(this.a, y2.b);
            this.d.g();
            this.d.a();
        } else if (iOrdinal == 5) {
            this.c.a(this.a, y2.b);
            this.d.a();
        } else if (iOrdinal == 6 || iOrdinal == 7) {
            this.g = true;
            this.c.a(this.a, y2.b);
            this.d.g();
            this.d.a();
        }
        this.b.a();
    }

    public final void c() {
        int iOrdinal = this.c.a(this.a).ordinal();
        if (iOrdinal == 1) {
            this.c.a(this.a, y2.b);
            this.d.g();
        } else if (iOrdinal == 6 || iOrdinal == 7) {
            this.c.a(this.a, y2.h);
            this.d.c();
        }
        this.b.a();
    }

    public final void d() {
        if (this.c.a(this.a) == y2.b) {
            this.c.a(this.a, y2.c);
            this.d.e();
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002b  */
    public final void e() {
        int iOrdinal = this.c.a(this.a).ordinal();
        if (iOrdinal == 1 || iOrdinal == 2) {
            this.c.a(this.a, y2.b);
            this.d.g();
            this.d.a();
        } else if (iOrdinal == 5) {
            this.c.a(this.a, y2.b);
            this.d.a();
        } else if (iOrdinal == 6 || iOrdinal == 7) {
            this.c.a(this.a, y2.b);
            this.d.g();
            this.d.a();
        }
        this.g = false;
        this.b.a();
    }

    public final void f() {
        int iOrdinal = this.c.a(this.a).ordinal();
        if (iOrdinal == 0) {
            if (this.c.a(this.a) == y2.b) {
                this.c.a(this.a, y2.c);
                this.d.e();
                return;
            }
            return;
        }
        if (iOrdinal != 2) {
            if (iOrdinal == 6 || iOrdinal == 7) {
                this.d.f();
                return;
            }
            return;
        }
        if (this.c.a(this.a) == y2.d) {
            v2 v2Var = this.f;
            if (v2Var != null) {
                v2Var.d();
            }
            this.d.d();
        }
    }

    public final void a(v2 v2Var) {
        this.f = v2Var;
    }

    public final void a(lo0 lo0Var) {
        this.d.a(lo0Var);
    }

    public final void g() {
        if (this.c.a(this.a) == y2.d) {
            v2 v2Var = this.f;
            if (v2Var != null) {
                v2Var.d();
            }
            this.d.d();
        }
    }
}
