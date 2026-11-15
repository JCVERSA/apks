package com.cloud.hisavana.protocol.okhttptransport;

import com.google.common.base.m;
import java.util.concurrent.Executors;
import org.chromium.net.CronetEngine;

public abstract class h {

    private final CronetEngine f20878a;

    private int f20879b = 4;

    private c f20880c = null;

    private final h f20881d;

    h(CronetEngine cronetEngine, Class cls) {
        this.f20878a = (CronetEngine) m.o(cronetEngine);
        m.d(getClass().equals(cls));
        this.f20881d = this;
    }

    public Object a() {
        if (this.f20880c == null) {
            this.f20880c = c.a();
        }
        return b(new g(this.f20878a, Executors.newFixedThreadPool(this.f20879b), e.b(Executors.newCachedThreadPool()), new i(), this.f20880c));
    }

    abstract Object b(g gVar);
}
