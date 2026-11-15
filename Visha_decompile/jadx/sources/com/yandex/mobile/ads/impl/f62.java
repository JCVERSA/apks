package com.yandex.mobile.ads.impl;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;

public abstract class f62 {

    @Nullable
    private a a;

    @Nullable
    private wi b;

    public interface a {
        void a();
    }

    public abstract g62 a(zo1[] zo1VarArr, z52 z52Var, vw0.b bVar, i52 i52Var) throws m60;

    public void a(ph phVar) {
    }

    public abstract void a(@Nullable Object obj);

    public final void b() {
        a aVar = this.a;
        if (aVar != null) {
            aVar.a();
        }
    }

    public boolean c() {
        return this instanceof s00;
    }

    @CallSuper
    public void d() {
        this.a = null;
        this.b = null;
    }

    public final wi a() {
        wi wiVar = this.b;
        if (wiVar != null) {
            return wiVar;
        }
        throw new IllegalStateException();
    }

    @CallSuper
    public final void a(a aVar, wi wiVar) {
        this.a = aVar;
        this.b = wiVar;
    }
}
