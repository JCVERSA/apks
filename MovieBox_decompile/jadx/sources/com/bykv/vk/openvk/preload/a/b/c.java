package com.bykv.vk.openvk.preload.a.b;

import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class c implements s, Cloneable {

    public static final c f19810a = new c();

    private double f19811b = -1.0d;

    private int f19812c = Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE;

    private boolean f19813d = true;

    private List<com.bykv.vk.openvk.preload.geckox.a.a.c> f19814e = Collections.emptyList();

    private List<com.bykv.vk.openvk.preload.geckox.a.a.c> f19815f = Collections.emptyList();

    public c clone() {
        try {
            return (c) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    private static boolean b(Class<?> cls) {
        if (Enum.class.isAssignableFrom(cls)) {
            return false;
        }
        return cls.isAnonymousClass() || cls.isLocalClass();
    }

    private static boolean c(Class<?> cls) {
        return cls.isMemberClass() && !d(cls);
    }

    private static boolean d(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    @Override
    public final <T> r<T> a(final com.bykv.vk.openvk.preload.a.d dVar, final com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        boolean zA = a(aVar.a());
        final boolean z10 = zA || a(true);
        final boolean z11 = zA || a(false);
        if (z10 || z11) {
            return new r<T>() {

                private r<T> f19816a;

                private r<T> b() {
                    r<T> rVar = this.f19816a;
                    if (rVar != null) {
                        return rVar;
                    }
                    r<T> rVarA = dVar.a(c.this, aVar);
                    this.f19816a = rVarA;
                    return rVarA;
                }

                @Override
                public final T a(com.bykv.vk.openvk.preload.a.d.a aVar2) throws IOException {
                    if (!z11) {
                        return b().a(aVar2);
                    }
                    aVar2.n();
                    return null;
                }

                @Override
                public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t10) throws IOException {
                    if (z10) {
                        cVar.h();
                    } else {
                        b().a(cVar, t10);
                    }
                }
            };
        }
        return null;
    }

    public final boolean a(Field field, boolean z10) {
        if ((this.f19812c & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.f19811b != -1.0d && !a((com.bykv.vk.openvk.preload.a.a.c) field.getAnnotation(com.bykv.vk.openvk.preload.a.a.c.class), (com.bykv.vk.openvk.preload.a.a.d) field.getAnnotation(com.bykv.vk.openvk.preload.a.a.d.class))) || field.isSynthetic()) {
            return true;
        }
        if ((!this.f19813d && c(field.getType())) || b(field.getType())) {
            return true;
        }
        List<com.bykv.vk.openvk.preload.geckox.a.a.c> list = z10 ? this.f19814e : this.f19815f;
        if (list.isEmpty()) {
            return false;
        }
        new com.bykv.vk.openvk.preload.geckox.a.c(field);
        Iterator<com.bykv.vk.openvk.preload.geckox.a.a.c> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().b()) {
                return true;
            }
        }
        return false;
    }

    private boolean a(Class<?> cls) {
        if (this.f19811b == -1.0d || a((com.bykv.vk.openvk.preload.a.a.c) cls.getAnnotation(com.bykv.vk.openvk.preload.a.a.c.class), (com.bykv.vk.openvk.preload.a.a.d) cls.getAnnotation(com.bykv.vk.openvk.preload.a.a.d.class))) {
            return (!this.f19813d && c(cls)) || b(cls);
        }
        return true;
    }

    public final boolean a(Class<?> cls, boolean z10) {
        return a(cls) || a(z10);
    }

    private boolean a(boolean z10) {
        Iterator<com.bykv.vk.openvk.preload.geckox.a.a.c> it = (z10 ? this.f19814e : this.f19815f).iterator();
        while (it.hasNext()) {
            if (it.next().c()) {
                return true;
            }
        }
        return false;
    }

    private boolean a(com.bykv.vk.openvk.preload.a.a.c cVar, com.bykv.vk.openvk.preload.a.a.d dVar) {
        return a(cVar) && a(dVar);
    }

    private boolean a(com.bykv.vk.openvk.preload.a.a.c cVar) {
        return cVar == null || cVar.a() <= this.f19811b;
    }

    private boolean a(com.bykv.vk.openvk.preload.a.a.d dVar) {
        return dVar == null || dVar.a() > this.f19811b;
    }
}
