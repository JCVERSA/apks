package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import defpackage.abb;
import defpackage.ky5;
import defpackage.y45;
import defpackage.zfb;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;

public final class nn2 implements mg2 {
    private final Context a;
    private final ad2 b;
    private final od2 c;
    private final List<wa2> d;
    private final kg2 e;
    private final we1 f;
    private final sp1 g;
    private b9 h;
    private dw0 i;
    private p3 j;
    private boolean k;

    public nn2(Context context, ad2 ad2Var, od2 od2Var, List<wa2> list, kg2 kg2Var, we1 we1Var, sp1 sp1Var) {
        y45.j(context, "context");
        y45.j(ad2Var, "videoAdPosition");
        y45.j(list, "verifications");
        y45.j(kg2Var, "eventsTracker");
        y45.j(we1Var, "omSdkVastPropertiesCreator");
        y45.j(sp1Var, "reporter");
        this.a = context;
        this.b = ad2Var;
        this.c = od2Var;
        this.d = list;
        this.e = kg2Var;
        this.f = we1Var;
        this.g = sp1Var;
    }

    @Override
    public final void a() {
    }

    @Override
    public final void b() {
        dw0 dw0Var = this.i;
        if (dw0Var != null) {
            try {
                if (this.k) {
                    return;
                }
                dw0Var.d();
            } catch (Exception e) {
                sp0.c(new Object[0]);
                this.g.reportError("Failed to execute safely", e);
            }
        }
    }

    @Override
    public final void c() {
        dw0 dw0Var = this.i;
        if (dw0Var != null) {
            try {
                if (this.k) {
                    return;
                }
                dw0Var.h();
            } catch (Exception e) {
                sp0.c(new Object[0]);
                this.g.reportError("Failed to execute safely", e);
            }
        }
    }

    @Override
    public final void d() {
        dw0 dw0Var = this.i;
        if (dw0Var != null) {
            try {
                if (this.k) {
                    return;
                }
                dw0Var.g();
            } catch (Exception e) {
                sp0.c(new Object[0]);
                this.g.reportError("Failed to execute safely", e);
            }
        }
    }

    @Override
    public final void e() {
        dw0 dw0Var = this.i;
        if (dw0Var != null) {
            try {
                if (this.k) {
                    return;
                }
                dw0Var.i();
            } catch (Exception e) {
                sp0.c(new Object[0]);
                this.g.reportError("Failed to execute safely", e);
            }
        }
    }

    @Override
    public final void f() {
        dw0 dw0Var = this.i;
        if (dw0Var != null) {
            try {
                if (this.k) {
                    return;
                }
                dw0Var.c();
            } catch (Exception e) {
                sp0.c(new Object[0]);
                this.g.reportError("Failed to execute safely", e);
            }
        }
    }

    @Override
    public final void g() {
    }

    @Override
    public final void h() {
    }

    @Override
    public final void i() {
    }

    @Override
    public final void j() {
        dw0 dw0Var = this.i;
        if (dw0Var != null) {
            try {
                if (this.k) {
                    return;
                }
                dw0Var.b();
            } catch (Exception e) {
                sp0.c(new Object[0]);
                this.g.reportError("Failed to execute safely", e);
            }
        }
    }

    @Override
    public final void k() {
        b9 b9Var = this.h;
        if (b9Var != null) {
            try {
                if (this.k) {
                    return;
                }
                b9Var.a();
                this.h = null;
                this.i = null;
                this.j = null;
                this.k = true;
            } catch (Exception e) {
                sp0.c(new Object[0]);
                this.g.reportError("Failed to execute safely", e);
            }
        }
    }

    @Override
    public final void l() {
    }

    @Override
    public final void m() {
        dw0 dw0Var = this.i;
        if (dw0Var != null) {
            try {
                if (this.k) {
                    return;
                }
                dw0Var.a();
            } catch (Exception e) {
                sp0.c(new Object[0]);
                this.g.reportError("Failed to execute safely", e);
            }
        }
    }

    @Override
    public final void n() {
        p3 p3Var = this.j;
        if (p3Var != null) {
            try {
                if (this.k) {
                    return;
                }
                p3Var.a();
            } catch (Exception e) {
                sp0.c(new Object[0]);
                this.g.reportError("Failed to execute safely", e);
            }
        }
    }

