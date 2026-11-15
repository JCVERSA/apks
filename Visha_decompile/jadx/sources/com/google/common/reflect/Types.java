package com.google.common.reflect;

import com.google.common.base.Predicates;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import defpackage.bdb;
import defpackage.dgb;
import defpackage.kc7;
import defpackage.nbb;
import defpackage.o74;
import defpackage.r95;
import defpackage.v55;
import defpackage.wq8;
import defpackage.xd8;
import java.io.Serializable;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.security.AccessControlException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;

public abstract class Types {
    public static final r95 a = r95.h(", ").j("null");

    public enum ClassOwnership {
        OWNED_BY_ENCLOSING_CLASS {
            @Override
            public Class<?> getOwnerType(Class<?> cls) {
                return cls.getEnclosingClass();
            }
        },
        LOCAL_CLASS_HAS_NO_OWNER {
            @Override
            public Class<?> getOwnerType(Class<?> cls) {
                if (cls.isLocalClass()) {
                    return null;
                }
                return cls.getEnclosingClass();
            }
        };

        static final ClassOwnership JVM_BEHAVIOR = b();

        public class a {
        }

        public class b extends a {
        }

        public static ClassOwnership b() {
            new b();
            ParameterizedType parameterizedType = (ParameterizedType) b.class.getGenericSuperclass();
            Objects.requireNonNull(parameterizedType);
            ParameterizedType parameterizedType2 = parameterizedType;
            for (ClassOwnership classOwnership : values()) {
                if (classOwnership.getOwnerType(a.class) == parameterizedType2.getOwnerType()) {
                    return classOwnership;
                }
            }
            throw new AssertionError();
        }

        public abstract Class<?> getOwnerType(Class<?> cls);

        ClassOwnership(a aVar) {
            this();
        }
    }

    public static final class GenericArrayTypeImpl implements GenericArrayType, Serializable {
        private static final long serialVersionUID = 0;
        private final Type componentType;

        public GenericArrayTypeImpl(Type type) {
            this.componentType = JavaVersion.CURRENT.usedInGenericType(type);
        }

        public boolean equals(Object obj) {
            if (obj instanceof GenericArrayType) {
                return kc7.a(getGenericComponentType(), ((GenericArrayType) obj).getGenericComponentType());
            }
            return false;
        }

        @Override
        public Type getGenericComponentType() {
            return this.componentType;
        }

        public int hashCode() {
            return this.componentType.hashCode();
        }

