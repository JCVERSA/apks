package com.google.common.reflect;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import defpackage.bdb;
import defpackage.kc7;
import defpackage.r95;
import defpackage.xd8;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public final class b {
    public final c a;

    public class a extends bdb {
        public final Map b;
        public final Type c;

        public a(Map map, Type type) {
            this.b = map;
            this.c = type;
        }

        @Override
        public void b(Class cls) {
            if (this.c instanceof WildcardType) {
                return;
            }
            throw new IllegalArgumentException("No type mapping from " + cls + " to " + this.c);
        }

        @Override
        public void c(GenericArrayType genericArrayType) {
            Type type = this.c;
            if (type instanceof WildcardType) {
                return;
            }
            Type typeI = Types.i(type);
            xd8.j(typeI != null, "%s is not an array type.", this.c);
            b.g(this.b, genericArrayType.getGenericComponentType(), typeI);
        }

        @Override
        public void d(ParameterizedType parameterizedType) {
            Type type = this.c;
            if (type instanceof WildcardType) {
                return;
            }
            ParameterizedType parameterizedType2 = (ParameterizedType) b.e(ParameterizedType.class, type);
            if (parameterizedType.getOwnerType() != null && parameterizedType2.getOwnerType() != null) {
                b.g(this.b, parameterizedType.getOwnerType(), parameterizedType2.getOwnerType());
            }
            xd8.k(parameterizedType.getRawType().equals(parameterizedType2.getRawType()), "Inconsistent raw type: %s vs. %s", parameterizedType, this.c);
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            Type[] actualTypeArguments2 = parameterizedType2.getActualTypeArguments();
            xd8.k(actualTypeArguments.length == actualTypeArguments2.length, "%s not compatible with %s", parameterizedType, parameterizedType2);
            for (int i = 0; i < actualTypeArguments.length; i++) {
                b.g(this.b, actualTypeArguments[i], actualTypeArguments2[i]);
            }
        }

        @Override
        public void e(TypeVariable typeVariable) {
            this.b.put(new d(typeVariable), this.c);
        }

        @Override
        public void f(WildcardType wildcardType) {
            Type type = this.c;
            if (type instanceof WildcardType) {
                WildcardType wildcardType2 = (WildcardType) type;
                Type[] upperBounds = wildcardType.getUpperBounds();
                Type[] upperBounds2 = wildcardType2.getUpperBounds();
                Type[] lowerBounds = wildcardType.getLowerBounds();
                Type[] lowerBounds2 = wildcardType2.getLowerBounds();
                xd8.k(upperBounds.length == upperBounds2.length && lowerBounds.length == lowerBounds2.length, "Incompatible type: %s vs. %s", wildcardType, this.c);
                for (int i = 0; i < upperBounds.length; i++) {
                    b.g(this.b, upperBounds[i], upperBounds2[i]);
                }
                for (int i2 = 0; i2 < lowerBounds.length; i2++) {
                    b.g(this.b, lowerBounds[i2], lowerBounds2[i2]);
                }
            }
        }
    }

    public static final class C0108b extends bdb {
        public final Map b = Maps.o();

        public static ImmutableMap g(Type type) {
            xd8.o(type);
            C0108b c0108b = new C0108b();
            c0108b.a(type);
            return ImmutableMap.copyOf(c0108b.b);
        }

        @Override
        public void b(Class cls) {
            a(cls.getGenericSuperclass());
            a(cls.getGenericInterfaces());
        }

        @Override
        public void d(ParameterizedType parameterizedType) {
            Class cls = (Class) parameterizedType.getRawType();
            TypeVariable[] typeParameters = cls.getTypeParameters();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            xd8.u(typeParameters.length == actualTypeArguments.length);
            for (int i = 0; i < typeParameters.length; i++) {
                h(new d(typeParameters[i]), actualTypeArguments[i]);
            }
            a(cls);
            a(parameterizedType.getOwnerType());
        }

        @Override
        public void e(TypeVariable typeVariable) {
            a(typeVariable.getBounds());
        }

        @Override
        public void f(WildcardType wildcardType) {
            a(wildcardType.getUpperBounds());
        }

        public final void h(d dVar, Type type) {
            if (this.b.containsKey(dVar)) {
                return;
            }
            Type type2 = type;
            while (type2 != null) {
                if (dVar.a(type2)) {
                    while (type != null) {
                        type = (Type) this.b.remove(d.c(type));
                    }
                    return;
                }
                type2 = (Type) this.b.get(d.c(type2));
            }
            this.b.put(dVar, type);
        }
    }

    public static final class d {
        public final TypeVariable a;

        public d(TypeVariable typeVariable) {
            this.a = (TypeVariable) xd8.o(typeVariable);
        }

        public static d c(Type type) {
            if (type instanceof TypeVariable) {
                return new d((TypeVariable) type);
            }
            return null;
        }

        public boolean a(Type type) {
            if (type instanceof TypeVariable) {
                return b((TypeVariable) type);
            }
            return false;
        }

        public final boolean b(TypeVariable typeVariable) {
            return this.a.getGenericDeclaration().equals(typeVariable.getGenericDeclaration()) && this.a.getName().equals(typeVariable.getName());
        }

        public boolean equals(Object obj) {
            if (obj instanceof d) {
                return b(((d) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return kc7.b(this.a.getGenericDeclaration(), this.a.getName());
        }

        public String toString() {
            return this.a.toString();
        }
    }

    public static class e {
        public static final e b = new e();
        public final AtomicInteger a;

        public class a extends e {
            public final TypeVariable c;
            public final e d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(e eVar, AtomicInteger atomicInteger, TypeVariable typeVariable) {
                super(atomicInteger, null);
                this.c = typeVariable;
                this.d = eVar;
            }

            @Override
            public TypeVariable b(Type[] typeArr) {
                LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(typeArr));
                linkedHashSet.addAll(Arrays.asList(this.c.getBounds()));
                if (linkedHashSet.size() > 1) {
                    linkedHashSet.remove(Object.class);
                }
                return super.b((Type[]) linkedHashSet.toArray(new Type[0]));
            }
        }

        public e(AtomicInteger atomicInteger, a aVar) {
            this(atomicInteger);
        }

        public final Type a(Type type) {
            xd8.o(type);
            if ((type instanceof Class) || (type instanceof TypeVariable)) {
                return type;
            }
            if (type instanceof GenericArrayType) {
                return Types.j(e().a(((GenericArrayType) type).getGenericComponentType()));
            }
            if (!(type instanceof ParameterizedType)) {
                if (!(type instanceof WildcardType)) {
                    throw new AssertionError("must have been one of the known types");
                }
                WildcardType wildcardType = (WildcardType) type;
                return wildcardType.getLowerBounds().length == 0 ? b(wildcardType.getUpperBounds()) : type;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Class cls = (Class) parameterizedType.getRawType();
            TypeVariable[] typeParameters = cls.getTypeParameters();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            for (int i = 0; i < actualTypeArguments.length; i++) {
                actualTypeArguments[i] = d(typeParameters[i]).a(actualTypeArguments[i]);
            }
            return Types.m(e().c(parameterizedType.getOwnerType()), cls, actualTypeArguments);
        }

        public TypeVariable b(Type[] typeArr) {
            return Types.k(e.class, "capture#" + this.a.incrementAndGet() + "-of ? extends " + r95.g('&').f(typeArr), typeArr);
        }

        public final Type c(Type type) {
            if (type == null) {
                return null;
            }
            return a(type);
        }

        public final e d(TypeVariable typeVariable) {
            return new a(this, this.a, typeVariable);
        }

        public final e e() {
            return new e(this.a);
        }

        public e() {
            this(new AtomicInteger());
        }

        public e(AtomicInteger atomicInteger) {
            this.a = atomicInteger;
        }
    }

    public b(c cVar, a aVar) {
        this(cVar);
    }

    public static b d(Type type) {
        return new b().o(C0108b.g(type));
    }

    public static Object e(Class cls, Object obj) {
        try {
            return cls.cast(obj);
        } catch (ClassCastException unused) {
            throw new IllegalArgumentException(obj + " is not a " + cls.getSimpleName());
        }
    }

    public static b f(Type type) {
        return new b().o(C0108b.g(e.b.a(type)));
    }

    public static void g(Map map, Type type, Type type2) {
        if (type.equals(type2)) {
            return;
        }
        new a(map, type2).a(type);
    }

    public final Type h(GenericArrayType genericArrayType) {
        return Types.j(j(genericArrayType.getGenericComponentType()));
    }

    public final ParameterizedType i(ParameterizedType parameterizedType) {
        Type ownerType = parameterizedType.getOwnerType();
        return Types.m(ownerType == null ? null : j(ownerType), (Class) j(parameterizedType.getRawType()), k(parameterizedType.getActualTypeArguments()));
    }

    public Type j(Type type) {
        xd8.o(type);
        if (type instanceof TypeVariable) {
            return this.a.a((TypeVariable) type);
        }
        if (type instanceof ParameterizedType) {
            return i((ParameterizedType) type);
        }
        if (type instanceof GenericArrayType) {
            return h((GenericArrayType) type);
        }
        return type instanceof WildcardType ? m((WildcardType) type) : type;
    }

    public final Type[] k(Type[] typeArr) {
        Type[] typeArr2 = new Type[typeArr.length];
        for (int i = 0; i < typeArr.length; i++) {
            typeArr2[i] = j(typeArr[i]);
        }
        return typeArr2;
    }

    public Type[] l(Type[] typeArr) {
        for (int i = 0; i < typeArr.length; i++) {
            typeArr[i] = j(typeArr[i]);
        }
        return typeArr;
    }

    public final WildcardType m(WildcardType wildcardType) {
        return new Types.WildcardTypeImpl(k(wildcardType.getLowerBounds()), k(wildcardType.getUpperBounds()));
    }

    public b n(Type type, Type type2) {
        HashMap mapO = Maps.o();
        g(mapO, (Type) xd8.o(type), (Type) xd8.o(type2));
        return o(mapO);
    }

    public b o(Map map) {
        return new b(this.a.c(map));
    }

    public static class c {
        public final ImmutableMap a;

        public class a extends c {
            public final TypeVariable b;
            public final c c;
            public final c d;

            public a(c cVar, TypeVariable typeVariable, c cVar2) {
                this.b = typeVariable;
                this.c = cVar2;
                this.d = cVar;
            }

            @Override
            public Type b(TypeVariable typeVariable, c cVar) {
                return typeVariable.getGenericDeclaration().equals(this.b.getGenericDeclaration()) ? typeVariable : this.c.b(typeVariable, cVar);
            }
        }

        public c() {
            this.a = ImmutableMap.of();
        }

        public final Type a(TypeVariable typeVariable) {
            return b(typeVariable, new a(this, typeVariable, this));
        }

        public Type b(TypeVariable typeVariable, c cVar) {
            Type type = (Type) this.a.get(new d(typeVariable));
            a aVar = null;
            if (type != null) {
                return new b(cVar, aVar).j(type);
            }
            Type[] bounds = typeVariable.getBounds();
            if (bounds.length == 0) {
                return typeVariable;
            }
            Type[] typeArrK = new b(cVar, aVar).k(bounds);
            return (Types.b.a && Arrays.equals(bounds, typeArrK)) ? typeVariable : Types.k(typeVariable.getGenericDeclaration(), typeVariable.getName(), typeArrK);
        }

        public final c c(Map map) {
            ImmutableMap.b bVarBuilder = ImmutableMap.builder();
            bVarBuilder.k(this.a);
            for (Map.Entry entry : map.entrySet()) {
                d dVar = (d) entry.getKey();
                Type type = (Type) entry.getValue();
                xd8.j(!dVar.a(type), "Type variable %s bound to itself", dVar);
                bVarBuilder.h(dVar, type);
            }
            return new c(bVarBuilder.d());
        }

        public c(ImmutableMap immutableMap) {
            this.a = immutableMap;
        }
    }

    public b() {
        this.a = new c();
    }

    public b(c cVar) {
        this.a = cVar;
    }
}
