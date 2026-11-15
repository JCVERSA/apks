package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.impl.km0;
import defpackage.y45;
import defpackage.zfb;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

public final class km0 implements lt {
    private final Object a;
    private final ht0 b;
    private final LinkedHashMap c;

    public km0() {
        this(new Object(), new ht0());
    }

    public static final void b(Set set, go0 go0Var) {
        y45.j(go0Var, "$videoAd");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((lt) it.next()).i(go0Var);
        }
    }

    public static final void c(Set set, go0 go0Var) {
        y45.j(go0Var, "$videoAd");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((lt) it.next()).g(go0Var);
        }
    }

    public static final void d(Set set, go0 go0Var) {
        y45.j(go0Var, "$videoAd");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((lt) it.next()).c(go0Var);
        }
    }

    public static final void e(Set set, go0 go0Var) {
        y45.j(go0Var, "$videoAd");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((lt) it.next()).b(go0Var);
        }
    }

    public static final void f(Set set, go0 go0Var) {
        y45.j(go0Var, "$videoAd");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((lt) it.next()).e(go0Var);
        }
    }

    public final void a(go0 go0Var, lt ltVar) {
        y45.j(go0Var, "videoAd");
        y45.j(ltVar, "listener");
        synchronized (this.a) {
            try {
                Set hashSet = (Set) this.c.get(go0Var);
                if (hashSet == null) {
                    hashSet = new HashSet();
                    this.c.put(go0Var, hashSet);
                }
                hashSet.add(ltVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void g(final go0 go0Var) {
        y45.j(go0Var, "videoAd");
        final HashSet hashSetJ = j(go0Var);
        if (hashSetJ != null) {
            this.b.a(new Runnable() {
                @Override
                public final void run() {
                    km0.c(hashSetJ, go0Var);
                }
            });
        }
    }

    @Override
    public final void h(final go0 go0Var) {
        y45.j(go0Var, "videoAd");
        final HashSet hashSetJ = j(go0Var);
        if (hashSetJ != null) {
            this.b.a(new Runnable() {
                @Override
                public final void run() {
                    km0.a(hashSetJ, go0Var);
                }
            });
        }
    }

    @Override
    public final void i(final go0 go0Var) {
        y45.j(go0Var, "videoAd");
        final HashSet hashSetJ = j(go0Var);
        if (hashSetJ != null) {
            this.b.a(new Runnable() {
                @Override
                public final void run() {
                    km0.b(hashSetJ, go0Var);
                }
            });
        }
    }

    private final HashSet j(go0 go0Var) {
        HashSet hashSet;
        synchronized (this.a) {
            Set set = (Set) this.c.get(go0Var);
            hashSet = set != null ? new HashSet(set) : null;
        }
        return hashSet;
    }

    public km0(Object obj, ht0 ht0Var) {
        y45.j(obj, "lock");
        y45.j(ht0Var, "mainThreadExecutor");
        this.a = obj;
        this.b = ht0Var;
        this.c = new LinkedHashMap();
    }

    public static final void g(Set set, go0 go0Var) {
        y45.j(go0Var, "$videoAd");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((lt) it.next()).a(go0Var);
        }
    }

    public static final void h(Set set, go0 go0Var) {
        y45.j(go0Var, "$videoAd");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((lt) it.next()).d(go0Var);
        }
    }

    public static final void i(Set set, go0 go0Var) {
        y45.j(go0Var, "$videoAd");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((lt) it.next()).f(go0Var);
        }
    }

    @Override
    public final void b(final go0 go0Var) {
        y45.j(go0Var, "videoAd");
        final HashSet hashSetJ = j(go0Var);
        if (hashSetJ != null) {
            this.b.a(new Runnable() {
                @Override
                public final void run() {
                    km0.e(hashSetJ, go0Var);
                }
            });
        }
    }

    @Override
    public final void c(final go0 go0Var) {
        y45.j(go0Var, "videoAd");
        final HashSet hashSetJ = j(go0Var);
        if (hashSetJ != null) {
            this.b.a(new Runnable() {
                @Override
                public final void run() {
                    km0.d(hashSetJ, go0Var);
                }
            });
        }
    }

    @Override
    public final void d(final go0 go0Var) {
        y45.j(go0Var, "videoAd");
        final HashSet hashSetJ = j(go0Var);
        if (hashSetJ != null) {
            this.b.a(new Runnable() {
                @Override
                public final void run() {
                    km0.h(hashSetJ, go0Var);
                }
            });
        }
    }

    @Override
    public final void e(final go0 go0Var) {
        y45.j(go0Var, "videoAd");
        final HashSet hashSetJ = j(go0Var);
        if (hashSetJ != null) {
            this.b.a(new Runnable() {
                @Override
                public final void run() {
                    km0.f(hashSetJ, go0Var);
                }
            });
        }
    }

    @Override
    public final void f(final go0 go0Var) {
        y45.j(go0Var, "videoAd");
        final HashSet hashSetJ = j(go0Var);
        if (hashSetJ != null) {
            this.b.a(new Runnable() {
                @Override
                public final void run() {
                    km0.i(hashSetJ, go0Var);
                }
            });
        }
    }

    public final void b(go0 go0Var, lt ltVar) {
        y45.j(go0Var, "videoAd");
        y45.j(ltVar, "listener");
        synchronized (this.a) {
            try {
                Set set = (Set) this.c.get(go0Var);
                if (set != null) {
                    Iterator it = set.iterator();
                    while (it.hasNext()) {
                        if (y45.e(ltVar, (lt) it.next())) {
                            it.remove();
                        }
                    }
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final void a(Set set, go0 go0Var) {
        y45.j(go0Var, "$videoAd");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((lt) it.next()).h(go0Var);
        }
    }

    @Override
    public final void a(final go0 go0Var) {
        y45.j(go0Var, "videoAd");
        final HashSet hashSetJ = j(go0Var);
        if (hashSetJ != null) {
            this.b.a(new Runnable() {
                @Override
                public final void run() {
                    km0.g(hashSetJ, go0Var);
                }
            });
        }
    }

    @Override
    public final void a(final go0 go0Var, final xc2 xc2Var) {
        y45.j(go0Var, "videoAd");
        y45.j(xc2Var, "error");
        final HashSet hashSetJ = j(go0Var);
        if (hashSetJ != null) {
            this.b.a(new Runnable() {
                @Override
                public final void run() {
                    km0.a(hashSetJ, go0Var, xc2Var);
                }
            });
        }
    }

    public static final void a(Set set, go0 go0Var, xc2 xc2Var) {
        y45.j(go0Var, "$videoAd");
        y45.j(xc2Var, "$error");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((lt) it.next()).a(go0Var, xc2Var);
        }
    }

    @Override
    public final void a(final go0 go0Var, final float f) {
        y45.j(go0Var, "videoAd");
        final HashSet hashSetJ = j(go0Var);
        if (hashSetJ != null) {
            this.b.a(new Runnable() {
                @Override
                public final void run() {
                    km0.a(hashSetJ, go0Var, f);
                }
            });
        }
    }

    public static final void a(Set set, go0 go0Var, float f) {
        y45.j(go0Var, "$videoAd");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((lt) it.next()).a(go0Var, f);
        }
    }

    public final void a() {
        this.b.a();
    }
}
