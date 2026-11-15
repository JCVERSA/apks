package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.r;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

final class l<T> extends r<T> {

    private final com.bykv.vk.openvk.preload.a.d f19750a;

    private final r<T> f19751b;

    private final Type f19752c;

    l(com.bykv.vk.openvk.preload.a.d dVar, r<T> rVar, Type type) {
        this.f19750a = dVar;
        this.f19751b = rVar;
        this.f19752c = type;
    }

    @Override
    public final T a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
        return this.f19751b.a(aVar);
    }

    @Override
    public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t10) throws IOException {
        r<T> rVarA = this.f19751b;
        Type type = this.f19752c;
        if (t10 != null && (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class))) {
            type = t10.getClass();
        }
        if (type != this.f19752c) {
            rVarA = this.f19750a.a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(type));
            if (rVarA instanceof h.a) {
                r<T> rVar = this.f19751b;
                if (!(rVar instanceof h.a)) {
                    rVarA = rVar;
                }
            }
        }
        rVarA.a(cVar, t10);
    }
}
