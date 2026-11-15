package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.p;
import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Map;

public final class f implements s {

    private final com.bykv.vk.openvk.preload.a.b.b f19718a;

    public f(com.bykv.vk.openvk.preload.a.b.b bVar) {
        this.f19718a = bVar;
    }

    @Override
    public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        Type typeB = aVar.b();
        if (!Map.class.isAssignableFrom(aVar.a())) {
            return null;
        }
        Type[] typeArrB = com.bykv.vk.openvk.preload.a.b.a.b(typeB, com.bykv.vk.openvk.preload.a.b.a.b(typeB));
        Type type = typeArrB[0];
        return new a(this, dVar, typeArrB[0], (type == Boolean.TYPE || type == Boolean.class) ? m.f19755c : dVar.a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(type)), typeArrB[1], dVar.a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(typeArrB[1])), this.f19718a.a(aVar));
    }

    final class a<K, V> extends r<Map<K, V>> {

        private final r<K> f19719a;

        private final r<V> f19720b;

        private final com.bykv.vk.openvk.preload.a.b.h<? extends Map<K, V>> f19721c;

        public a(f fVar, com.bykv.vk.openvk.preload.a.d dVar, Type type, r<K> rVar, Type type2, r<V> rVar2, com.bykv.vk.openvk.preload.a.b.h<? extends Map<K, V>> hVar) {
            this.f19719a = new l(dVar, rVar, type);
            this.f19720b = new l(dVar, rVar2, type2);
            this.f19721c = hVar;
        }

        @Override
        public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Object obj) throws IOException {
            Map map = (Map) obj;
            if (map == null) {
                cVar.h();
                return;
            }
            cVar.f();
            for (Map.Entry<K, V> entry : map.entrySet()) {
                cVar.a(String.valueOf(entry.getKey()));
                this.f19720b.a(cVar, entry.getValue());
            }
            cVar.g();
        }

        @Override
        public final Object a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
            com.bykv.vk.openvk.preload.a.d.b bVarF = aVar.f();
            if (bVarF == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            Map<K, V> mapA = this.f19721c.a();
            if (bVarF == com.bykv.vk.openvk.preload.a.d.b.BEGIN_ARRAY) {
                aVar.a();
                while (aVar.e()) {
                    aVar.a();
                    K kA = this.f19719a.a(aVar);
                    if (mapA.put(kA, this.f19720b.a(aVar)) == null) {
                        aVar.b();
                    } else {
                        throw new p("duplicate key: ".concat(String.valueOf(kA)));
                    }
                }
                aVar.b();
            } else {
                aVar.c();
                while (aVar.e()) {
                    com.bykv.vk.openvk.preload.a.b.e.f19823a.a(aVar);
                    K kA2 = this.f19719a.a(aVar);
                    if (mapA.put(kA2, this.f19720b.a(aVar)) != null) {
                        throw new p("duplicate key: ".concat(String.valueOf(kA2)));
                    }
                }
                aVar.d();
            }
            return mapA;
        }
    }
}
