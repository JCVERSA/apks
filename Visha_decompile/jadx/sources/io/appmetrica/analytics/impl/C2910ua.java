package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
import io.appmetrica.analytics.coreapi.internal.identifiers.PlatformIdentifiers;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.coreutils.internal.services.UtilityServiceProvider;
import io.appmetrica.analytics.coreutils.internal.services.WaitForActivationDelayBarrier;
import io.appmetrica.analytics.locationapi.internal.LocationClient;

public final class C2910ua {
    public static volatile C2910ua E;
    public volatile T9 C;
    public final Context a;
    public volatile C2418ag b;
    public volatile L6 c;
    public volatile C2455c3 e;
    public volatile C2471cj f;
    public volatile Q g;
    public volatile C2504e2 h;
    public volatile PlatformIdentifiers i;
    public volatile Cif j;
    public volatile T3 k;
    public volatile Oe l;
    public volatile Xn m;
    public volatile Ui n;
    public volatile Kb o;
    public C2473cl p;
    public volatile C2447bk r;
    public volatile Pb w;
    public volatile Lm x;
    public volatile Vk y;
    public volatile C2913ud z;
    public final C2885ta q = new C2885ta();
    public final Xc s = new Xc();
    public final Zc t = new Zc();
    public final Jl u = new Jl();
    public final Pj v = new Pj();
    public final Id A = new Id();
    public final UtilityServiceProvider B = new UtilityServiceProvider();
    public final Wj D = new Wj();
    public final Uj d = new Uj();

    public C2910ua(Context context) {
        this.a = context;
    }

