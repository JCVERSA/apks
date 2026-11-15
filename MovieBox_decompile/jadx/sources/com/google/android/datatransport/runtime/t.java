package com.google.android.datatransport.runtime;

import android.content.Context;
import java.util.Collections;
import java.util.Set;

public class t implements s {

    private static volatile u f23766e;

    private final e9.a f23767a;

    private final e9.a f23768b;

    private final a9.e f23769c;

    private final b9.o f23770d;

    t(e9.a aVar, e9.a aVar2, a9.e eVar, b9.o oVar, b9.s sVar) {
        this.f23767a = aVar;
        this.f23768b = aVar2;
        this.f23769c = eVar;
        this.f23770d = oVar;
        sVar.c();
    }

    private i b(n nVar) {
        i.a aVarG = i.a().i(this.f23767a.getTime()).o(this.f23768b.getTime()).n(nVar.g()).h(new h(nVar.b(), nVar.d())).g(nVar.c().a());
        if (nVar.c().e() != null && nVar.c().e().a() != null) {
            aVarG.l(nVar.c().e().a());
        }
        if (nVar.c().b() != null) {
            t8.e eVarB = nVar.c().b();
            if (eVarB.c() != null) {
                aVarG.m(eVarB.c());
            }
            if (eVarB.a() != null) {
                aVarG.j(eVarB.a());
            }
            if (eVarB.b() != null) {
                aVarG.k(eVarB.b());
            }
        }
        return aVarG.d();
    }

    public static t c() {
        u uVar = f23766e;
        if (uVar != null) {
            return uVar.h();
        }
        throw new IllegalStateException("Not initialized!");
    }

    private static Set d(f fVar) {
        return fVar instanceof g ? Collections.unmodifiableSet(((g) fVar).a()) : Collections.singleton(t8.c.b("proto"));
    }

    public static void f(Context context) {
        if (f23766e == null) {
            synchronized (t.class) {
                try {
                    if (f23766e == null) {
                        f23766e = e.a().a(context).build();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override
    public void a(n nVar, t8.j jVar) {
        this.f23769c.a(nVar.f().f(nVar.c().d()), b(nVar), jVar);
    }

    public b9.o e() {
        return this.f23770d;
    }

    public t8.i g(f fVar) {
        return new p(d(fVar), o.a().b(fVar.getName()).c(fVar.getExtras()).a(), this);
    }

    public t8.i h(String str) {
        return new p(d(null), o.a().b(str).a(), this);
    }
}
