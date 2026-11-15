package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import java.io.IOException;
import java.util.ArrayList;

public final class g extends r<Object> {

    public static final s f19722a = new s() {
        @Override
        public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
            if (aVar.a() == Object.class) {
                return new g(dVar);
            }
            return null;
        }
    };

    private final com.bykv.vk.openvk.preload.a.d f19723b;

    static class AnonymousClass2 {

        static final int[] f19724a;

        static {
            int[] iArr = new int[com.bykv.vk.openvk.preload.a.d.b.values().length];
            f19724a = iArr;
            try {
                iArr[com.bykv.vk.openvk.preload.a.d.b.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19724a[com.bykv.vk.openvk.preload.a.d.b.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19724a[com.bykv.vk.openvk.preload.a.d.b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19724a[com.bykv.vk.openvk.preload.a.d.b.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19724a[com.bykv.vk.openvk.preload.a.d.b.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19724a[com.bykv.vk.openvk.preload.a.d.b.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    g(com.bykv.vk.openvk.preload.a.d dVar) {
        this.f19723b = dVar;
    }

    @Override
    public final Object a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
        switch (AnonymousClass2.f19724a[aVar.f().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    arrayList.add(a(aVar));
                }
                aVar.b();
                return arrayList;
            case 2:
                com.bykv.vk.openvk.preload.a.b.g gVar = new com.bykv.vk.openvk.preload.a.b.g();
                aVar.c();
                while (aVar.e()) {
                    gVar.put(aVar.g(), a(aVar));
                }
                aVar.d();
                return gVar;
            case 3:
                return aVar.h();
            case 4:
                return Double.valueOf(aVar.k());
            case 5:
                return Boolean.valueOf(aVar.i());
            case 6:
                aVar.j();
                return null;
            default:
                throw new IllegalStateException();
        }
    }

    @Override
    public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Object obj) throws IOException {
        if (obj == null) {
            cVar.h();
            return;
        }
        r rVarA = this.f19723b.a((Class) obj.getClass());
        if (rVarA instanceof g) {
            cVar.f();
            cVar.g();
        } else {
            rVarA.a(cVar, obj);
        }
    }
}