        public String toString() {
            return Types.s(this.componentType) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 com.google.common.reflect.Types$JavaVersion, still in use, count: 1, list:
      (r0v0 com.google.common.reflect.Types$JavaVersion) from 0x0063: SPUT (r0v0 com.google.common.reflect.Types$JavaVersion) com.google.common.reflect.Types.JavaVersion.CURRENT com.google.common.reflect.Types$JavaVersion
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static abstract class JavaVersion {
        JAVA6 {
            @Override
            public Type usedInGenericType(Type type) {
                xd8.o(type);
                if (!(type instanceof Class)) {
                    return type;
                }
                Class cls = (Class) type;
                return cls.isArray() ? new GenericArrayTypeImpl(cls.getComponentType()) : type;
            }

            @Override
            public GenericArrayType newArrayType(Type type) {
                return new GenericArrayTypeImpl(type);
            }
        },
        JAVA7 {
            @Override
            public Type newArrayType(Type type) {
                return type instanceof Class ? Types.h((Class) type) : new GenericArrayTypeImpl(type);
            }

            @Override
            public Type usedInGenericType(Type type) {
                return (Type) xd8.o(type);
            }
        },
        JAVA8 {
            @Override
            public Type newArrayType(Type type) {
                return JavaVersion.JAVA7.newArrayType(type);
            }

            @Override
            public String typeName(Type type) {
                try {
                    return (String) Type.class.getMethod("getTypeName", null).invoke(type, null);
                } catch (IllegalAccessException | InvocationTargetException e) {
                    throw new RuntimeException(e);
                } catch (NoSuchMethodException unused) {
                    throw new AssertionError("Type.getTypeName should be available in Java 8");
                }
            }

            @Override
            public Type usedInGenericType(Type type) {
                return JavaVersion.JAVA7.usedInGenericType(type);
            }
        },
        JAVA9 {
            @Override
            public boolean jdkTypeDuplicatesOwnerName() {
                return false;
            }

            @Override
            public Type newArrayType(Type type) {
                return JavaVersion.JAVA8.newArrayType(type);
            }

            @Override
            public String typeName(Type type) {
                return JavaVersion.JAVA8.typeName(type);
            }

            @Override
            public Type usedInGenericType(Type type) {
                return JavaVersion.JAVA8.usedInGenericType(type);
            }
        };

        static final JavaVersion CURRENT;

        public class a extends nbb {
        }

        public class b extends nbb {
        }

        static {
            if (AnnotatedElement.class.isAssignableFrom(TypeVariable.class)) {
                if (new a().capture().toString().contains("java.util.Map.java.util.Map")) {
                    CURRENT = javaVersion;
                    return;
                } else {
                    CURRENT = javaVersion;
                    return;
                }
            }
            if (new b().capture() instanceof Class) {
                CURRENT = javaVersion;
            } else {
                CURRENT = javaVersion;
            }
        }

        public JavaVersion(String str, int i) {
            super(str, i);
        }

        public static JavaVersion valueOf(String str) {
            return (JavaVersion) Enum.valueOf(JavaVersion.class, str);
        }

        public static JavaVersion[] values() {
            return (JavaVersion[]) b.clone();
        }

        public boolean jdkTypeDuplicatesOwnerName() {
            return true;
        }

        public abstract Type newArrayType(Type type);

        public String typeName(Type type) {
            return Types.s(type);
        }

        public final ImmutableList<Type> usedInGenericType(Type[] typeArr) {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (Type type : typeArr) {
                aVarBuilder.a(usedInGenericType(type));
            }
            return aVarBuilder.e();
        }

        public abstract Type usedInGenericType(Type type);

        public JavaVersion(String str, int i, a aVar) {
            this(str, i);
        }
    }

    public static final class ParameterizedTypeImpl implements ParameterizedType, Serializable {
        private static final long serialVersionUID = 0;
        private final ImmutableList<Type> argumentsList;
        private final Type ownerType;
        private final Class<?> rawType;

        public ParameterizedTypeImpl(Type type, Class<?> cls, Type[] typeArr) {
            xd8.o(cls);
            xd8.d(typeArr.length == cls.getTypeParameters().length);
            Types.f(typeArr, "type parameter");
            this.ownerType = type;
            this.rawType = cls;
            this.argumentsList = JavaVersion.CURRENT.usedInGenericType(typeArr);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) obj;
            return getRawType().equals(parameterizedType.getRawType()) && kc7.a(getOwnerType(), parameterizedType.getOwnerType()) && Arrays.equals(getActualTypeArguments(), parameterizedType.getActualTypeArguments());
        }

        @Override
        public Type[] getActualTypeArguments() {
            return Types.r(this.argumentsList);
        }

        @Override
        public Type getOwnerType() {
            return this.ownerType;
        }

        @Override
        public Type getRawType() {
            return this.rawType;
        }

        public int hashCode() {
            Type type = this.ownerType;
            return this.rawType.hashCode() ^ ((type == null ? 0 : type.hashCode()) ^ this.argumentsList.hashCode());
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            if (this.ownerType != null) {
                JavaVersion javaVersion = JavaVersion.CURRENT;
                if (javaVersion.jdkTypeDuplicatesOwnerName()) {
                    sb.append(javaVersion.typeName(this.ownerType));
                    sb.append('.');
                }
            }
            sb.append(this.rawType.getName());
            sb.append('<');
            r95 r95Var = Types.a;
            ImmutableList<Type> immutableList = this.argumentsList;
            final JavaVersion javaVersion2 = JavaVersion.CURRENT;
            Objects.requireNonNull(javaVersion2);
            sb.append(r95Var.d(v55.t(immutableList, new o74() {
                @Override
                public final Object apply(Object obj) {
                    return javaVersion2.typeName((Type) obj);
                }
            })));
            sb.append('>');
            return sb.toString();
        }
    }

