package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.zfb;

public final class h4 {
    private final gt a;
    private final ym0 b;
    private final j4 c;
    private final ao0 d;
    private final b4 e;
    private final nb2 f;
    private final g4 g;
    private final f4 h;
    private final yk1 i;
    private boolean j;
    private boolean k;
    private boolean l;

    public final class a implements kv {
        private final j4 a;
        final h4 b;

        public a(h4 h4Var, j4 j4Var) {
            y45.j(j4Var, "adGroupPlaybackListener");
            this.b = h4Var;
            this.a = j4Var;
        }

        public static final void a(h4 h4Var) {
            y45.j(h4Var, "this$0");
            h4Var.c.g();
        }

        public static final void c(h4 h4Var) {
            y45.j(h4Var, "this$0");
            h4Var.c.j();
        }

        @Override
        public final void b(zb2<go0> zb2Var) {
            y45.j(zb2Var, "videoAdInfo");
            this.a.e();
        }

        @Override
        public final void d(zb2<go0> zb2Var) {
            y45.j(zb2Var, "videoAdInfo");
            if (!this.b.l) {
                this.b.l = true;
                this.a.h();
            }
            this.a.i();
            if (this.b.j) {
                this.b.j = false;
                this.b.d();
            }
        }

        @Override
        public final void e(zb2<go0> zb2Var) {
            y45.j(zb2Var, "videoAdInfo");
            if (this.b.e.e() != null) {
                this.b.b.a();
                return;
            }
            final h4 h4Var = this.b;
            Runnable runnable = new Runnable() {
                @Override
                public final void run() {
                    h4.a.e(h4Var);
                }
            };
            this.b.b.a();
            runnable.run();
        }

        @Override
        public final void f(zb2<go0> zb2Var) {
            y45.j(zb2Var, "videoAdInfo");
            this.a.d();
        }

        @Override
        public final void g(zb2<go0> zb2Var) {
            y45.j(zb2Var, "videoAdInfo");
            final h4 h4Var = this.b;
            Runnable runnable = new Runnable() {
                @Override
                public final void run() {
                    h4.a.a(h4Var);
                }
            };
            if (this.b.e.e() != null) {
                this.b.h.a();
            } else {
                this.b.b.a();
                runnable.run();
            }
        }

        public static final void b(h4 h4Var) {
            y45.j(h4Var, "this$0");
            h4Var.c.k();
        }

        @Override
        public final void a(zb2<go0> zb2Var, xc2 xc2Var) {
            y45.j(zb2Var, "videoAdInfo");
            y45.j(xc2Var, "videoAdPlayerError");
            k4 k4VarA = this.b.e.a(zb2Var);
            qd2 qd2VarB = k4VarA != null ? k4VarA.b() : null;
            if ((qd2VarB != null ? qd2VarB.a() : null) == pd2.k) {
                this.b.g.c();
                final h4 h4Var = this.b;
                Runnable runnable = new Runnable() {
                    @Override
                    public final void run() {
                        h4.a.b(h4Var);
                    }
                };
                this.b.b.a();
                runnable.run();
                return;
            }
            final h4 h4Var2 = this.b;
            Runnable runnable2 = new Runnable() {
                @Override
                public final void run() {
                    h4.a.c(h4Var2);
                }
            };
            if (this.b.e.e() != null) {
                this.b.h.a();
            } else {
                this.b.b.a();
                runnable2.run();
            }
        }

        @Override
        public final void c(zb2<go0> zb2Var) {
            y45.j(zb2Var, "videoAdInfo");
            if (!this.b.k) {
                this.b.k = true;
                this.a.f();
            }
            this.b.j = false;
            h4.a(this.b);
            this.a.a();
        }

        public static final void e(h4 h4Var) {
            y45.j(h4Var, "this$0");
            h4Var.c.g();
        }

        public static final void d(h4 h4Var) {
            y45.j(h4Var, "this$0");
            h4Var.c.g();
        }