    public static final void a(nn2 nn2Var, xa2 xa2Var) {
        nn2Var.getClass();
        nn2Var.e.a(xa2Var.b(), "verificationNotExecuted", ky5.h(abb.a("[REASON]", String.valueOf(xa2Var.a().a()))));
    }

    @Override
    public final void a(View view, List<xb2> list) {
        uc0 uc0Var;
        y45.j(view, "view");
        y45.j(list, "friendlyOverlays");
        k();
        this.k = false;
        zfb zfbVar = zfb.a;
        try {
            Context context = this.a;
            mn2 mn2Var = new mn2(this);
            le1 le1Var = new le1(context, mn2Var);
            int i = me1.e;
            te1 te1VarA = new ue1(context, mn2Var, le1Var, me1.a.a(), new ve1()).a(this.d);
            if (te1VarA != null) {
                b9 b9VarB = te1VarA.b();
                b9VarB.a(view);
                this.h = b9VarB;
                this.i = te1VarA.c();
                this.j = te1VarA.a();
            }
        } catch (Exception e) {
            sp0.c(new Object[0]);
            this.g.reportError("Failed to execute safely", e);
        }
        b9 b9Var = this.h;
        if (b9Var != null) {
            for (xb2 xb2Var : list) {
                View viewC = xb2Var.c();
                if (viewC != null) {
                    zfb zfbVar2 = zfb.a;
                    try {
                        xb2.a aVarB = xb2Var.b();
                        y45.j(aVarB, "purpose");
                        int iOrdinal = aVarB.ordinal();
                        if (iOrdinal == 0) {
                            uc0Var = uc0.b;
                        } else if (iOrdinal == 1) {
                            uc0Var = uc0.c;
                        } else if (iOrdinal != 2) {
                            if (iOrdinal != 3) {
                                throw new NoWhenBranchMatchedException();
                            }
                            uc0Var = uc0.e;
                        } else {
                            uc0Var = uc0.d;
                        }
                        b9Var.a(viewC, uc0Var, xb2Var.a());
                    } catch (Exception e2) {
                        sp0.c(new Object[0]);
                        this.g.reportError("Failed to execute safely", e2);
                    }
                }
            }
        }
        b9 b9Var2 = this.h;
        if (b9Var2 != null) {
            try {
                if (!this.k) {
                    b9Var2.b();
                }
            } catch (Exception e3) {
                sp0.c(new Object[0]);
                this.g.reportError("Failed to execute safely", e3);
            }
        }
        p3 p3Var = this.j;
        if (p3Var != null) {
            try {
                if (this.k) {
                    return;
                }
                we1 we1Var = this.f;
                od2 od2Var = this.c;
                ad2 ad2Var = this.b;
                we1Var.getClass();
                p3Var.a(we1.a(od2Var, ad2Var));
            } catch (Exception e4) {
                sp0.c(new Object[0]);
                this.g.reportError("Failed to execute safely", e4);
            }
        }
    }

    @Override
    public final void a(String str) {
        y45.j(str, "assetName");
        m();
    }

    @Override
    public final void a(xc2 xc2Var) {
        y45.j(xc2Var, "error");
    }

    @Override
    public final void a(mg2.a aVar) {
        y45.j(aVar, "quartile");
        dw0 dw0Var = this.i;
        if (dw0Var != null) {
            try {
                if (!this.k) {
                    int iOrdinal = aVar.ordinal();
                    if (iOrdinal == 0) {
                        dw0Var.e();
                    } else if (iOrdinal == 1) {
                        dw0Var.f();
                    } else if (iOrdinal == 2) {
                        dw0Var.j();
                    }
                }
            } catch (Exception e) {
                sp0.c(new Object[0]);
                this.g.reportError("Failed to execute safely", e);
            }
        }
    }

    @Override
    public final void a(float f, long j) {
        dw0 dw0Var = this.i;
        if (dw0Var != null) {
            try {
                if (this.k) {
                    return;
                }
                dw0Var.a(j / 1000, f);
            } catch (Exception e) {
                sp0.c(new Object[0]);
                this.g.reportError("Failed to execute safely", e);
            }
        }
    }

    @Override
    public final void a(float f) {
        dw0 dw0Var = this.i;
        if (dw0Var != null) {
            try {
                if (this.k) {
                    return;
                }
                dw0Var.a(f);
            } catch (Exception e) {
                sp0.c(new Object[0]);
                this.g.reportError("Failed to execute safely", e);
            }
        }
    }
}
