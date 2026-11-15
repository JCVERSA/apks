package com.google.common.reflect;

import com.alibaba.android.arouter.utils.Consts;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.Ordering;
import defpackage.a24;
import defpackage.bdb;
import defpackage.dgb;
import defpackage.e54;
import defpackage.gcb;
import defpackage.he8;
import defpackage.jf8;
import defpackage.nbb;
import defpackage.r95;
import defpackage.xd8;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

public abstract class TypeToken<T> extends nbb implements Serializable {
    private static final long serialVersionUID = 3637540370352322684L;
    private transient com.google.common.reflect.b covariantTypeResolver;
    private transient com.google.common.reflect.b invariantTypeResolver;
    private final Type runtimeType;

    public final class ClassSet extends TypeToken<T>.TypeSet {
        private static final long serialVersionUID = 0;
        public transient ImmutableSet b;

        public ClassSet() {
            super();
        }

        private Object readResolve() {
            return TypeToken.this.getTypes().classes();
        }

        @Override
        public TypeToken<T>.TypeSet classes() {
            return this;
        }

        @Override
        public TypeToken<T>.TypeSet interfaces() {
            throw new UnsupportedOperationException("classes().interfaces() not supported.");
        }

        @Override
        public Set<Class<? super T>> rawTypes() {
            return ImmutableSet.copyOf((Collection) TypeCollector.b.a().c(TypeToken.this.getRawTypes()));
        }

        public ClassSet(TypeToken typeToken, a aVar) {
            this();
        }

        @Override
        public Set<TypeToken<? super T>> f() {
            ImmutableSet immutableSet = this.b;
            if (immutableSet != null) {
                return immutableSet;
            }
            ImmutableSet immutableSetK = a24.i(TypeCollector.a.a().d(TypeToken.this)).f(TypeFilter.IGNORE_TYPE_VARIABLE_OR_WILDCARD).k();
            this.b = immutableSetK;
            return immutableSetK;
        }
    }

    public static final class SimpleTypeToken<T> extends TypeToken<T> {
        private static final long serialVersionUID = 0;

        public SimpleTypeToken(Type type) {
            super(type, null);
        }
    }

    public static abstract class TypeCollector {
        public static final TypeCollector a = new a();
        public static final TypeCollector b = new b();

        public class a extends TypeCollector {
            public a() {
                super(null);
            }

            @Override
            public Iterable e(TypeToken typeToken) {
                return typeToken.getGenericInterfaces();
            }

            @Override
            public Class f(TypeToken typeToken) {
                return typeToken.getRawType();
            }

            @Override
            public TypeToken g(TypeToken typeToken) {
                return typeToken.getGenericSuperclass();
            }
        }

        public class b extends TypeCollector {
            public b() {
                super(null);
            }

            @Override
            public Iterable e(Class cls) {
                return Arrays.asList(cls.getInterfaces());
            }

            @Override
            public Class f(Class cls) {
                return cls;
            }

            @Override
            public Class g(Class cls) {
                return cls.getSuperclass();
            }
        }

        public class c extends d {
            public c(TypeCollector typeCollector) {
                super(typeCollector);
            }

            @Override
            public ImmutableList c(Iterable iterable) {
                ImmutableList.a aVarBuilder = ImmutableList.builder();
                for (T t : iterable) {
                    if (!f(t).isInterface()) {
                        aVarBuilder.a(t);
                    }
                }
                return super.c(aVarBuilder.e());
            }

            @Override
            public Iterable e(Object obj) {
                return ImmutableSet.of();
            }
        }

        public static class d extends TypeCollector {
            public final TypeCollector c;

            public d(TypeCollector typeCollector) {
                super(null);
                this.c = typeCollector;
            }

            @Override
            public Class f(Object obj) {
                return this.c.f(obj);
            }

            @Override
            public Object g(Object obj) {
                return this.c.g(obj);
            }
        }

        public TypeCollector() {
        }

        public static ImmutableList h(final Map map, final Comparator comparator) {
            return new Ordering<Object>() {
                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public int compare(Object obj, Object obj2) {
                    Comparator comparator2 = comparator;
                    Object obj3 = map.get(obj);
                    Objects.requireNonNull(obj3);
                    Object obj4 = map.get(obj2);
                    Objects.requireNonNull(obj4);
                    return comparator2.compare(obj3, obj4);
                }
            }.immutableSortedCopy(map.keySet());
        }

