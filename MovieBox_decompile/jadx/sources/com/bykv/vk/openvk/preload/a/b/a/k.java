package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.o;
import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import java.io.IOException;

public final class k<T> extends r<T> {

    private final o<T> f19744a;

    private final com.bykv.vk.openvk.preload.a.h<T> f19745b;

    private com.bykv.vk.openvk.preload.a.d f19746c;

    private final com.bykv.vk.openvk.preload.a.c.a<T> f19747d;

    private final s f19748e;

    private r<T> f19749f;

    final class a {
        private a(byte b10) {
        }

        a() {
            this((byte) 0);
        }
    }

    public k(o<T> oVar, com.bykv.vk.openvk.preload.a.h<T> hVar, com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar, s sVar) {
        new a();
        this.f19744a = oVar;
        this.f19745b = hVar;
        this.f19746c = dVar;
        this.f19747d = aVar;
        this.f19748e = sVar;
    }

    private r<T> b() {
        r<T> rVar = this.f19749f;
        if (rVar != null) {
            return rVar;
        }
        r<T> rVarA = this.f19746c.a(this.f19748e, this.f19747d);
        this.f19749f = rVarA;
        return rVarA;
    }

    @Override
    public final T a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
        if (this.f19745b == null) {
            return b().a(aVar);
        }
        if (com.bykv.vk.openvk.preload.geckox.h.a.a(aVar) instanceof com.bykv.vk.openvk.preload.a.k) {
            return null;
        }
        com.bykv.vk.openvk.preload.a.h<T> hVar = this.f19745b;
        this.f19747d.b();
        return hVar.a();
    }

    @Override
    public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t10) throws IOException {
        o<T> oVar = this.f19744a;
        if (oVar == null) {
            b().a(cVar, t10);
        } else if (t10 == null) {
            cVar.h();
        } else {
            this.f19747d.b();
            com.bykv.vk.openvk.preload.geckox.h.a.a(oVar.a(), cVar);
        }
    }
}
