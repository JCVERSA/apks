package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.ResultReceiver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class O4 implements La, InterfaceC2871sl, Na {
    public final Context a;
    public final C2532f5 b;
    public final C2499dm c;
    public final C2842rh d;
    public final V4 e;
    public final Jm f;
    public ArrayList g;
    public final C2557g5 h;
    public final C2418ag i;
    public final C2680l4 j;
    public final C2543fg k;
    public final Object l;

    public O4(@NonNull Context context, @NonNull C2647jl c2647jl, @NonNull C2532f5 c2532f5, @NonNull G4 g4, @NonNull C2418ag c2418ag) {
        this(context, c2647jl, c2532f5, g4, new C2842rh(g4.b), c2418ag, new C2557g5(), new Q4(), new C2543fg());
    }

    public static void b(G4 g4) {
        C2910ua.E.b().b(!Boolean.FALSE.equals(g4.b.n));
    }

    @Override
    public final void a(@NonNull F4 f4) {
        C2842rh c2842rh = this.d;
        c2842rh.a = c2842rh.a.mergeFrom(f4);
    }

    @Override
    @NonNull
    public final CounterConfigurationReporterType c() {
        return CounterConfigurationReporterType.COMMUTATION;
    }

    @NonNull
    public final F4 d() {
        return this.d.a;
    }

    @NonNull
    public final C2418ag e() {
        return this.i;
    }

    @Override
    @NonNull
    public final Context getContext() {
        return this.a;
    }

    public O4(Context context, C2647jl c2647jl, C2532f5 c2532f5, G4 g4, C2842rh c2842rh, C2418ag c2418ag, C2557g5 c2557g5, Q4 q4, C2543fg c2543fg) {
        this.g = new ArrayList();
        this.l = new Object();
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        this.b = c2532f5;
        this.d = c2842rh;
        this.h = c2557g5;
        this.e = Q4.a(this);
        b(g4);
        C2499dm c2499dmA = c2647jl.a(applicationContext, c2532f5, g4.a);
        this.c = c2499dmA;
        this.j = AbstractC2705m4.a(c2499dmA, C2910ua.j().b());
        this.f = q4.a(this, c2499dmA);
        this.i = c2418ag;
        this.k = c2543fg;
        c2647jl.a(c2532f5, this);
    }

    public final synchronized void a(@NonNull L4 l4) {
        this.h.a.add(l4);
        I6.a(l4.c, this.j.a(AbstractC2623im.a(this.c.e().l)));
    }

    public final synchronized void b(@NonNull L4 l4) {
        this.h.a.remove(l4);
    }

    @Override
    @NonNull
    public final C2532f5 b() {
        return this.b;
    }

    public final void a(@NonNull C2408a6 c2408a6, @NonNull L4 l4) {
        V4 v4 = this.e;
        v4.getClass();
        v4.a(c2408a6, new U4(l4));
    }

    @Override
    public final void a(@NonNull EnumC2697ll enumC2697ll, @Nullable Hl hl) {
        synchronized (this.l) {
            try {
                for (C2513eb c2513eb : this.g) {
                    I6.a(c2513eb.a, enumC2697ll, this.j.a(c2513eb.c));
                }
                this.g.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void a(@NonNull Hl hl) {
        synchronized (this.l) {
            try {
                for (L4 l4 : this.h.a) {
                    I6.a(l4.c, this.j.a(AbstractC2623im.a(hl.l)));
                }
                ArrayList arrayList = new ArrayList();
                for (C2513eb c2513eb : this.g) {
                    if (El.a(hl, c2513eb.b, c2513eb.c, new C2463cb())) {
                        I6.a(c2513eb.a, this.j.a(c2513eb.c));
                    } else {
                        arrayList.add(c2513eb);
                    }
                }
                this.g = new ArrayList(arrayList);
                if (!arrayList.isEmpty()) {
                    this.f.b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(@Nullable C2513eb c2513eb) {
        ResultReceiver resultReceiver;
        HashMap map;
        List<String> list;
        HashMap map2 = new HashMap();
        if (c2513eb != null) {
            list = c2513eb.b;
            resultReceiver = c2513eb.a;
            map = c2513eb.c;
        } else {
            resultReceiver = null;
            map = map2;
            list = null;
        }
        boolean zA = this.c.a(list, map);
        if (!zA) {
            I6.a(resultReceiver, this.j.a(map));
        }
        if (!this.c.g()) {
            if (zA) {
                I6.a(resultReceiver, this.j.a(map));
                return;
            }
            return;
        }
        synchronized (this.l) {
            if (zA && c2513eb != null) {
                try {
                    this.g.add(c2513eb);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        this.f.b();
    }

    public final void a(@Nullable ResultReceiver resultReceiver) {
        this.k.a(new N4(resultReceiver));
    }

    @NonNull
    public final C2680l4 a() {
        return this.j;
    }

    @Override
    public final void a(@NonNull G4 g4) {
        this.c.a(g4.a);
        a(g4.b);
    }
}