        public final TypeCollector a() {
            return new c(this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int b(Object obj, Map map) {
            Integer num = (Integer) map.get(obj);
            if (num != null) {
                return num.intValue();
            }
            boolean zIsInterface = f(obj).isInterface();
            Iterator<T> it = e(obj).iterator();
            int iMax = zIsInterface;
            while (it.hasNext()) {
                iMax = Math.max(iMax, b(it.next(), map));
            }
            Object objG = g(obj);
            int iMax2 = iMax;
            if (objG != null) {
                iMax2 = Math.max(iMax, b(objG, map));
            }
            int i = iMax2 + 1;
            map.put(obj, Integer.valueOf(i));
            return i;
        }

        public ImmutableList c(Iterable iterable) {
            HashMap mapO = Maps.o();
            Iterator<T> it = iterable.iterator();
            while (it.hasNext()) {
                b(it.next(), mapO);
            }
            return h(mapO, Ordering.natural().reverse());
        }

        public final ImmutableList d(Object obj) {
            return c(ImmutableList.of(obj));
        }

        public abstract Iterable e(Object obj);

        public abstract Class f(Object obj);

        public abstract Object g(Object obj);

        public TypeCollector(a aVar) {
            this();
        }
    }

    public enum TypeFilter implements he8 {
        IGNORE_TYPE_VARIABLE_OR_WILDCARD {
            @Override
            public boolean apply(TypeToken<?> typeToken) {
                return ((((TypeToken) typeToken).runtimeType instanceof TypeVariable) || (((TypeToken) typeToken).runtimeType instanceof WildcardType)) ? false : true;
            }
        },
        INTERFACE_ONLY {
            @Override
            public boolean apply(TypeToken<?> typeToken) {
                return typeToken.getRawType().isInterface();
            }
        };

        @Override
        public abstract boolean apply(Object obj);

        TypeFilter(a aVar) {
            this();
        }
    }

    public class a extends com.google.common.reflect.a.b {
        public a(Method method) {
            super(method);
        }

        @Override
        public TypeToken a() {
            return TypeToken.this;
        }

        @Override
        public String toString() {
            return a() + Consts.DOT + super.toString();
        }
    }

    public class b extends com.google.common.reflect.a.C0107a {
        public b(Constructor constructor) {
            super(constructor);
        }

        @Override
        public TypeToken a() {
            return TypeToken.this;
        }

        @Override
        public Type[] c() {
            return TypeToken.this.getInvariantTypeResolver().l(super.c());
        }

        @Override
        public String toString() {
            return a() + "(" + r95.h(", ").f(c()) + ")";
        }
    }

    public class c extends bdb {
        public c() {
        }

        @Override
        public void c(GenericArrayType genericArrayType) {
            a(genericArrayType.getGenericComponentType());
        }

        @Override
        public void d(ParameterizedType parameterizedType) {
            a(parameterizedType.getActualTypeArguments());
            a(parameterizedType.getOwnerType());
        }

        @Override
        public void e(TypeVariable typeVariable) {
            throw new IllegalArgumentException(TypeToken.this.runtimeType + "contains a type variable and is not safe for the operation");
        }

        @Override
        public void f(WildcardType wildcardType) {
            a(wildcardType.getLowerBounds());
            a(wildcardType.getUpperBounds());
        }
    }

    public class d extends bdb {
        public final ImmutableSet.a b;
        public final TypeToken c;

        public d(TypeToken typeToken, ImmutableSet.a aVar) {
            this.b = aVar;
            this.c = typeToken;
        }

        @Override
        public void b(Class cls) {
            this.b.a(cls);
        }

        @Override
        public void c(GenericArrayType genericArrayType) {
            this.b.a(Types.h(TypeToken.of(genericArrayType.getGenericComponentType()).getRawType()));
        }

        @Override
        public void d(ParameterizedType parameterizedType) {
            this.b.a((Class) parameterizedType.getRawType());
        }

        @Override
        public void e(TypeVariable typeVariable) {
            a(typeVariable.getBounds());
        }

        @Override
        public void f(WildcardType wildcardType) {
            a(wildcardType.getUpperBounds());
        }
    }

    public static class e {
        public final Type[] a;
        public final boolean b;

        public e(Type[] typeArr, boolean z) {
            this.a = typeArr;
            this.b = z;
        }

        public boolean a(Type type) {
            for (Type type2 : this.a) {
                boolean zIsSubtypeOf = TypeToken.of(type2).isSubtypeOf(type);
                boolean z = this.b;
                if (zIsSubtypeOf == z) {
                    return z;
                }
            }
            return !this.b;
        }

        public boolean b(Type type) {
            TypeToken<?> typeTokenOf = TypeToken.of(type);
            for (Type type2 : this.a) {
                boolean zIsSubtypeOf = typeTokenOf.isSubtypeOf(type2);
                boolean z = this.b;
                if (zIsSubtypeOf == z) {
                    return z;
                }
            }
            return !this.b;
        }
    }

    public TypeToken(Type type, a aVar) {
        this(type);
    }

    private static e any(Type[] typeArr) {
        return new e(typeArr, true);
    }

    private TypeToken<? super T> boundAsSuperclass(Type type) {
        TypeToken<? super T> typeToken = (TypeToken<? super T>) of(type);
        if (typeToken.getRawType().isInterface()) {
            return null;
        }
        return typeToken;
    }

    private ImmutableList<TypeToken<? super T>> boundsAsInterfaces(Type[] typeArr) {
        ImmutableCollection.b bVarBuilder = ImmutableList.builder();
        for (Type type : typeArr) {
            TypeToken<?> typeTokenOf = of(type);
            if (typeTokenOf.getRawType().isInterface()) {
                bVarBuilder.a(typeTokenOf);
            }
        }
        return bVarBuilder.e();
    }

    private static Type canonicalizeTypeArg(TypeVariable<?> typeVariable, Type type) {
        return type instanceof WildcardType ? canonicalizeWildcardType(typeVariable, (WildcardType) type) : canonicalizeWildcardsInType(type);
    }

    private static WildcardType canonicalizeWildcardType(TypeVariable<?> typeVariable, WildcardType wildcardType) {
        Type[] bounds = typeVariable.getBounds();
        ArrayList arrayList = new ArrayList();
        for (Type type : wildcardType.getUpperBounds()) {
            if (!any(bounds).a(type)) {
                arrayList.add(canonicalizeWildcardsInType(type));
            }
        }
        return new Types.WildcardTypeImpl(wildcardType.getLowerBounds(), (Type[]) arrayList.toArray(new Type[0]));
    }

    private static ParameterizedType canonicalizeWildcardsInParameterizedType(ParameterizedType parameterizedType) {
        Class cls = (Class) parameterizedType.getRawType();
        TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int i = 0; i < actualTypeArguments.length; i++) {
            actualTypeArguments[i] = canonicalizeTypeArg(typeParameters[i], actualTypeArguments[i]);
        }
        return Types.m(parameterizedType.getOwnerType(), cls, actualTypeArguments);
    }

