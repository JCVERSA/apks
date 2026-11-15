package com.squareup.moshi;

import defpackage.kdb;
import defpackage.rc5;
import defpackage.uw0;
import defpackage.v95;
import defpackage.wkb;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

public final class c extends e {
    public static final e.InterfaceC0196e d = new a();
    public final uw0 a;
    public final b[] b;
    public final JsonReader.b c;

    public class a implements e.InterfaceC0196e {
        @Override
        public e a(Type type, Set set, j jVar) {
            if (!(type instanceof Class) && !(type instanceof ParameterizedType)) {
                return null;
            }
            Class clsG = kdb.g(type);
            if (clsG.isInterface() || clsG.isEnum() || !set.isEmpty()) {
                return null;
            }
            if (wkb.j(clsG)) {
                d(type, List.class);
                d(type, Set.class);
                d(type, Map.class);
                d(type, Collection.class);
                String str = "Platform " + clsG;
                if (type instanceof ParameterizedType) {
                    str = str + " in " + type;
                }
                throw new IllegalArgumentException(str + " requires explicit JsonAdapter to be registered");
            }
            if (clsG.isAnonymousClass()) {
                throw new IllegalArgumentException("Cannot serialize anonymous class " + clsG.getName());
            }
            if (clsG.isLocalClass()) {
                throw new IllegalArgumentException("Cannot serialize local class " + clsG.getName());
            }
            if (clsG.getEnclosingClass() != null && !Modifier.isStatic(clsG.getModifiers())) {
                throw new IllegalArgumentException("Cannot serialize non-static nested class " + clsG.getName());
            }
            if (Modifier.isAbstract(clsG.getModifiers())) {
                throw new IllegalArgumentException("Cannot serialize abstract class " + clsG.getName());
            }
            if (wkb.i(clsG)) {
                throw new IllegalArgumentException("Cannot serialize Kotlin type " + clsG.getName() + ". Reflective serialization of Kotlin classes without using kotlin-reflect has undefined and unexpected behavior. Please use KotlinJsonAdapterFactory from the moshi-kotlin artifact or use code gen from the moshi-kotlin-codegen artifact.");
            }
            uw0 uw0VarA = uw0.a(clsG);
            TreeMap treeMap = new TreeMap();
            while (type != Object.class) {
                b(jVar, type, treeMap);
                type = kdb.f(type);
            }
            return new c(uw0VarA, treeMap).nullSafe();
        }

        public final void b(j jVar, Type type, Map map) {
            v95 v95Var;
            Class clsG = kdb.g(type);
            boolean zJ = wkb.j(clsG);
            for (Field field : clsG.getDeclaredFields()) {
                if (c(zJ, field.getModifiers()) && ((v95Var = (v95) field.getAnnotation(v95.class)) == null || !v95Var.ignore())) {
                    Type typeQ = wkb.q(type, clsG, field.getGenericType());
                    Set setK = wkb.k(field);
                    String name = field.getName();
                    e eVarF = jVar.f(typeQ, setK, name);
                    field.setAccessible(true);
                    String strM = wkb.m(name, v95Var);
                    b bVar = new b(strM, field, eVarF);
                    b bVar2 = (b) map.put(strM, bVar);
                    if (bVar2 != null) {
                        throw new IllegalArgumentException("Conflicting fields:\n    " + bVar2.b + "\n    " + bVar.b);
                    }
                }
            }
        }

        public final boolean c(boolean z, int i) {
            if (Modifier.isStatic(i) || Modifier.isTransient(i)) {
                return false;
            }
            return Modifier.isPublic(i) || Modifier.isProtected(i) || !z;
        }

        public final void d(Type type, Class cls) {
            Class<?> clsG = kdb.g(type);
            if (cls.isAssignableFrom(clsG)) {
                throw new IllegalArgumentException("No JsonAdapter for " + type + ", you should probably use " + cls.getSimpleName() + " instead of " + clsG.getSimpleName() + " (Moshi only supports the collection interfaces by default) or else register a custom JsonAdapter.");
            }
        }
    }

    public static class b {
        public final String a;
        public final Field b;
        public final e c;

        public b(String str, Field field, e eVar) {
            this.a = str;
            this.b = field;
            this.c = eVar;
        }

        public void a(JsonReader jsonReader, Object obj) throws IllegalAccessException {
            this.b.set(obj, this.c.fromJson(jsonReader));
        }

        public void b(rc5 rc5Var, Object obj) throws IllegalAccessException {
            this.c.toJson(rc5Var, this.b.get(obj));
        }
    }

    public c(uw0 uw0Var, Map map) {
        this.a = uw0Var;
        this.b = (b[]) map.values().toArray(new b[map.size()]);
        this.c = JsonReader.b.a((String[]) map.keySet().toArray(new String[map.size()]));
    }

    @Override
    public Object fromJson(JsonReader jsonReader) {
        try {
            Object objB = this.a.b();
            try {
                jsonReader.d();
                while (jsonReader.k()) {
                    int iO = jsonReader.O(this.c);
                    if (iO == -1) {
                        jsonReader.S();
                        jsonReader.T();
                    } else {
                        this.b[iO].a(jsonReader, objB);
                    }
                }
                jsonReader.g();
                return objB;
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            }
        } catch (IllegalAccessException unused2) {
            throw new AssertionError();
        } catch (InstantiationException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw wkb.t(e2);
        }
    }

    @Override
    public void toJson(rc5 rc5Var, Object obj) {
        try {
            rc5Var.d();
            for (b bVar : this.b) {
                rc5Var.D(bVar.a);
                bVar.b(rc5Var, obj);
            }
            rc5Var.h();
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        }
    }

    public String toString() {
        return "JsonAdapter(" + this.a + ")";
    }
}
