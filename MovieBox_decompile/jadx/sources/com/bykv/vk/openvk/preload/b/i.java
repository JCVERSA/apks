package com.bykv.vk.openvk.preload.b;

import java.util.List;

final class i implements b {

    protected e f19940a;

    private int f19941b;

    private List<h> f19942c;

    private d f19943d;

    static final class a extends Exception {
        a(Throwable th2) {
            super(th2);
        }
    }

    i(List<h> list, int i10, e eVar, d dVar) {
        this.f19942c = list;
        this.f19941b = i10;
        this.f19940a = eVar;
        this.f19943d = dVar;
    }

    private d c(Class cls) {
        d dVar = this.f19943d;
        while (dVar != null && dVar.getClass() != cls) {
            dVar = dVar.f19922a;
        }
        return dVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final Object a(Object obj) throws Exception {
        d dVar = this.f19943d;
        if (dVar != null) {
            dVar.f19924c = obj;
            dVar.e();
        }
        if (this.f19941b >= this.f19942c.size()) {
            return obj;
        }
        h hVar = this.f19942c.get(this.f19941b);
        Class<? extends d> cls = hVar.f19934a;
        d dVar2 = (d) this.f19940a.a(cls);
        if (dVar2 == null) {
            throw new IllegalArgumentException("interceptor == null , index = " + obj + " , class: " + cls);
        }
        com.bykv.vk.openvk.preload.b.b.a aVarA = hVar.a();
        i iVar = new i(this.f19942c, this.f19941b + 1, this.f19940a, dVar2);
        dVar2.a(iVar, this.f19943d, obj, aVarA, hVar.b());
        dVar2.c();
        try {
            Object objA = dVar2.a(iVar, obj);
            dVar2.d();
            return objA;
        } catch (a e10) {
            dVar2.c(e10.getCause());
            throw e10;
        } catch (Throwable th2) {
            dVar2.b(th2);
            throw new a(th2);
        }
    }

    @Override
    public final Object b(Class cls) {
        d dVarC = c(cls);
        if (dVarC != null) {
            return dVarC.f19924c;
        }
        throw new IllegalArgumentException("can not find pre Interceptor , class:".concat(String.valueOf(cls)));
    }

    @Override
    public final Object a(Class cls) {
        d dVarC = c(cls);
        if (dVarC != null) {
            return dVarC.f19923b;
        }
        throw new IllegalArgumentException("can not find pre Interceptor , class:".concat(String.valueOf(cls)));
    }
}
