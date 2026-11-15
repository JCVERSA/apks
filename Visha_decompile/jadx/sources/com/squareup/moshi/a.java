package com.squareup.moshi;

import defpackage.kdb;
import defpackage.rc5;
import defpackage.uoa;
import defpackage.wkb;
import defpackage.z64;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public final class a implements com.squareup.moshi.e.InterfaceC0196e {
    public final List a;
    public final List b;

    public class C0195a extends com.squareup.moshi.e {
        public final f a;
        public final com.squareup.moshi.e b;
        public final j c;
        public final f d;
        public final Set e;
        public final Type f;

        public C0195a(f fVar, com.squareup.moshi.e eVar, j jVar, f fVar2, Set set, Type type) {
            this.a = fVar;
            this.b = eVar;
            this.c = jVar;
            this.d = fVar2;
            this.e = set;
            this.f = type;
        }

        @Override
        public Object fromJson(JsonReader jsonReader) throws IOException {
            f fVar = this.d;
            if (fVar == null) {
                return this.b.fromJson(jsonReader);
            }
            if (!fVar.g && jsonReader.K() == JsonReader.Token.NULL) {
                jsonReader.H();
                return null;
            }
            try {
                return this.d.b(this.c, jsonReader);
            } catch (InvocationTargetException e) {
                Throwable cause = e.getCause();
                if (cause instanceof IOException) {
                    throw ((IOException) cause);
                }
                throw new JsonDataException(cause + " at " + jsonReader.getPath(), cause);
            }
        }

        @Override
        public void toJson(rc5 rc5Var, Object obj) throws IOException {
            f fVar = this.a;
            if (fVar == null) {
                this.b.toJson(rc5Var, obj);
                return;
            }
            if (!fVar.g && obj == null) {
                rc5Var.E();
                return;
            }
            try {
                fVar.e(this.c, rc5Var, obj);
            } catch (InvocationTargetException e) {
                Throwable cause = e.getCause();
                if (cause instanceof IOException) {
                    throw ((IOException) cause);
                }
                throw new JsonDataException(cause + " at " + rc5Var.getPath(), cause);
            }
        }

        public String toString() {
            return "JsonAdapter" + this.e + "(" + this.f + ")";
        }
    }

    public class b extends f {
        public b(Type type, Set set, Object obj, Method method, int i, int i2, boolean z) {
            super(type, set, obj, method, i, i2, z);
        }

        @Override
        public void e(j jVar, rc5 rc5Var, Object obj) {
            d(rc5Var, obj);
        }
    }

    public class c extends f {
        public com.squareup.moshi.e h;
        public final Type[] i;
        public final Type j;
        public final Set k;
        public final Set l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Type type, Set set, Object obj, Method method, int i, int i2, boolean z, Type[] typeArr, Type type2, Set set2, Set set3) {
            super(type, set, obj, method, i, i2, z);
            this.i = typeArr;
            this.j = type2;
            this.k = set2;
            this.l = set3;
        }

        @Override
        public void a(j jVar, com.squareup.moshi.e.InterfaceC0196e interfaceC0196e) {
            super.a(jVar, interfaceC0196e);
            this.h = (kdb.d(this.i[0], this.j) && this.k.equals(this.l)) ? jVar.h(interfaceC0196e, this.j, this.l) : jVar.e(this.j, this.l);
        }

        @Override
        public void e(j jVar, rc5 rc5Var, Object obj) {
            this.h.toJson(rc5Var, c(obj));
        }
    }

    public class d extends f {
        public d(Type type, Set set, Object obj, Method method, int i, int i2, boolean z) {
            super(type, set, obj, method, i, i2, z);
        }

        @Override
        public Object b(j jVar, JsonReader jsonReader) {
            return c(jsonReader);
        }
    }

    public class e extends f {
        public com.squareup.moshi.e h;
        public final Type[] i;
        public final Type j;
        public final Set k;
        public final Set l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Type type, Set set, Object obj, Method method, int i, int i2, boolean z, Type[] typeArr, Type type2, Set set2, Set set3) {
            super(type, set, obj, method, i, i2, z);
            this.i = typeArr;
            this.j = type2;
            this.k = set2;
            this.l = set3;
        }

        @Override
        public void a(j jVar, com.squareup.moshi.e.InterfaceC0196e interfaceC0196e) {
            super.a(jVar, interfaceC0196e);
            this.h = (kdb.d(this.i[0], this.j) && this.k.equals(this.l)) ? jVar.h(interfaceC0196e, this.i[0], this.k) : jVar.e(this.i[0], this.k);
        }

        @Override
        public Object b(j jVar, JsonReader jsonReader) {
            return c(this.h.fromJson(jsonReader));
        }
    }

    public static abstract class f {
        public final Type a;
        public final Set b;
        public final Object c;
        public final Method d;
        public final int e;
        public final com.squareup.moshi.e[] f;
        public final boolean g;

        public f(Type type, Set set, Object obj, Method method, int i, int i2, boolean z) {
            this.a = wkb.a(type);
            this.b = set;
            this.c = obj;
            this.d = method;
            this.e = i2;
            this.f = new com.squareup.moshi.e[i - i2];
            this.g = z;
        }

        public void a(j jVar, com.squareup.moshi.e.InterfaceC0196e interfaceC0196e) {
            if (this.f.length > 0) {
                Type[] genericParameterTypes = this.d.getGenericParameterTypes();
                Annotation[][] parameterAnnotations = this.d.getParameterAnnotations();
                int length = genericParameterTypes.length;
                for (int i = this.e; i < length; i++) {
                    Type type = ((ParameterizedType) genericParameterTypes[i]).getActualTypeArguments()[0];
                    Set setL = wkb.l(parameterAnnotations[i]);
                    this.f[i - this.e] = (kdb.d(this.a, type) && this.b.equals(setL)) ? jVar.h(interfaceC0196e, type, setL) : jVar.e(type, setL);
                }
            }
        }

        public Object b(j jVar, JsonReader jsonReader) {
            throw new AssertionError();
        }

        public Object c(Object obj) {
            com.squareup.moshi.e[] eVarArr = this.f;
            Object[] objArr = new Object[eVarArr.length + 1];
            objArr[0] = obj;
            System.arraycopy(eVarArr, 0, objArr, 1, eVarArr.length);
            try {
                return this.d.invoke(this.c, objArr);
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            }
        }

        public Object d(Object obj, Object obj2) {
            com.squareup.moshi.e[] eVarArr = this.f;
            Object[] objArr = new Object[eVarArr.length + 2];
            objArr[0] = obj;
            objArr[1] = obj2;
            System.arraycopy(eVarArr, 0, objArr, 2, eVarArr.length);
            try {
                return this.d.invoke(this.c, objArr);
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            }
        }

        public void e(j jVar, rc5 rc5Var, Object obj) {
            throw new AssertionError();
        }
    }

    public a(List list, List list2) {
        this.a = list;
        this.b = list2;
    }

    public static f b(Object obj, Method method) {
        method.setAccessible(true);
        Type genericReturnType = method.getGenericReturnType();
        Set setK = wkb.k(method);
        Type[] genericParameterTypes = method.getGenericParameterTypes();
        Annotation[][] parameterAnnotations = method.getParameterAnnotations();
        if (genericParameterTypes.length >= 1 && genericParameterTypes[0] == JsonReader.class && genericReturnType != Void.TYPE && e(1, genericParameterTypes)) {
            return new d(genericReturnType, setK, obj, method, genericParameterTypes.length, 1, true);
        }
        if (genericParameterTypes.length == 1 && genericReturnType != Void.TYPE) {
            return new e(genericReturnType, setK, obj, method, genericParameterTypes.length, 1, wkb.f(parameterAnnotations[0]), genericParameterTypes, genericReturnType, wkb.l(parameterAnnotations[0]), setK);
        }
        throw new IllegalArgumentException("Unexpected signature for " + method + ".\n@FromJson method signatures may have one of the following structures:\n    <any access modifier> R fromJson(JsonReader jsonReader) throws <any>;\n    <any access modifier> R fromJson(JsonReader jsonReader, JsonAdapter<any> delegate, <any more delegates>) throws <any>;\n    <any access modifier> R fromJson(T value) throws <any>;\n");
    }

    public static f c(List list, Type type, Set set) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            f fVar = (f) list.get(i);
            if (kdb.d(fVar.a, type) && fVar.b.equals(set)) {
                return fVar;
            }
        }
        return null;
    }

    public static a d(Object obj) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Class<?> superclass = obj.getClass(); superclass != Object.class; superclass = superclass.getSuperclass()) {
            for (Method method : superclass.getDeclaredMethods()) {
                if (method.isAnnotationPresent(uoa.class)) {
                    f fVarF = f(obj, method);
                    f fVarC = c(arrayList, fVarF.a, fVarF.b);
                    if (fVarC != null) {
                        throw new IllegalArgumentException("Conflicting @ToJson methods:\n    " + fVarC.d + "\n    " + fVarF.d);
                    }
                    arrayList.add(fVarF);
                }
                if (method.isAnnotationPresent(z64.class)) {
                    f fVarB = b(obj, method);
                    f fVarC2 = c(arrayList2, fVarB.a, fVarB.b);
                    if (fVarC2 != null) {
                        throw new IllegalArgumentException("Conflicting @FromJson methods:\n    " + fVarC2.d + "\n    " + fVarB.d);
                    }
                    arrayList2.add(fVarB);
                }
            }
        }
        if (!arrayList.isEmpty() || !arrayList2.isEmpty()) {
            return new a(arrayList, arrayList2);
        }
        throw new IllegalArgumentException("Expected at least one @ToJson or @FromJson method on " + obj.getClass().getName());
    }

    public static boolean e(int i, Type[] typeArr) {
        int length = typeArr.length;
        while (i < length) {
            Type type = typeArr[i];
            if (!(type instanceof ParameterizedType) || ((ParameterizedType) type).getRawType() != com.squareup.moshi.e.class) {
                return false;
            }
            i++;
        }
        return true;
    }

    public static f f(Object obj, Method method) {
        method.setAccessible(true);
        Type genericReturnType = method.getGenericReturnType();
        Type[] genericParameterTypes = method.getGenericParameterTypes();
        Annotation[][] parameterAnnotations = method.getParameterAnnotations();
        if (genericParameterTypes.length >= 2 && genericParameterTypes[0] == rc5.class && genericReturnType == Void.TYPE && e(2, genericParameterTypes)) {
            return new b(genericParameterTypes[1], wkb.l(parameterAnnotations[1]), obj, method, genericParameterTypes.length, 2, true);
        }
        if (genericParameterTypes.length == 1 && genericReturnType != Void.TYPE) {
            Set setK = wkb.k(method);
            Set setL = wkb.l(parameterAnnotations[0]);
            return new c(genericParameterTypes[0], setL, obj, method, genericParameterTypes.length, 1, wkb.f(parameterAnnotations[0]), genericParameterTypes, genericReturnType, setL, setK);
        }
        throw new IllegalArgumentException("Unexpected signature for " + method + ".\n@ToJson method signatures may have one of the following structures:\n    <any access modifier> void toJson(JsonWriter writer, T value) throws <any>;\n    <any access modifier> void toJson(JsonWriter writer, T value, JsonAdapter<any> delegate, <any more delegates>) throws <any>;\n    <any access modifier> R toJson(T value) throws <any>;\n");
    }

    @Override
    public com.squareup.moshi.e a(Type type, Set set, j jVar) {
        f fVarC = c(this.a, type, set);
        f fVarC2 = c(this.b, type, set);
        com.squareup.moshi.e eVarH = null;
        if (fVarC == null && fVarC2 == null) {
            return null;
        }
        if (fVarC == null || fVarC2 == null) {
            try {
                eVarH = jVar.h(this, type, set);
            } catch (IllegalArgumentException e2) {
                throw new IllegalArgumentException("No " + (fVarC == null ? "@ToJson" : "@FromJson") + " adapter for " + wkb.u(type, set), e2);
            }
        }
        com.squareup.moshi.e eVar = eVarH;
        if (fVarC != null) {
            fVarC.a(jVar, this);
        }
        if (fVarC2 != null) {
            fVarC2.a(jVar, this);
        }
        return new C0195a(fVarC, eVar, jVar, fVarC2, set, type);
    }
}