    public static final class WildcardTypeImpl implements WildcardType, Serializable {
        private static final long serialVersionUID = 0;
        private final ImmutableList<Type> lowerBounds;
        private final ImmutableList<Type> upperBounds;

        public WildcardTypeImpl(Type[] typeArr, Type[] typeArr2) {
            Types.f(typeArr, "lower bound for wildcard");
            Types.f(typeArr2, "upper bound for wildcard");
            JavaVersion javaVersion = JavaVersion.CURRENT;
            this.lowerBounds = javaVersion.usedInGenericType(typeArr);
            this.upperBounds = javaVersion.usedInGenericType(typeArr2);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) obj;
            return this.lowerBounds.equals(Arrays.asList(wildcardType.getLowerBounds())) && this.upperBounds.equals(Arrays.asList(wildcardType.getUpperBounds()));
        }

        @Override
        public Type[] getLowerBounds() {
            return Types.r(this.lowerBounds);
        }

        @Override
        public Type[] getUpperBounds() {
            return Types.r(this.upperBounds);
        }

        public int hashCode() {
            return this.upperBounds.hashCode() ^ this.lowerBounds.hashCode();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("?");
            dgb it = this.lowerBounds.iterator();
            while (it.hasNext()) {
                Type type = (Type) it.next();
                sb.append(" super ");
                sb.append(JavaVersion.CURRENT.typeName(type));
            }
            for (Type type2 : Types.g(this.upperBounds)) {
                sb.append(" extends ");
                sb.append(JavaVersion.CURRENT.typeName(type2));
            }
            return sb.toString();
        }
    }

    public class a extends bdb {
        public final AtomicReference b;

        public a(AtomicReference atomicReference) {
            this.b = atomicReference;
        }

        @Override
        public void b(Class cls) {
            this.b.set(cls.getComponentType());
        }

        @Override
        public void c(GenericArrayType genericArrayType) {
            this.b.set(genericArrayType.getGenericComponentType());
        }

        @Override
        public void e(TypeVariable typeVariable) {
            this.b.set(Types.p(typeVariable.getBounds()));
        }

        @Override
        public void f(WildcardType wildcardType) {
            this.b.set(Types.p(wildcardType.getUpperBounds()));
        }
    }

    public static final class b {
        public static final boolean a = !b.class.getTypeParameters()[0].equals(Types.k(b.class, "X", new Type[0]));
    }

    public static final class c {
        public final GenericDeclaration a;
        public final String b;
        public final ImmutableList c;

        public c(GenericDeclaration genericDeclaration, String str, Type[] typeArr) {
            Types.f(typeArr, "bound for type variable");
            this.a = (GenericDeclaration) xd8.o(genericDeclaration);
            this.b = (String) xd8.o(str);
            this.c = ImmutableList.copyOf(typeArr);
        }

        public GenericDeclaration a() {
            return this.a;
        }

        public String b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (!b.a) {
                if (!(obj instanceof TypeVariable)) {
                    return false;
                }
                TypeVariable typeVariable = (TypeVariable) obj;
                return this.b.equals(typeVariable.getName()) && this.a.equals(typeVariable.getGenericDeclaration());
            }
            if (obj == null || !Proxy.isProxyClass(obj.getClass()) || !(Proxy.getInvocationHandler(obj) instanceof d)) {
                return false;
            }
            c cVar = ((d) Proxy.getInvocationHandler(obj)).b;
            return this.b.equals(cVar.b()) && this.a.equals(cVar.a()) && this.c.equals(cVar.c);
        }

        public int hashCode() {
            return this.b.hashCode() ^ this.a.hashCode();
        }

