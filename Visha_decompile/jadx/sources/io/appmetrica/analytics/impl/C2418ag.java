package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.HashSet;
import java.util.Iterator;

public final class C2418ag {
    public final HashSet a = new HashSet();
    public C2468cg b;
    public boolean c;
    public final Tn d;
    public final Context e;

    public C2418ag(Context context, Tn tn) {
        this.e = context;
        this.d = tn;
        this.b = tn.b();
        this.c = tn.c();
    }

    public final void a() {
        if (this.c) {
            return;
        }
        Context context = this.e;
        Va vaA = C2667kg.a(context, C2910ua.E.d.a());
        InterfaceC2593hg interfaceC2593hg = (InterfaceC2593hg) new Rf(this, new C2667kg(vaA), new Ga(context), new C2692lg(context)).f.getValue();
        try {
            vaA.a(interfaceC2593hg);
        } catch (Throwable th) {
            interfaceC2593hg.a(th);
        }
    }

    public final synchronized void a(C2518eg c2518eg) {
        this.a.add(c2518eg);
        if (this.c) {
            c2518eg.a(this.b);
        }
    }

    public final synchronized void a(C2468cg c2468cg) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((C2518eg) it.next()).a(c2468cg);
        }
    }
}
