package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

public final class b implements s {

    private final com.bykv.vk.openvk.preload.a.b.b f19711a;

    public b(com.bykv.vk.openvk.preload.a.b.b bVar) {
        this.f19711a = bVar;
    }

    @Override
    public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        Type typeB = aVar.b();
        Class<? super T> clsA = aVar.a();
        if (!Collection.class.isAssignableFrom(clsA)) {
            return null;
        }
        Type typeA = com.bykv.vk.openvk.preload.a.b.a.a(typeB, (Class<?>) clsA);
        return new a(dVar, typeA, dVar.a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(typeA)), this.f19711a.a(aVar));
    }

    static final class a<E> extends r<Collection<E>> {

        private final r<E> f19712a;

        private final com.bykv.vk.openvk.preload.a.b.h<? extends Collection<E>> f19713b;

        public a(com.bykv.vk.openvk.preload.a.d dVar, Type type, r<E> rVar, com.bykv.vk.openvk.preload.a.b.h<? extends Collection<E>> hVar) {
            this.f19712a = new l(dVar, rVar, type);
            this.f19713b = hVar;
        }

        @Override
        public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Object obj) throws IOException {
            Collection collection = (Collection) obj;
            if (collection == null) {
                cVar.h();
                return;
            }
            cVar.d();
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                this.f19712a.a(cVar, it.next());
            }
            cVar.e();
        }

        @Override
        public final Object a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
            if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            Collection<E> collectionA = this.f19713b.a();
            aVar.a();
            while (aVar.e()) {
                collectionA.add(this.f19712a.a(aVar));
            }
            aVar.b();
            return collectionA;
        }
    }
}