        public String toString() {
            return this.b;
        }
    }

    public static final class d implements InvocationHandler {
        public static final ImmutableMap c;
        public final c b;

        static {
            ImmutableMap.b bVarBuilder = ImmutableMap.builder();
            for (Method method : c.class.getMethods()) {
                if (method.getDeclaringClass().equals(c.class)) {
                    try {
                        method.setAccessible(true);
                    } catch (AccessControlException unused) {
                    }
                    bVarBuilder.h(method.getName(), method);
                }
            }
            c = bVarBuilder.c();
        }

        public d(c cVar) {
            this.b = cVar;
        }

        @Override
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Method method2 = (Method) c.get(name);
            if (method2 == null) {
                throw new UnsupportedOperationException(name);
            }
            try {
                return method2.invoke(this.b, objArr);
            } catch (InvocationTargetException e) {
                throw e.getCause();
            }
        }
    }

    public static void f(Type[] typeArr, String str) {
        for (Type type : typeArr) {
            if (type instanceof Class) {
                Class cls = (Class) type;
                xd8.k(!cls.isPrimitive(), "Primitive type '%s' used as %s", cls, str);
            }
        }
    }

    public static Iterable g(Iterable iterable) {
        return v55.e(iterable, Predicates.i(Predicates.f(Object.class)));
    }

    public static Class h(Class cls) {
        return Array.newInstance((Class<?>) cls, 0).getClass();
    }

    public static Type i(Type type) {
        xd8.o(type);
        AtomicReference atomicReference = new AtomicReference();
        new a(atomicReference).a(type);
        return (Type) atomicReference.get();
    }

    public static Type j(Type type) {
        if (!(type instanceof WildcardType)) {
            return JavaVersion.CURRENT.newArrayType(type);
        }
        WildcardType wildcardType = (WildcardType) type;
        Type[] lowerBounds = wildcardType.getLowerBounds();
        xd8.e(lowerBounds.length <= 1, "Wildcard cannot have more than one lower bounds.");
        if (lowerBounds.length == 1) {
            return q(j(lowerBounds[0]));
        }
        Type[] upperBounds = wildcardType.getUpperBounds();
        xd8.e(upperBounds.length == 1, "Wildcard should have only one upper bound.");
        return o(j(upperBounds[0]));
    }

    public static TypeVariable k(GenericDeclaration genericDeclaration, String str, Type... typeArr) {
        if (typeArr.length == 0) {
            typeArr = new Type[]{Object.class};
        }
        return n(genericDeclaration, str, typeArr);
    }

    public static ParameterizedType l(Class cls, Type... typeArr) {
        return new ParameterizedTypeImpl(ClassOwnership.JVM_BEHAVIOR.getOwnerType(cls), cls, typeArr);
    }

    public static ParameterizedType m(Type type, Class cls, Type... typeArr) {
        if (type == null) {
            return l(cls, typeArr);
        }
        xd8.o(typeArr);
        xd8.j(cls.getEnclosingClass() != null, "Owner type for unenclosed %s", cls);
        return new ParameterizedTypeImpl(type, cls, typeArr);
    }

    public static TypeVariable n(GenericDeclaration genericDeclaration, String str, Type[] typeArr) {
        return (TypeVariable) wq8.a(TypeVariable.class, new d(new c(genericDeclaration, str, typeArr)));
    }

    public static WildcardType o(Type type) {
        return new WildcardTypeImpl(new Type[0], new Type[]{type});
    }

    public static Type p(Type[] typeArr) {
        for (Type type : typeArr) {
            Type typeI = i(type);
            if (typeI != null) {
                if (typeI instanceof Class) {
                    Class cls = (Class) typeI;
                    if (cls.isPrimitive()) {
                        return cls;
                    }
                }
                return o(typeI);
            }
        }
        return null;
    }

    public static WildcardType q(Type type) {
        return new WildcardTypeImpl(new Type[]{type}, new Type[]{Object.class});
    }

    public static Type[] r(Collection collection) {
        return (Type[]) collection.toArray(new Type[0]);
    }

    public static String s(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}
