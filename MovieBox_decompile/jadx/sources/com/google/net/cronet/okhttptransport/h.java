package com.google.net.cronet.okhttptransport;

import com.google.common.base.m;
import java.util.concurrent.Executors;
import org.chromium.net.CronetEngine;

public abstract class h {

    private final CronetEngine f31978a;

    private int f31979b = 4;

    private c f31980c = null;

    private final h f31981d;

    h(CronetEngine cronetEngine, Class cls) {
        this.f31978a = (CronetEngine) m.o(cronetEngine);
        m.d(getClass().equals(cls));
        this.f31981d = this;
    }

    public Object a() {
        if (this.f31980c == null) {
            this.f31980c = c.a();
        }
        return b(new g(this.f31978a, Executors.newFixedThreadPool(this.f31979b), e.b(Executors.newCachedThreadPool()), new i(), this.f31980c));
    }

    abstract Object b(g gVar);
}
