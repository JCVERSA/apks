package com.bykv.vk.openvk.preload.a;

import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

public final class d {

    private static final com.bykv.vk.openvk.preload.a.c.a<?> f19856a = com.bykv.vk.openvk.preload.a.c.a.a(Object.class);

    private final ThreadLocal<Map<com.bykv.vk.openvk.preload.a.c.a<?>, a<?>>> f19857b;

    private final Map<com.bykv.vk.openvk.preload.a.c.a<?>, r<?>> f19858c;

    private final com.bykv.vk.openvk.preload.a.b.b f19859d;

    private final com.bykv.vk.openvk.preload.a.b.a.d f19860e;

    private List<s> f19861f;

    private boolean f19862g;

    /* JADX WARN: Illegal instructions before constructor call */
    public d() {
        com.bykv.vk.openvk.preload.a.b.c cVar = com.bykv.vk.openvk.preload.a.b.c.f19810a;
        b bVar = b.f19694a;
        Map mapEmptyMap = Collections.emptyMap();
        q qVar = q.f19917a;
        Collections.emptyList();
        Collections.emptyList();
        this(cVar, bVar, mapEmptyMap, true, qVar, Collections.emptyList());
    }

    static void a(double d10) {
        if (Double.isNaN(d10) || Double.isInfinite(d10)) {
            throw new IllegalArgumentException(d10 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public final String toString() {
        return "{serializeNulls:false,factories:" + this.f19861f + ",instanceCreators:" + this.f19859d + "}";
    }

    static class a<T> extends r<T> {

        private r<T> f19865a;

        a() {
        }

        public final void a(r<T> rVar) {
            if (this.f19865a != null) {
                throw new AssertionError();
            }
            this.f19865a = rVar;
        }

        @Override
        public final T a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
            r<T> rVar = this.f19865a;
            if (rVar != null) {
                return rVar.a(aVar);
            }
            throw new IllegalStateException();
        }

        @Override
        public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t10) throws IOException {
            r<T> rVar = this.f19865a;
            if (rVar != null) {
                rVar.a(cVar, t10);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public final <T> r<T> a(com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        boolean z10;
        r<T> rVar = (r) this.f19858c.get(aVar == null ? f19856a : aVar);
        if (rVar != null) {
            return rVar;
        }
        Map<com.bykv.vk.openvk.preload.a.c.a<?>, a<?>> map = this.f19857b.get();
        if (map == null) {
            map = new HashMap<>();
            this.f19857b.set(map);
            z10 = true;
        } else {
            z10 = false;
        }
        a<?> aVar2 = map.get(aVar);
        if (aVar2 != null) {
            return aVar2;
        }
        try {
            a<?> aVar3 = new a<>();
            map.put(aVar, aVar3);
            Iterator<s> it = this.f19861f.iterator();
            while (it.hasNext()) {
                r<T> rVarA = it.next().a(this, aVar);
                if (rVarA != null) {
                    aVar3.a((r<?>) rVarA);
                    this.f19858c.put(aVar, rVarA);
                    map.remove(aVar);
                    if (z10) {
                        this.f19857b.remove();
                    }
                    return rVarA;
                }
            }
            throw new IllegalArgumentException("GSON (pangle-v3200) cannot handle ".concat(String.valueOf(aVar)));
        } catch (Throwable th2) {
            map.remove(aVar);
            if (z10) {
                this.f19857b.remove();
            }
            throw th2;
        }
    }

    d(com.bykv.vk.openvk.preload.a.b.c cVar, c cVar2, Map<Type, f<?>> map, boolean z10, q qVar, List<s> list) {
        final r<Number> rVar;
        this.f19857b = new ThreadLocal<>();
        this.f19858c = new ConcurrentHashMap();
        com.bykv.vk.openvk.preload.a.b.b bVar = new com.bykv.vk.openvk.preload.a.b.b(map);
        this.f19859d = bVar;
        this.f19862g = z10;
        ArrayList arrayList = new ArrayList();
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.B);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.g.f19722a);
        arrayList.add(cVar);
        arrayList.addAll(list);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19768p);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19759g);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19756d);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19757e);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19758f);
        if (qVar == q.f19917a) {
            rVar = com.bykv.vk.openvk.preload.a.b.a.m.f19763k;
        } else {
            rVar = new r<Number>() {
                @Override
                public final void a(com.bykv.vk.openvk.preload.a.d.c cVar3, Number number) throws IOException {
                    Number number2 = number;
                    if (number2 == null) {
                        cVar3.h();
                    } else {
                        cVar3.b(number2.toString());
                    }
                }

                @Override
                public final Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                    if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                        aVar.j();
                        return null;
                    }
                    return Long.valueOf(aVar.l());
                }
            };
        }
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(Long.TYPE, Long.class, rVar));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(Double.TYPE, Double.class, new r<Number>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar3, Number number) throws IOException {
                Number number2 = number;
                if (number2 == null) {
                    cVar3.h();
                } else {
                    d.a(number2.doubleValue());
                    cVar3.a(number2);
                }
            }

            @Override
            public final Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                return Double.valueOf(aVar.k());
            }
        }));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(Float.TYPE, Float.class, new r<Number>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar3, Number number) throws IOException {
                Number number2 = number;
                if (number2 == null) {
                    cVar3.h();
                } else {
                    d.a(number2.floatValue());
                    cVar3.a(number2);
                }
            }

            @Override
            public final Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                return Float.valueOf((float) aVar.k());
            }
        }));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19764l);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19760h);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19761i);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(AtomicLong.class, new r<AtomicLong>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar3, AtomicLong atomicLong) throws IOException {
                rVar.a(cVar3, Long.valueOf(atomicLong.get()));
            }

            @Override
            public final AtomicLong a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return new AtomicLong(((Number) rVar.a(aVar)).longValue());
            }
        }.a()));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(AtomicLongArray.class, new r<AtomicLongArray>() {
            @Override
            public final void a(com.bykv.vk.openvk.preload.a.d.c cVar3, AtomicLongArray atomicLongArray) throws IOException {
                AtomicLongArray atomicLongArray2 = atomicLongArray;
                cVar3.d();
                int length = atomicLongArray2.length();
                for (int i10 = 0; i10 < length; i10++) {
                    rVar.a(cVar3, Long.valueOf(atomicLongArray2.get(i10)));
                }
                cVar3.e();
            }

            @Override
            public final AtomicLongArray a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                ArrayList arrayList2 = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    arrayList2.add(Long.valueOf(((Number) rVar.a(aVar)).longValue()));
                }
                aVar.b();
                int size = arrayList2.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i10 = 0; i10 < size; i10++) {
                    atomicLongArray.set(i10, ((Long) arrayList2.get(i10)).longValue());
                }
                return atomicLongArray;
            }
        }.a()));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19762j);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19765m);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19769q);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19770r);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(BigDecimal.class, com.bykv.vk.openvk.preload.a.b.a.m.f19766n));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(BigInteger.class, com.bykv.vk.openvk.preload.a.b.a.m.f19767o));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19771s);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19772t);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19774v);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19775w);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19778z);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19773u);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19754b);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.c.f19714a);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19777y);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.j.f19742a);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.i.f19740a);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19776x);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.a.f19707a);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.f19753a);
        arrayList.add(new com.bykv.vk.openvk.preload.a.b.a.b(bVar));
        arrayList.add(new com.bykv.vk.openvk.preload.a.b.a.f(bVar));
        com.bykv.vk.openvk.preload.a.b.a.d dVar = new com.bykv.vk.openvk.preload.a.b.a.d(bVar);
        this.f19860e = dVar;
        arrayList.add(dVar);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.C);
        arrayList.add(new com.bykv.vk.openvk.preload.a.b.a.h(bVar, cVar2, cVar));
        this.f19861f = Collections.unmodifiableList(arrayList);
    }

    public final <T> r<T> a(s sVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        if (!this.f19861f.contains(sVar)) {
            sVar = this.f19860e;
        }
        boolean z10 = false;
        for (s sVar2 : this.f19861f) {
            if (z10) {
                r<T> rVarA = sVar2.a(this, aVar);
                if (rVarA != null) {
                    return rVarA;
                }
            } else if (sVar2 == sVar) {
                z10 = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize ".concat(String.valueOf(aVar)));
    }

    public final <T> r<T> a(Class<T> cls) {
        return a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a((Class) cls));
    }

    public final String a(Object obj) {
        if (obj == null) {
            k kVar = k.f19914a;
            StringWriter stringWriter = new StringWriter();
            try {
                com.bykv.vk.openvk.preload.a.d.c cVarA = a((Writer) stringWriter);
                boolean zA = cVarA.a();
                cVarA.a(true);
                boolean zB = cVarA.b();
                cVarA.b(this.f19862g);
                boolean zC = cVarA.c();
                cVarA.c(false);
                try {
                    try {
                        com.bykv.vk.openvk.preload.geckox.h.a.a(kVar, cVarA);
                        cVarA.a(zA);
                        cVarA.b(zB);
                        cVarA.c(zC);
                        return stringWriter.toString();
                    } catch (Throwable th2) {
                        cVarA.a(zA);
                        cVarA.b(zB);
                        cVarA.c(zC);
                        throw th2;
                    }
                } catch (IOException e10) {
                    throw new j(e10);
                } catch (AssertionError e11) {
                    AssertionError assertionError = new AssertionError("AssertionError (GSON pangle-v3200): " + e11.getMessage());
                    assertionError.initCause(e11);
                    throw assertionError;
                }
            } catch (IOException e12) {
                throw new j(e12);
            }
        }
        Class<?> cls = obj.getClass();
        StringWriter stringWriter2 = new StringWriter();
        try {
            com.bykv.vk.openvk.preload.a.d.c cVarA2 = a((Writer) stringWriter2);
            r rVarA = a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a((Type) cls));
            boolean zA2 = cVarA2.a();
            cVarA2.a(true);
            boolean zB2 = cVarA2.b();
            cVarA2.b(this.f19862g);
            boolean zC2 = cVarA2.c();
            cVarA2.c(false);
            try {
                try {
                    rVarA.a(cVarA2, obj);
                    cVarA2.a(zA2);
                    cVarA2.b(zB2);
                    cVarA2.c(zC2);
                    return stringWriter2.toString();
                } catch (IOException e13) {
                    throw new j(e13);
                } catch (AssertionError e14) {
                    AssertionError assertionError2 = new AssertionError("AssertionError (GSON pangle-v3200): " + e14.getMessage());
                    assertionError2.initCause(e14);
                    throw assertionError2;
                }
            } catch (Throwable th3) {
                cVarA2.a(zA2);
                cVarA2.b(zB2);
                cVarA2.c(zC2);
                throw th3;
            }
        } catch (IOException e15) {
            throw new j(e15);
        }
    }

    private static com.bykv.vk.openvk.preload.a.d.c a(Writer writer) throws IOException {
        com.bykv.vk.openvk.preload.a.d.c cVar = new com.bykv.vk.openvk.preload.a.d.c(writer);
        cVar.c(false);
        return cVar;
    }

    private <T> T a(com.bykv.vk.openvk.preload.a.d.a aVar, Type type) throws j, p {
        boolean zP = aVar.p();
        boolean z10 = true;
        aVar.a(true);
        try {
            try {
                try {
                    aVar.f();
                    z10 = false;
                    T tA = a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(type)).a(aVar);
                    aVar.a(zP);
                    return tA;
                } catch (EOFException e10) {
                    if (z10) {
                        aVar.a(zP);
                        return null;
                    }
                    throw new p(e10);
                } catch (IllegalStateException e11) {
                    throw new p(e11);
                }
            } catch (IOException e12) {
                throw new p(e12);
            } catch (AssertionError e13) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON pangle-v3200): " + e13.getMessage());
                assertionError.initCause(e13);
                throw assertionError;
            }
        } catch (Throwable th2) {
            aVar.a(zP);
            throw th2;
        }
    }

    public final <T> T a(Reader reader, Type type) throws j, p {
        com.bykv.vk.openvk.preload.a.d.a aVar = new com.bykv.vk.openvk.preload.a.d.a(reader);
        aVar.a(false);
        T t10 = (T) a(aVar, type);
        if (t10 != null) {
            try {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.END_DOCUMENT) {
                    throw new j("JSON document was not fully consumed.");
                }
            } catch (com.bykv.vk.openvk.preload.a.d.d e10) {
                throw new p(e10);
            } catch (IOException e11) {
                throw new j(e11);
            }
        }
        return t10;
    }
}
