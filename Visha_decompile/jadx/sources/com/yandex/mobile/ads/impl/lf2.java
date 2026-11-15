package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.impl.lf2;
import defpackage.y45;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;

public final class lf2 implements nu {
    private final Object a;
    private final ht0 b;
    private final LinkedHashSet c;

    public lf2() {
        this(new Object(), new ht0());
    }

    public static final void c(lf2 lf2Var) {
        y45.j(lf2Var, "this$0");
        Iterator it = lf2Var.a().iterator();
        while (it.hasNext()) {
            ((nu) it.next()).onVideoPaused();
        }
    }

    public static final void d(lf2 lf2Var) {
        y45.j(lf2Var, "this$0");
        Iterator it = lf2Var.a().iterator();
        while (it.hasNext()) {
            ((nu) it.next()).onVideoPrepared();
        }
    }

    public static final void e(lf2 lf2Var) {
        y45.j(lf2Var, "this$0");
        Iterator it = lf2Var.a().iterator();
        while (it.hasNext()) {
            ((nu) it.next()).onVideoResumed();
        }
    }

    public final void a(cf2 cf2Var) {
        y45.j(cf2Var, "listener");
        synchronized (this.a) {
            this.c.add(cf2Var);
        }
    }

    public final void b() {
        this.c.clear();
        this.b.a();
    }

    @Override
    public final void onVideoCompleted() {
        this.b.a(new Runnable() {
            @Override
            public final void run() {
                lf2.a(this.b);
            }
        });
    }

    @Override
    public final void onVideoError() {
        this.b.a(new Runnable() {
            @Override
            public final void run() {
                lf2.b(this.b);
            }
        });
    }

    @Override
    public final void onVideoPaused() {
        this.b.a(new Runnable() {
            @Override
            public final void run() {
                lf2.c(this.b);
            }
        });
    }

    @Override
    public final void onVideoPrepared() {
        this.b.a(new Runnable() {
            @Override
            public final void run() {
                lf2.d(this.b);
            }
        });
    }

    @Override
    public final void onVideoResumed() {
        this.b.a(new Runnable() {
            @Override
            public final void run() {
                lf2.e(this.b);
            }
        });
    }

    private final HashSet a() {
        HashSet hashSet;
        synchronized (this.a) {
            hashSet = new HashSet(this.c);
        }
        return hashSet;
    }

    public static final void b(lf2 lf2Var) {
        y45.j(lf2Var, "this$0");
        Iterator it = lf2Var.a().iterator();
        while (it.hasNext()) {
            ((nu) it.next()).onVideoError();
        }
    }

    public lf2(Object obj, ht0 ht0Var) {
        y45.j(obj, "lock");
        y45.j(ht0Var, "mainThreadExecutor");
        this.a = obj;
        this.b = ht0Var;
        this.c = new LinkedHashSet();
    }

    public static final void a(lf2 lf2Var) {
        y45.j(lf2Var, "this$0");
        Iterator it = lf2Var.a().iterator();
        while (it.hasNext()) {
            ((nu) it.next()).onVideoCompleted();
        }
    }
}
