package com.google.common.reflect;

import com.google.common.base.j;
import com.google.common.base.m;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
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

public final class e {

    private final c f30130a;

    class a extends g {

        final Map f30131b;

        final Type f30132c;

        a(Map map, Type type) {
            this.f30131b = map;
            this.f30132c = type;
        }

        @Override
        void b(Class cls) {
            if (this.f30132c instanceof WildcardType) {
                return;
            }
            throw new IllegalArgumentException("No type mapping from " + cls + " to " + this.f30132c);
        }

        @Override
        void c(GenericArrayType genericArrayType) {
            Type type = this.f30132c;
            if (type instanceof WildcardType) {
                return;
            }
            Type typeI = Types.i(type);
            m.j(typeI != null, "%s is not an array type.", this.f30132c);
            e.g(this.f30131b, genericArrayType.getGenericComponentType(), typeI);
        }

        @Override
        void d(ParameterizedType parameterizedType) {
            Type type = this.f30132c;
            if (type instanceof WildcardType) {
                return;
            }
            ParameterizedType parameterizedType2 = (ParameterizedType) e.e(ParameterizedType.class, type);
            if (parameterizedType.getOwnerType() != null && parameterizedType2.getOwnerType() != null) {
                e.g(this.f30131b, parameterizedType.getOwnerType(), parameterizedType2.getOwnerType());
            }
            m.k(parameterizedType.getRawType().equals(parameterizedType2.getRawType()), "Inconsistent raw type: %s vs. %s", parameterizedType, this.f30132c);
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            Type[] actualTypeArguments2 = parameterizedType2.getActualTypeArguments();
            m.k(actualTypeArguments.length == actualTypeArguments2.length, "%s not compatible with %s", parameterizedType, parameterizedType2);
            for (int i10 = 0; i10 < actualTypeArguments.length; i10++) {
                e.g(this.f30131b, actualTypeArguments[i10], actualTypeArguments2[i10]);
            }
        }

        @Override
        void e(TypeVariable typeVariable) {
            this.f30131b.put(new d(typeVariable), this.f30132c);
        }

        @Override
        void f(WildcardType wildcardType) {
            Type type = this.f30132c;
            if (type instanceof WildcardType) {
                WildcardType wildcardType2 = (WildcardType) type;
                Type[] upperBounds = wildcardType.getUpperBounds();
                Type[] upperBounds2 = wildcardType2.getUpperBounds();
                Type[] lowerBounds = wildcardType.getLowerBounds();
                Type[] lowerBounds2 = wildcardType2.getLowerBounds();
                m.k(upperBounds.length == upperBounds2.length && lowerBounds.length == lowerBounds2.length, "Incompatible type: %s vs. %s", wildcardType, this.f30132c);
                for (int i10 = 0; i10 < upperBounds.length; i10++) {
                    e.g(this.f30131b, upperBounds[i10], upperBounds2[i10]);
                }
                for (int i11 = 0; i11 < lowerBounds.length; i11++) {
                    e.g(this.f30131b, lowerBounds[i11], lowerBounds2[i11]);
                }
            }
        }
    }

    private static final class b extends g {

        private final Map f30133b = Maps.o();

        private b() {
        }

        static ImmutableMap g(Type type) {
            m.o(type);
            b bVar = new b();
            bVar.a(type);
            return ImmutableMap.copyOf(bVar.f30133b);
        }

        private void h(d dVar, Type type) {
            if (this.f30133b.containsKey(dVar)) {
                return;
            }
            Type type2 = type;
            while (type2 != null) {
                if (dVar.a(type2)) {
                    while (type != null) {
                        type = (Type) this.f30133b.remove(d.c(type));
                    }
                    return;
                }
                type2 = (Type) this.f30133b.get(d.c(type2));
            }
            this.f30133b.put(dVar, type);
        }

        @Override
        void b(Class cls) {
            a(cls.getGenericSuperclass());
            a(cls.getGenericInterfaces());
        }

