package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.p;
import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class h implements s {

    private final com.bykv.vk.openvk.preload.a.b.b f19725a;

    private final com.bykv.vk.openvk.preload.a.c f19726b;

    private final com.bykv.vk.openvk.preload.a.b.c f19727c;

    private final com.bykv.vk.openvk.preload.a.b.b.b f19728d = com.bykv.vk.openvk.preload.a.b.b.b.a();

    static abstract class b {

        final String f19737a;

        final boolean f19738b;

        final boolean f19739c;

        protected b(String str, boolean z10, boolean z11) {
            this.f19737a = str;
            this.f19738b = z10;
            this.f19739c = z11;
        }

        abstract void a(com.bykv.vk.openvk.preload.a.d.a aVar, Object obj) throws IllegalAccessException, IOException;

        abstract void a(com.bykv.vk.openvk.preload.a.d.c cVar, Object obj) throws IllegalAccessException, IOException;

        abstract boolean a(Object obj) throws IllegalAccessException, IOException;
    }

    public h(com.bykv.vk.openvk.preload.a.b.b bVar, com.bykv.vk.openvk.preload.a.c cVar, com.bykv.vk.openvk.preload.a.b.c cVar2) {
        this.f19725a = bVar;
        this.f19726b = cVar;
        this.f19727c = cVar2;
    }

    private boolean a(Field field, boolean z10) {
        com.bykv.vk.openvk.preload.a.b.c cVar = this.f19727c;
        return (cVar.a(field.getType(), z10) || cVar.a(field, z10)) ? false : true;
    }

    private List<String> a(Field field) {
        com.bykv.vk.openvk.preload.a.a.b bVar = (com.bykv.vk.openvk.preload.a.a.b) field.getAnnotation(com.bykv.vk.openvk.preload.a.a.b.class);
        if (bVar == null) {
            return Collections.singletonList(this.f19726b.a(field));
        }
        String strA = bVar.a();
        String[] strArrB = bVar.b();
        if (strArrB.length == 0) {
            return Collections.singletonList(strA);
        }
        ArrayList arrayList = new ArrayList(strArrB.length + 1);
        arrayList.add(strA);
        for (String str : strArrB) {
            arrayList.add(str);
        }
        return arrayList;
    }

    public static final class a<T> extends r<T> {

        private final com.bykv.vk.openvk.preload.a.b.h<T> f19735a;

        private final Map<String, b> f19736b;

        a(com.bykv.vk.openvk.preload.a.b.h<T> hVar, Map<String, b> map) {
            this.f19735a = hVar;
            this.f19736b = map;
        }

        @Override
        public final T a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
            if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            T tA = this.f19735a.a();
            try {
                aVar.c();
                while (aVar.e()) {
                    b bVar = this.f19736b.get(aVar.g());
                    if (bVar == null || !bVar.f19739c) {
                        aVar.n();
                    } else {
                        bVar.a(aVar, tA);
                    }
                }
                aVar.d();
                return tA;
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (IllegalStateException e11) {
                throw new p(e11);
            }
        }

        @Override
        public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t10) throws IOException {
            if (t10 == null) {
                cVar.h();
                return;
            }
            cVar.f();
            try {
                for (b bVar : this.f19736b.values()) {
                    if (bVar.a(t10)) {
                        cVar.a(bVar.f19737a);
                        bVar.a(cVar, t10);
                    }
                }
                cVar.g();
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    @Override
    public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        Class<? super T> clsA = aVar.a();
        if (Object.class.isAssignableFrom(clsA)) {
            return new a(this.f19725a.a(aVar), a(dVar, aVar, clsA));
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r25v0 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [int] */
    /* JADX WARN: Type inference failed for: r2v9 */
    private Map<String, b> a(final com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<?> aVar, Class<?> cls) {
        int i10;
        boolean z10;
        int i11;
        Field[] fieldArr;
        com.bykv.vk.openvk.preload.a.c.a<?> aVar2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type typeB = aVar.b();
        com.bykv.vk.openvk.preload.a.c.a<?> aVarA = aVar;
        Class<?> clsA = cls;
        while (clsA != Object.class) {
            Field[] declaredFields = clsA.getDeclaredFields();
            int length = declaredFields.length;
            boolean z11 = false;
            int i12 = 0;
            while (i12 < length) {
                Field field = declaredFields[i12];
                boolean zA = this.a(field, true);
                boolean zA2 = this.a(field, z11);
                if (zA || zA2) {
                    this.f19728d.a(field);
                    Type typeA = com.bykv.vk.openvk.preload.a.b.a.a(aVarA.b(), clsA, field.getGenericType());
                    List<String> listA = this.a(field);
                    int size = listA.size();
                    ?? r10 = z11;
                    b bVar = null;
                    while (r10 < size) {
                        com.bykv.vk.openvk.preload.a.c.a<?> aVar3 = aVarA;
                        String str = listA.get(r10);
                        boolean z12 = r10 != 0 ? z11 : zA;
                        final com.bykv.vk.openvk.preload.a.c.a<?> aVarA2 = com.bykv.vk.openvk.preload.a.c.a.a(typeA);
                        Class<? super Object> clsA2 = aVarA2.a();
                        boolean z13 = (clsA2 instanceof Class) && clsA2.isPrimitive();
                        com.bykv.vk.openvk.preload.a.a.a aVar4 = (com.bykv.vk.openvk.preload.a.a.a) field.getAnnotation(com.bykv.vk.openvk.preload.a.a.a.class);
                        r<?> rVarA = aVar4 != null ? d.a(this.f19725a, dVar, aVarA2, aVar4) : null;
                        boolean z14 = rVarA != null;
                        if (rVarA == null) {
                            rVarA = dVar.a((com.bykv.vk.openvk.preload.a.c.a) aVarA2);
                        }
                        final r<?> rVar = rVarA;
                        ?? r25 = r10;
                        int i13 = size;
                        List<String> list = listA;
                        final Field field2 = field;
                        Field field3 = field;
                        final boolean z15 = z14;
                        int i14 = i12;
                        int i15 = length;
                        Field[] fieldArr2 = declaredFields;
                        final boolean z16 = z13;
                        b bVar2 = (b) linkedHashMap.put(str, new b(str, z12, zA2) {
                            @Override
                            final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Object obj) throws IllegalAccessException, IOException {
                                (z15 ? rVar : new l(dVar, rVar, aVarA2.b())).a(cVar, field2.get(obj));
                            }

                            @Override
                            final void a(com.bykv.vk.openvk.preload.a.d.a aVar5, Object obj) throws IllegalAccessException, IOException {
                                Object objA = rVar.a(aVar5);
                                if (objA == null && z16) {
                                    return;
                                }
                                field2.set(obj, objA);
                            }

                            @Override
                            public final boolean a(Object obj) throws IllegalAccessException, IOException {
                                return this.f19738b && field2.get(obj) != obj;
                            }
                        });
                        if (bVar == null) {
                            bVar = bVar2;
                        }
                        this = this;
                        aVarA = aVar3;
                        zA = z12;
                        z11 = false;
                        length = i15;
                        declaredFields = fieldArr2;
                        size = i13;
                        listA = list;
                        field = field3;
                        i12 = i14;
                        r10 = (r25 == true ? 1 : 0) + 1;
                    }
                    i10 = i12;
                    z10 = z11;
                    i11 = length;
                    fieldArr = declaredFields;
                    aVar2 = aVarA;
                    if (bVar != null) {
                        throw new IllegalArgumentException(typeB + " declares multiple JSON fields named " + bVar.f19737a);
                    }
                } else {
                    i10 = i12;
                    z10 = z11;
                    i11 = length;
                    fieldArr = declaredFields;
                    aVar2 = aVarA;
                }
                i12 = i10 + 1;
                this = this;
                clsA = clsA;
                aVarA = aVar2;
                z11 = z10;
                length = i11;
                declaredFields = fieldArr;
            }
            Class<?> cls2 = clsA;
            aVarA = com.bykv.vk.openvk.preload.a.c.a.a(com.bykv.vk.openvk.preload.a.b.a.a(aVarA.b(), cls2, cls2.getGenericSuperclass()));
            clsA = aVarA.a();
        }
        return linkedHashMap;
    }
}
