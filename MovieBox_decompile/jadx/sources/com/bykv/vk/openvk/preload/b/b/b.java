package com.bykv.vk.openvk.preload.b.b;

import com.bykv.vk.openvk.preload.b.d;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public final class b extends a {

    private List<a> f19920a;

    public b(a... aVarArr) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f19920a = copyOnWriteArrayList;
        copyOnWriteArrayList.addAll(Arrays.asList(aVarArr));
    }

    public final void a(a aVar) {
        if (aVar == null) {
            return;
        }
        this.f19920a.add(aVar);
    }

    @Override
    public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar) {
        for (a aVar : this.f19920a) {
            if (aVar != null) {
                aVar.b(bVar, dVar);
            }
        }
    }

    @Override
    public final <T> void c(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar) {
        for (a aVar : this.f19920a) {
            if (aVar != null) {
                aVar.c(bVar, dVar);
            }
        }
    }

    @Override
    public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar) {
        for (a aVar : this.f19920a) {
            if (aVar != null) {
                aVar.a(bVar, dVar);
            }
        }
    }

    @Override
    public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar, Throwable th2) {
        for (a aVar : this.f19920a) {
            if (aVar != null) {
                aVar.b(bVar, dVar, th2);
            }
        }
    }

    @Override
    public final <T> void c(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar, Throwable th2) {
        for (a aVar : this.f19920a) {
            if (aVar != null) {
                aVar.c(bVar, dVar, th2);
            }
        }
    }

    @Override
    public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar, Throwable th2) {
        for (a aVar : this.f19920a) {
            if (aVar != null) {
                aVar.a(bVar, dVar, th2);
            }
        }
    }
}