    public static void a(Context context) {
        if (E == null) {
            synchronized (C2910ua.class) {
                try {
                    if (E == null) {
                        E = new C2910ua(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static C2910ua j() {
        return E;
    }

    public final Lm A() {
        Lm lm = this.x;
        if (lm == null) {
            synchronized (this) {
                try {
                    lm = this.x;
                    if (lm == null) {
                        lm = new Lm(this.a);
                        this.x = lm;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return lm;
    }

    public final synchronized Xn B() {
        try {
            if (this.m == null) {
                this.m = new Xn(this.a);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.m;
    }

    public final void C() {
        if (this.j == null) {
            synchronized (this) {
                try {
                    if (this.j == null) {
                        AbstractC2897tm abstractC2897tmA = C2872sm.a(Se.class);
                        Context context = this.a;
                        ProtobufStateStorage<Object> protobufStateStorageA = abstractC2897tmA.a(context, abstractC2897tmA.c(context));
                        Se se = (Se) protobufStateStorageA.read();
                        this.j = new Cif(this.a, protobufStateStorageA, new Ze(), new Qe(se), new C2592hf(), new Ye(this.a), new C2492df(j().x()), new Te(), se, "[PreloadInfoStorage]");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final Q b() {
        Q q = this.g;
        if (q == null) {
            synchronized (this) {
                try {
                    q = this.g;
                    if (q == null) {
                        q = new Q(this.a, this.d.a(), this.u.b());
                        this.u.a(q);
                        this.g = q;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return q;
    }

    public final C2504e2 c() {
        C2504e2 c2504e2 = this.h;
        if (c2504e2 == null) {
            synchronized (this) {
                try {
                    c2504e2 = this.h;
                    if (c2504e2 == null) {
                        c2504e2 = new C2504e2(this.a, AbstractC2529f2.a());
                        this.h = c2504e2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c2504e2;
    }

    public final C2653k2 d() {
        return k().b;
    }

    public final T3 e() {
        if (this.k == null) {
            synchronized (this) {
                try {
                    if (this.k == null) {
                        AbstractC2897tm abstractC2897tmA = C2872sm.a(M3.class);
                        Context context = this.a;
                        ProtobufStateStorage<Object> protobufStateStorageA = abstractC2897tmA.a(context, abstractC2897tmA.c(context));
                        this.k = new T3(this.a, protobufStateStorageA, new U3(), new H3(), new X3(), new Ji(this.a), new V3(x()), new I3(), (M3) protobufStateStorageA.read(), "[ClidsInfoStorage]");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.k;
    }

    public final Context f() {
        return this.a;
    }

    public final L6 g() {
        if (this.c == null) {
            synchronized (this) {
                try {
                    if (this.c == null) {
                        this.c = new L6(new K6(x()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.c;
    }

    public final T9 h() {
        T9 t9 = this.C;
        if (t9 == null) {
            synchronized (this) {
                try {
                    t9 = this.C;
                    if (t9 == null) {
                        t9 = new T9(this.a);
                        this.C = t9;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return t9;
    }

    public final PermissionExtractor i() {
        Vk vk = this.y;
        if (vk != null) {
            return vk;
        }
        synchronized (this) {
            try {
                Vk vk2 = this.y;
                if (vk2 != null) {
                    return vk2;
                }
                Vk vk3 = new Vk(o().c.getAskForPermissionStrategy());
                this.y = vk3;
                return vk3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Kb k() {
        Kb kb = this.o;
        if (kb == null) {
            synchronized (this) {
                try {
                    kb = this.o;
                    if (kb == null) {
                        kb = new Kb(new Z2(this.a, this.d.a()), new C2653k2());
                        this.o = kb;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return kb;
    }

    public final Pb l() {
        Pb rb = this.w;
        if (rb == null) {
            synchronized (this) {
                try {
                    rb = this.w;
                    if (rb == null) {
                        Context context = this.a;
                        LocationClient locationClient = (LocationClient) ReflectionUtils.loadAndInstantiateClassWithDefaultConstructor("io.appmetrica.analytics.location.internal.LocationClientImpl", LocationClient.class);
                        rb = locationClient == null ? new Rb() : new Qb(context, new Xb(), locationClient);
                        this.w = rb;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return rb;
    }

    public final Pb m() {
        return l();
    }

    public final Zc n() {
        return this.t;
    }

    public final C2447bk o() {
        C2447bk c2447bk = this.r;
        if (c2447bk == null) {
            synchronized (this) {
                try {
                    c2447bk = this.r;
                    if (c2447bk == null) {
                        c2447bk = new C2447bk();
                        this.r = c2447bk;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c2447bk;
    }

    public final C2913ud p() {
        C2913ud c2913ud = this.z;
        if (c2913ud == null) {
            synchronized (this) {
                try {
                    c2913ud = this.z;
                    if (c2913ud == null) {
                        c2913ud = new C2913ud(this.a, new Kn());
                        this.z = c2913ud;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c2913ud;
    }

    public final Id q() {
        return this.A;
    }

    public final PlatformIdentifiers r() {
        PlatformIdentifiers platformIdentifiers = this.i;
        if (platformIdentifiers == null) {
            synchronized (this) {
                try {
                    platformIdentifiers = this.i;
                    if (platformIdentifiers == null) {
                        platformIdentifiers = new PlatformIdentifiers(b(), c());
                        this.i = platformIdentifiers;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return platformIdentifiers;
    }

    public final Cif s() {
        C();
        return this.j;
    }

    public final C2418ag t() {
        if (this.b == null) {
            synchronized (this) {
                try {
                    if (this.b == null) {
                        this.b = new C2418ag(this.a, E.B().c);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.b;
    }

    public final Ui u() {
        Ui ui = this.n;
        if (ui == null) {
            synchronized (this) {
                try {
                    ui = this.n;
                    if (ui == null) {
                        ui = new Ui(this.a);
                        this.n = ui;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return ui;
    }

    public final synchronized C2471cj v() {
        return this.f;
    }

    public final Uj w() {
        return this.d;
    }

    public final Oe x() {
        if (this.l == null) {
            synchronized (this) {
                try {
                    if (this.l == null) {
                        this.l = new Oe(C2559g7.a(this.a).c());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.l;
    }

    public final synchronized V2 y() {
        try {
            if (this.p == null) {
                C2473cl c2473cl = new C2473cl(this.a);
                this.p = c2473cl;
                this.u.a(c2473cl);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.p;
    }

    public final Jl z() {
        return this.u;
    }

    public final WaitForActivationDelayBarrier a() {
        return this.B.getActivationBarrier();
    }
}