        @Override
        void d(ParameterizedType parameterizedType) {
            Class cls = (Class) parameterizedType.getRawType();
            TypeVariable[] typeParameters = cls.getTypeParameters();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            m.u(typeParameters.length == actualTypeArguments.length);
            for (int i10 = 0; i10 < typeParameters.length; i10++) {
                h(new d(typeParameters[i10]), actualTypeArguments[i10]);
            }
            a(cls);
            a(parameterizedType.getOwnerType());
        }

        @Override
        void e(TypeVariable typeVariable) {
            a(typeVariable.getBounds());
        }

        @Override
        void f(WildcardType wildcardType) {
            a(wildcardType.getUpperBounds());
        }
    }

    static final class d {

        private final TypeVariable f30138a;

        d(TypeVariable typeVariable) {
            this.f30138a = (TypeVariable) m.o(typeVariable);
        }

        private boolean b(TypeVariable typeVariable) {
            return this.f30138a.getGenericDeclaration().equals(typeVariable.getGenericDeclaration()) && this.f30138a.getName().equals(typeVariable.getName());
        }

        static d c(Type type) {
            if (type instanceof TypeVariable) {
                return new d((TypeVariable) type);
            }
            return null;
        }

        boolean a(Type type) {
            if (type instanceof TypeVariable) {
                return b((TypeVariable) type);
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (obj instanceof d) {
                return b(((d) obj).f30138a);
            }
            return false;
        }

        public int hashCode() {
            return j.b(this.f30138a.getGenericDeclaration(), this.f30138a.getName());
        }

        public String toString() {
            return this.f30138a.toString();
        }
    }

    private static class C0391e {

        static final C0391e f30139b = new C0391e();

        private final AtomicInteger f30140a;

        class a extends C0391e {

            final TypeVariable f30141c;

            final C0391e f30142d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(C0391e c0391e, AtomicInteger atomicInteger, TypeVariable typeVariable) {
                super(atomicInteger, null);
                this.f30141c = typeVariable;
                this.f30142d = c0391e;
            }

            @Override
            TypeVariable b(Type[] typeArr) {
                LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(typeArr));
                linkedHashSet.addAll(Arrays.asList(this.f30141c.getBounds()));
                if (linkedHashSet.size() > 1) {
                    linkedHashSet.remove(Object.class);
                }
                return super.b((Type[]) linkedHashSet.toArray(new Type[0]));
            }
        }

        C0391e(AtomicInteger atomicInteger, a aVar) {
            this(atomicInteger);
        }

        private Type c(Type type) {
            if (type == null) {
                return null;
            }
            return a(type);
        }

        private C0391e d(TypeVariable typeVariable) {
            return new a(this, this.f30140a, typeVariable);
        }

        private C0391e e() {
            return new C0391e(this.f30140a);
        }

        final Type a(Type type) {
            m.o(type);
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
            for (int i10 = 0; i10 < actualTypeArguments.length; i10++) {
                actualTypeArguments[i10] = d(typeParameters[i10]).a(actualTypeArguments[i10]);
            }
            return Types.m(e().c(parameterizedType.getOwnerType()), cls, actualTypeArguments);
        }

        TypeVariable b(Type[] typeArr) {
            return Types.k(C0391e.class, "capture#" + this.f30140a.incrementAndGet() + "-of ? extends " + com.google.common.base.g.g('&').f(typeArr), typeArr);
        }

        private C0391e() {
            this(new AtomicInteger());
        }

        private C0391e(AtomicInteger atomicInteger) {
            this.f30140a = atomicInteger;
        }
    }

    e(c cVar, a aVar) {
        this(cVar);
    }

    static e d(Type type) {
        return new e().o(b.g(type));
    }

    public static Object e(Class cls, Object obj) {
        try {
            return cls.cast(obj);
        } catch (ClassCastException unused) {
            throw new IllegalArgumentException(obj + " is not a " + cls.getSimpleName());
        }
    }

    static e f(Type type) {
        return new e().o(b.g(C0391e.f30139b.a(type)));
    }

