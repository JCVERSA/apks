package com.bykv.vk.openvk.preload.a;

import java.io.IOException;

public abstract class r<T> {
    public final r<T> a() {
        return new r<T>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t10) throws IOException {
                if (t10 == null) {
                    cVar.h();
                } else {
                    r.this.a(cVar, t10);
                }
            }

            @Override
            public final T a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                return (T) r.this.a(aVar);
            }
        };
    }

    public abstract T a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException;

    public abstract void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t10) throws IOException;
}