        @Override
        public final void a(zb2<go0> zb2Var) {
            y45.j(zb2Var, "videoAdInfo");
            if (this.b.d.f()) {
                this.b.g.c();
                this.b.e.a();
            }
            final h4 h4Var = this.b;
            Runnable runnable = new Runnable() {
                @Override
                public final void run() {
                    h4.a.d(h4Var);
                }
            };
            if (this.b.e.e() != null) {
                this.b.h.a();
            } else {
                this.b.b.a();
                runnable.run();
            }
        }
    }

    public h4(Context context, gt gtVar, jm0 jm0Var, ym0 ym0Var, cn0 cn0Var, j4 j4Var) {
        y45.j(context, "context");
        y45.j(gtVar, "coreInstreamAdBreak");
        y45.j(jm0Var, "adPlayerController");
        y45.j(ym0Var, "uiElementsManager");
        y45.j(cn0Var, "adViewsHolderManager");
        y45.j(j4Var, "adGroupPlaybackEventsListener");
        this.a = gtVar;
        this.b = ym0Var;
        this.c = j4Var;
        int i = ao0.g;
        this.d = ao0.a.a();
        yk1 yk1Var = new yk1(context);
        this.i = yk1Var;
        nb2 nb2Var = new nb2();
        this.f = nb2Var;
        i4 i4Var = new i4(nb2Var, new a(this, j4Var));
        b4 b4VarA = new c4(context, gtVar, jm0Var, yk1Var, cn0Var, i4Var).a();
        this.e = b4VarA;
        i4Var.a(b4VarA);
        this.g = new g4(b4VarA);
        this.h = new f4(b4VarA, ym0Var, j4Var, this);
    }

    public static final void a(h4 h4Var) {
        zb2<go0> zb2VarB = h4Var.e.b();
        mg2 mg2VarD = h4Var.e.d();
        if (zb2VarB == null || mg2VarD == null) {
            sp0.b(new Object[0]);
        } else {
            h4Var.b.a(h4Var.a, zb2VarB, mg2VarD, h4Var.f, h4Var.i);
        }
    }

    public final void b() {
        this.j = true;
    }

    public final void c() {
        zfb zfbVar;
        do0 do0VarC = this.e.c();
        if (do0VarC != null) {
            do0VarC.b();
            zfbVar = zfb.a;
        } else {
            zfbVar = null;
        }
        if (zfbVar == null) {
            sp0.b(new Object[0]);
        }
    }

    public final void d() {
        zfb zfbVar;
        do0 do0VarC = this.e.c();
        if (do0VarC != null) {
            this.j = false;
            do0VarC.c();
            zfbVar = zfb.a;
        } else {
            zfbVar = null;
        }
        if (zfbVar == null) {
            sp0.b(new Object[0]);
        }
        this.g.b();
    }

    public final void e() {
        zfb zfbVar;
        do0 do0VarC = this.e.c();
        if (do0VarC != null) {
            do0VarC.d();
            zfbVar = zfb.a;
        } else {
            zfbVar = null;
        }
        if (zfbVar == null) {
            sp0.b(new Object[0]);
        }
    }

    public final void f() {
        zfb zfbVar;
        zb2<go0> zb2VarB = this.e.b();
        mg2 mg2VarD = this.e.d();
        if (zb2VarB == null || mg2VarD == null) {
            sp0.b(new Object[0]);
        } else {
            this.b.a(this.a, zb2VarB, mg2VarD, this.f, this.i);
        }
        do0 do0VarC = this.e.c();
        if (do0VarC != null) {
            do0VarC.f();
            zfbVar = zfb.a;
        } else {
            zfbVar = null;
        }
        if (zfbVar == null) {
            sp0.b(new Object[0]);
        }
    }

    public final void g() {
        zfb zfbVar;
        do0 do0VarC = this.e.c();
        if (do0VarC != null) {
            do0VarC.g();
            zfbVar = zfb.a;
        } else {
            zfbVar = null;
        }
        if (zfbVar == null) {
            sp0.b(new Object[0]);
        }
        this.g.c();
    }

    public final void a() {
        do0 do0VarC = this.e.c();
        if (do0VarC != null) {
            do0VarC.a();
        }
        this.g.a();
        this.j = false;
        this.l = false;
        this.k = false;
    }

    public final void a(lo0 lo0Var) {
        this.f.a(lo0Var);
    }
}