    private static Type canonicalizeWildcardsInType(Type type) {
        if (type instanceof ParameterizedType) {
            return canonicalizeWildcardsInParameterizedType((ParameterizedType) type);
        }
        return type instanceof GenericArrayType ? Types.j(canonicalizeWildcardsInType(((GenericArrayType) type).getGenericComponentType())) : type;
    }

    private static e every(Type[] typeArr) {
        return new e(typeArr, false);
    }

    private TypeToken<? extends T> getArraySubtype(Class<?> cls) {
        Class<?> componentType = cls.getComponentType();
        if (componentType != null) {
            TypeToken<?> componentType2 = getComponentType();
            Objects.requireNonNull(componentType2);
            return (TypeToken<? extends T>) of(newArrayClassOrGenericArrayType(componentType2.getSubtype(componentType).runtimeType));
        }
        throw new IllegalArgumentException(cls + " does not appear to be a subtype of " + this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private TypeToken<? super T> getArraySupertype(Class<? super T> cls) {
        TypeToken<?> componentType = getComponentType();
        if (componentType != 0) {
            Class<?> componentType2 = cls.getComponentType();
            Objects.requireNonNull(componentType2);
            return (TypeToken<? super T>) of(newArrayClassOrGenericArrayType(componentType.getSupertype(componentType2).runtimeType));
        }
        throw new IllegalArgumentException(cls + " isn't a super type of " + this);
    }

    public com.google.common.reflect.b getCovariantTypeResolver() {
        com.google.common.reflect.b bVar = this.covariantTypeResolver;
        if (bVar != null) {
            return bVar;
        }
        com.google.common.reflect.b bVarD = com.google.common.reflect.b.d(this.runtimeType);
        this.covariantTypeResolver = bVarD;
        return bVarD;
    }

    public com.google.common.reflect.b getInvariantTypeResolver() {
        com.google.common.reflect.b bVar = this.invariantTypeResolver;
        if (bVar != null) {
            return bVar;
        }
        com.google.common.reflect.b bVarF = com.google.common.reflect.b.f(this.runtimeType);
        this.invariantTypeResolver = bVarF;
        return bVarF;
    }

    private Type getOwnerTypeIfPresent() {
        Type type = this.runtimeType;
        if (type instanceof ParameterizedType) {
            return ((ParameterizedType) type).getOwnerType();
        }
        if (type instanceof Class) {
            return ((Class) type).getEnclosingClass();
        }
        return null;
    }

    public ImmutableSet<Class<? super T>> getRawTypes() {
        ImmutableSet.a aVarBuilder = ImmutableSet.builder();
        new d(this, aVarBuilder).a(this.runtimeType);
        return aVarBuilder.e();
    }

    private TypeToken<? extends T> getSubtypeFromLowerBounds(Class<?> cls, Type[] typeArr) {
        if (typeArr.length > 0) {
            return (TypeToken<? extends T>) of(typeArr[0]).getSubtype(cls);
        }
        throw new IllegalArgumentException(cls + " isn't a subclass of " + this);
    }

    private TypeToken<? super T> getSupertypeFromUpperBounds(Class<? super T> cls, Type[] typeArr) {
        for (Type type : typeArr) {
            TypeToken<?> typeTokenOf = of(type);
            if (typeTokenOf.isSubtypeOf(cls)) {
                return (TypeToken<? super T>) typeTokenOf.getSupertype(cls);
            }
        }
        throw new IllegalArgumentException(cls + " isn't a super type of " + this);
    }

    private boolean is(Type type, TypeVariable<?> typeVariable) {
        if (this.runtimeType.equals(type)) {
            return true;
        }
        if (!(type instanceof WildcardType)) {
            return canonicalizeWildcardsInType(this.runtimeType).equals(canonicalizeWildcardsInType(type));
        }
        WildcardType wildcardTypeCanonicalizeWildcardType = canonicalizeWildcardType(typeVariable, (WildcardType) type);
        return every(wildcardTypeCanonicalizeWildcardType.getUpperBounds()).b(this.runtimeType) && every(wildcardTypeCanonicalizeWildcardType.getLowerBounds()).a(this.runtimeType);
    }

    private boolean isOwnedBySubtypeOf(Type type) {
        Iterator<Object> it = getTypes().iterator();
        while (it.hasNext()) {
            Type ownerTypeIfPresent = ((TypeToken) it.next()).getOwnerTypeIfPresent();
            if (ownerTypeIfPresent != null && of(ownerTypeIfPresent).isSubtypeOf(type)) {
                return true;
            }
        }
        return false;
    }

    private boolean isSubtypeOfArrayType(GenericArrayType genericArrayType) {
        Type type = this.runtimeType;
        if (!(type instanceof Class)) {
            if (type instanceof GenericArrayType) {
                return of(((GenericArrayType) type).getGenericComponentType()).isSubtypeOf(genericArrayType.getGenericComponentType());
            }
            return false;
        }
        Class cls = (Class) type;
        if (cls.isArray()) {
            return of((Class) cls.getComponentType()).isSubtypeOf(genericArrayType.getGenericComponentType());
        }
        return false;
    }

    private boolean isSubtypeOfParameterizedType(ParameterizedType parameterizedType) {
        Class<? super Object> rawType = of(parameterizedType).getRawType();
        if (!someRawTypeIsSubclassOf(rawType)) {
            return false;
        }
        TypeVariable<Class<? super Object>>[] typeParameters = rawType.getTypeParameters();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int i = 0; i < typeParameters.length; i++) {
            if (!of(getCovariantTypeResolver().j(typeParameters[i])).is(actualTypeArguments[i], typeParameters[i])) {
                return false;
            }
        }
        return Modifier.isStatic(((Class) parameterizedType.getRawType()).getModifiers()) || parameterizedType.getOwnerType() == null || isOwnedBySubtypeOf(parameterizedType.getOwnerType());
    }

    private boolean isSupertypeOfArray(GenericArrayType genericArrayType) {
        Type type = this.runtimeType;
        if (type instanceof Class) {
            Class cls = (Class) type;
            return !cls.isArray() ? cls.isAssignableFrom(Object[].class) : of(genericArrayType.getGenericComponentType()).isSubtypeOf(cls.getComponentType());
        }
        if (type instanceof GenericArrayType) {
            return of(genericArrayType.getGenericComponentType()).isSubtypeOf(((GenericArrayType) this.runtimeType).getGenericComponentType());
        }
        return false;
    }

    private boolean isWrapper() {
        return jf8.b().contains(this.runtimeType);
    }

    private static Type newArrayClassOrGenericArrayType(Type type) {
        return Types.JavaVersion.JAVA7.newArrayType(type);
    }

    public static <T> TypeToken<T> of(Class<T> cls) {
        return new SimpleTypeToken(cls);
    }

    private TypeToken<?> resolveSupertype(Type type) {
        TypeToken<?> typeTokenOf = of(getCovariantTypeResolver().j(type));
        typeTokenOf.covariantTypeResolver = this.covariantTypeResolver;
        typeTokenOf.invariantTypeResolver = this.invariantTypeResolver;
        return typeTokenOf;
    }

    private Type resolveTypeArgsForSubclass(Class<?> cls) {
        if ((this.runtimeType instanceof Class) && (cls.getTypeParameters().length == 0 || getRawType().getTypeParameters().length != 0)) {
            return cls;
        }
        TypeToken genericType = toGenericType(cls);
        return new com.google.common.reflect.b().n(genericType.getSupertype(getRawType()).runtimeType, this.runtimeType).j(genericType.runtimeType);
    }

    private boolean someRawTypeIsSubclassOf(Class<?> cls) {
        dgb it = getRawTypes().iterator();
        while (it.hasNext()) {
            if (cls.isAssignableFrom((Class) it.next())) {
                return true;
            }
        }
        return false;
    }

    public static <T> TypeToken<? extends T> toGenericType(Class<T> cls) {
        if (cls.isArray()) {
            return (TypeToken<? extends T>) of(Types.j(toGenericType(cls.getComponentType()).runtimeType));
        }
        TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
        Type type = (!cls.isMemberClass() || Modifier.isStatic(cls.getModifiers())) ? null : toGenericType(cls.getEnclosingClass()).runtimeType;
        return (typeParameters.length > 0 || !(type == null || type == cls.getEnclosingClass())) ? (TypeToken<? extends T>) of(Types.m(type, cls, typeParameters)) : of((Class) cls);
    }

    public final com.google.common.reflect.a constructor(Constructor<?> constructor) {
        xd8.k(constructor.getDeclaringClass() == getRawType(), "%s not declared by %s", constructor, getRawType());
        return new b(constructor);
    }

    public boolean equals(Object obj) {
        if (obj instanceof TypeToken) {
            return this.runtimeType.equals(((TypeToken) obj).runtimeType);
        }
        return false;
    }

    public final TypeToken<?> getComponentType() {
        Type typeI = Types.i(this.runtimeType);
        if (typeI == null) {
            return null;
        }
        return of(typeI);
    }

    public final ImmutableList<TypeToken<? super T>> getGenericInterfaces() {
        Type type = this.runtimeType;
        if (type instanceof TypeVariable) {
            return boundsAsInterfaces(((TypeVariable) type).getBounds());
        }
        if (type instanceof WildcardType) {
            return boundsAsInterfaces(((WildcardType) type).getUpperBounds());
        }
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        for (Type type2 : getRawType().getGenericInterfaces()) {
            aVarBuilder.a(resolveSupertype(type2));
        }
        return aVarBuilder.e();
    }

    public final TypeToken<? super T> getGenericSuperclass() {
        Type type = this.runtimeType;
        if (type instanceof TypeVariable) {
            return boundAsSuperclass(((TypeVariable) type).getBounds()[0]);
        }
        if (type instanceof WildcardType) {
            return boundAsSuperclass(((WildcardType) type).getUpperBounds()[0]);
        }
        Type genericSuperclass = getRawType().getGenericSuperclass();
        if (genericSuperclass == null) {
            return null;
        }
        return (TypeToken<? super T>) resolveSupertype(genericSuperclass);
    }

    public final Class<? super T> getRawType() {
        return (Class) getRawTypes().iterator().next();
    }

    public final TypeToken<? extends T> getSubtype(Class<?> cls) {
        xd8.j(!(this.runtimeType instanceof TypeVariable), "Cannot get subtype of type variable <%s>", this);
        Type type = this.runtimeType;
        if (type instanceof WildcardType) {
            return getSubtypeFromLowerBounds(cls, ((WildcardType) type).getLowerBounds());
        }
        if (isArray()) {
            return getArraySubtype(cls);
        }
        xd8.k(getRawType().isAssignableFrom(cls), "%s isn't a subclass of %s", cls, this);
        TypeToken<? extends T> typeToken = (TypeToken<? extends T>) of(resolveTypeArgsForSubclass(cls));
        xd8.k(typeToken.isSubtypeOf((TypeToken<?>) this), "%s does not appear to be a subtype of %s", typeToken, this);
        return typeToken;
    }

    public final TypeToken<? super T> getSupertype(Class<? super T> cls) {
        xd8.k(someRawTypeIsSubclassOf(cls), "%s is not a super class of %s", cls, this);
        Type type = this.runtimeType;
        if (type instanceof TypeVariable) {
            return getSupertypeFromUpperBounds(cls, ((TypeVariable) type).getBounds());
        }
        if (type instanceof WildcardType) {
            return getSupertypeFromUpperBounds(cls, ((WildcardType) type).getUpperBounds());
        }
        return cls.isArray() ? getArraySupertype(cls) : (TypeToken<? super T>) resolveSupertype(toGenericType(cls).runtimeType);
    }

    public final Type getType() {
        return this.runtimeType;
    }

    public final TypeToken<T>.TypeSet getTypes() {
        return new TypeSet();
    }

    public int hashCode() {
        return this.runtimeType.hashCode();
    }

    public final boolean isArray() {
        return getComponentType() != null;
    }

    public final boolean isPrimitive() {
        Type type = this.runtimeType;
        return (type instanceof Class) && ((Class) type).isPrimitive();
    }

    public final boolean isSubtypeOf(TypeToken<?> typeToken) {
        return isSubtypeOf(typeToken.getType());
    }

    public final boolean isSupertypeOf(TypeToken<?> typeToken) {
        return typeToken.isSubtypeOf(getType());
    }

    public final com.google.common.reflect.a method(Method method) {
        xd8.k(someRawTypeIsSubclassOf(method.getDeclaringClass()), "%s not declared by %s", method, this);
        return new a(method);
    }

    public final TypeToken<T> rejectTypeVariables() {
        new c().a(this.runtimeType);
        return this;
    }

    public final TypeToken<?> resolveType(Type type) {
        xd8.o(type);
        return of(getInvariantTypeResolver().j(type));
    }

    public String toString() {
        return Types.s(this.runtimeType);
    }

    public final TypeToken<T> unwrap() {
        return isWrapper() ? of(jf8.c((Class) this.runtimeType)) : this;
    }

    public final <X> TypeToken<T> where(gcb gcbVar, TypeToken<X> typeToken) {
        new com.google.common.reflect.b();
        throw null;
    }

    public final TypeToken<T> wrap() {
        return isPrimitive() ? of(jf8.d((Class) this.runtimeType)) : this;
    }

    public Object writeReplace() {
        return of(new com.google.common.reflect.b().j(this.runtimeType));
    }

    public final class InterfaceSet extends TypeToken<T>.TypeSet {
        private static final long serialVersionUID = 0;
        public final transient TypeSet b;
        public transient ImmutableSet c;

        public InterfaceSet(TypeToken<T>.TypeSet typeSet) {
            super();
            this.b = typeSet;
        }

        private Object readResolve() {
            return TypeToken.this.getTypes().interfaces();
        }

        @Override
        public TypeToken<T>.TypeSet classes() {
            throw new UnsupportedOperationException("interfaces().classes() not supported.");
        }

        @Override
        public TypeToken<T>.TypeSet interfaces() {
            return this;
        }

        @Override
        public Set<Class<? super T>> rawTypes() {
            return a24.i(TypeCollector.b.c(TypeToken.this.getRawTypes())).f(new he8() {
                @Override
                public final boolean apply(Object obj) {
                    return ((Class) obj).isInterface();
                }
            }).k();
        }

        @Override
        public Set<TypeToken<? super T>> f() {
            ImmutableSet immutableSet = this.c;
            if (immutableSet != null) {
                return immutableSet;
            }
            ImmutableSet immutableSetK = a24.i(this.b).f(TypeFilter.INTERFACE_ONLY).k();
            this.c = immutableSetK;
            return immutableSetK;
        }
    }

    public class TypeSet extends e54 implements Serializable {
        private static final long serialVersionUID = 0;
        private transient ImmutableSet<TypeToken<? super T>> types;

        public TypeSet() {
        }

        public TypeToken<T>.TypeSet classes() {
            return new ClassSet(TypeToken.this, null);
        }

        public TypeToken<T>.TypeSet interfaces() {
            return new InterfaceSet(this);
        }

        public Set<Class<? super T>> rawTypes() {
            return ImmutableSet.copyOf((Collection) TypeCollector.b.c(TypeToken.this.getRawTypes()));
        }

        @Override
        public Set<TypeToken<? super T>> f() {
            ImmutableSet<TypeToken<? super T>> immutableSet = this.types;
            if (immutableSet != null) {
                return immutableSet;
            }
            ImmutableSet<TypeToken<? super T>> immutableSetK = a24.i(TypeCollector.a.d(TypeToken.this)).f(TypeFilter.IGNORE_TYPE_VARIABLE_OR_WILDCARD).k();
            this.types = immutableSetK;
            return immutableSetK;
        }
    }

    public TypeToken() {
        Type typeCapture = capture();
        this.runtimeType = typeCapture;
        xd8.x(!(typeCapture instanceof TypeVariable), "Cannot construct a TypeToken for a type variable.\nYou probably meant to call new TypeToken<%s>(getClass()) that can resolve the type variable for you.\nIf you do need to create a TypeToken of a type variable, please use TypeToken.of() instead.", typeCapture);
    }

    public static TypeToken<?> of(Type type) {
        return new SimpleTypeToken(type);
    }

    public final boolean isSubtypeOf(Type type) {
        xd8.o(type);
        if (type instanceof WildcardType) {
            return any(((WildcardType) type).getLowerBounds()).b(this.runtimeType);
        }
        Type type2 = this.runtimeType;
        if (type2 instanceof WildcardType) {
            return any(((WildcardType) type2).getUpperBounds()).a(type);
        }
        if (type2 instanceof TypeVariable) {
            return type2.equals(type) || any(((TypeVariable) this.runtimeType).getBounds()).a(type);
        }
        if (type2 instanceof GenericArrayType) {
            return of(type).isSupertypeOfArray((GenericArrayType) this.runtimeType);
        }
        if (type instanceof Class) {
            return someRawTypeIsSubclassOf((Class) type);
        }
        if (type instanceof ParameterizedType) {
            return isSubtypeOfParameterizedType((ParameterizedType) type);
        }
        if (type instanceof GenericArrayType) {
            return isSubtypeOfArrayType((GenericArrayType) type);
        }
        return false;
    }

    public final boolean isSupertypeOf(Type type) {
        return of(type).isSubtypeOf(getType());
    }

    public final <X> TypeToken<T> where(gcb gcbVar, Class<X> cls) {
        return where(gcbVar, of((Class) cls));
    }

    public TypeToken(Class<?> cls) {
        Type typeCapture = super.capture();
        if (typeCapture instanceof Class) {
            this.runtimeType = typeCapture;
        } else {
            this.runtimeType = com.google.common.reflect.b.d(cls).j(typeCapture);
        }
    }

    private TypeToken(Type type) {
        this.runtimeType = (Type) xd8.o(type);
    }
}
