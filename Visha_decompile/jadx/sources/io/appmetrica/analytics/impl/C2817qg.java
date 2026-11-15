package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.VisibleForTesting;

public final class C2817qg implements InterfaceC2871sl, Na {
    public final Context a;
    public final C2532f5 b;
    public final C2557g5 c;
    public final C2499dm d;
    public final Wa e;

    public C2817qg(Context context, C2532f5 c2532f5, G4 g4, InterfaceC2731n5 interfaceC2731n5, C2557g5 c2557g5, C2647jl c2647jl) {
        this.a = context;
        this.b = c2532f5;
        this.c = c2557g5;
        C2499dm c2499dmA = c2647jl.a(context, c2532f5, g4.a);
        this.d = c2499dmA;
        this.e = interfaceC2731n5.a(context, c2532f5, g4.b, c2499dmA);
        c2647jl.a(c2532f5, this);
    }

    @VisibleForTesting
    public final C2532f5 a() {
        return this.b;
    }

    @VisibleForTesting
    public final Context b() {
        return this.a;
    }

    public final void a(InterfaceC2954w4 interfaceC2954w4) {
        this.c.a.add(interfaceC2954w4);
    }

    public final void b(InterfaceC2954w4 interfaceC2954w4) {
        this.c.a.remove(interfaceC2954w4);
    }

    @Override
    public final void a(Hl hl) {
        this.e.a(hl);
    }

    @Override
    public final void a(EnumC2697ll enumC2697ll, Hl hl) {
        ((C2706m5) this.e).getClass();
    }

    @Override
    public final void a(G4 g4) {
        this.d.a(g4.a);
        this.e.a(g4.b);
    }

    public C2817qg(Context context, C2532f5 c2532f5, G4 g4, InterfaceC2731n5 interfaceC2731n5) {
        this(context, c2532f5, g4, interfaceC2731n5, new C2557g5(), C2647jl.a());
    }

    public final void a(C2408a6 c2408a6, G4 g4) {
        if (!C9.c.contains(EnumC2588hb.a(c2408a6.d))) {
            this.e.a(g4.b);
        }
        ((C2706m5) this.e).a(c2408a6);
    }
}