    public static void g(Map map, Type type, Type type2) {
        if (type.equals(type2)) {
            return;
        }
        new a(map, type2).a(type);
    }

    private Type h(GenericArrayType genericArrayType) {
        return Types.j(j(genericArrayType.getGenericComponentType()));
    }

    private ParameterizedType i(ParameterizedType parameterizedType) {
        Type ownerType = parameterizedType.getOwnerType();
        return Types.m(ownerType == null ? null : j(ownerType), (Class) j(parameterizedType.getRawType()), k(parameterizedType.getActualTypeArguments()));
    }

    public Type[] k(Type[] typeArr) {
        Type[] typeArr2 = new Type[typeArr.length];
        for (int i10 = 0; i10 < typeArr.length; i10++) {
            typeArr2[i10] = j(typeArr[i10]);
        }
        return typeArr2;
    }

    private WildcardType m(WildcardType wildcardType) {
        return new Types.WildcardTypeImpl(k(wildcardType.getLowerBounds()), k(wildcardType.getUpperBounds()));
    }

    public Type j(Type type) {
        m.o(type);
        if (type instanceof TypeVariable) {
            return this.f30130a.a((TypeVariable) type);
        }
        if (type instanceof ParameterizedType) {
            return i((ParameterizedType) type);
        }
        if (type instanceof GenericArrayType) {
            return h((GenericArrayType) type);
        }
        return type instanceof WildcardType ? m((WildcardType) type) : type;
    }

    Type[] l(Type[] typeArr) {
        for (int i10 = 0; i10 < typeArr.length; i10++) {
            typeArr[i10] = j(typeArr[i10]);
        }
        return typeArr;
    }

    public e n(Type type, Type type2) {
        HashMap mapO = Maps.o();
        g(mapO, (Type) m.o(type), (Type) m.o(type2));
        return o(mapO);
    }

    e o(Map map) {
        return new e(this.f30130a.c(map));
    }

    private static class c {

        private final ImmutableMap f30134a;

        class a extends c {

            final TypeVariable f30135b;

            final c f30136c;

            final c f30137d;

            a(c cVar, TypeVariable typeVariable, c cVar2) {
                this.f30135b = typeVariable;
                this.f30136c = cVar2;
                this.f30137d = cVar;
            }

            @Override
            public Type b(TypeVariable typeVariable, c cVar) {
                return typeVariable.getGenericDeclaration().equals(this.f30135b.getGenericDeclaration()) ? typeVariable : this.f30136c.b(typeVariable, cVar);
            }
        }

        c() {
            this.f30134a = ImmutableMap.of();
        }

        final Type a(TypeVariable typeVariable) {
            return b(typeVariable, new a(this, typeVariable, this));
        }

        Type b(TypeVariable typeVariable, c cVar) {
            Type type = (Type) this.f30134a.get(new d(typeVariable));
            a aVar = null;
            if (type != null) {
                return new e(cVar, aVar).j(type);
            }
            Type[] bounds = typeVariable.getBounds();
            if (bounds.length == 0) {
                return typeVariable;
            }
            Type[] typeArrK = new e(cVar, aVar).k(bounds);
            return (Types.b.f30119a && Arrays.equals(bounds, typeArrK)) ? typeVariable : Types.k(typeVariable.getGenericDeclaration(), typeVariable.getName(), typeArrK);
        }

        final c c(Map map) {
            ImmutableMap.b bVarBuilder = ImmutableMap.builder();
            bVarBuilder.k(this.f30134a);
            for (Map.Entry entry : map.entrySet()) {
                d dVar = (d) entry.getKey();
                Type type = (Type) entry.getValue();
                m.j(!dVar.a(type), "Type variable %s bound to itself", dVar);
                bVarBuilder.h(dVar, type);
            }
            return new c(bVarBuilder.d());
        }

        private c(ImmutableMap immutableMap) {
            this.f30134a = immutableMap;
        }
    }

    public e() {
        this.f30130a = new c();
    }

    private e(c cVar) {
        this.f30130a = cVar;
    }
}
