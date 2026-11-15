package defpackage;

import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.e;
import com.squareup.moshi.j;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.HttpUrl;

public abstract class wkb {
    public static final Set a = Collections.emptySet();
    public static final Type[] b = new Type[0];
    public static final Class c;
    public static final Class d;
    public static final Map e;

    public static final class a implements GenericArrayType {
        public final Type b;

        public a(Type type) {
            this.b = wkb.a(type);
        }

        public boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && kdb.d(this, (GenericArrayType) obj);
        }

        @Override
        public Type getGenericComponentType() {
            return this.b;
        }

        public int hashCode() {
            return this.b.hashCode();
        }

        public String toString() {
            return wkb.v(this.b) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
    }

    public static final class b implements ParameterizedType {
        public final Type b;
        public final Type c;
        public final Type[] d;

        public b(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                Class<?> enclosingClass = ((Class) type2).getEnclosingClass();
                if (type != null) {
                    if (enclosingClass == null || kdb.g(type) != enclosingClass) {
                        throw new IllegalArgumentException("unexpected owner type for " + type2 + ": " + type);
                    }
                } else if (enclosingClass != null) {
                    throw new IllegalArgumentException("unexpected owner type for " + type2 + ": null");
                }
            }
            this.b = type == null ? null : wkb.a(type);
            this.c = wkb.a(type2);
            this.d = (Type[]) typeArr.clone();
            int i = 0;
            while (true) {
                Type[] typeArr2 = this.d;
                if (i >= typeArr2.length) {
                    return;
                }
                typeArr2[i].getClass();
                wkb.b(this.d[i]);
                Type[] typeArr3 = this.d;
                typeArr3[i] = wkb.a(typeArr3[i]);
                i++;
            }
        }

        public boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && kdb.d(this, (ParameterizedType) obj);
        }

        @Override
        public Type[] getActualTypeArguments() {
            return (Type[]) this.d.clone();
        }

        @Override
        public Type getOwnerType() {
            return this.b;
        }

        @Override
        public Type getRawType() {
            return this.c;
        }

        public int hashCode() {
            return wkb.g(this.b) ^ (Arrays.hashCode(this.d) ^ this.c.hashCode());
        }

        public String toString() {
            StringBuilder sb = new StringBuilder((this.d.length + 1) * 30);
            sb.append(wkb.v(this.c));
            if (this.d.length == 0) {
                return sb.toString();
            }
            sb.append("<");
            sb.append(wkb.v(this.d[0]));
            for (int i = 1; i < this.d.length; i++) {
                sb.append(", ");
                sb.append(wkb.v(this.d[i]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    public static final class c implements WildcardType {
        public final Type b;
        public final Type c;

        public c(Type[] typeArr, Type[] typeArr2) {
            if (typeArr2.length > 1) {
                throw new IllegalArgumentException();
            }
            if (typeArr.length != 1) {
                throw new IllegalArgumentException();
            }
            if (typeArr2.length != 1) {
                typeArr[0].getClass();
                wkb.b(typeArr[0]);
                this.c = null;
                this.b = wkb.a(typeArr[0]);
                return;
            }
            typeArr2[0].getClass();
            wkb.b(typeArr2[0]);
            if (typeArr[0] != Object.class) {
                throw new IllegalArgumentException();
            }
            this.c = wkb.a(typeArr2[0]);
            this.b = Object.class;
        }

        public boolean equals(Object obj) {
            return (obj instanceof WildcardType) && kdb.d(this, (WildcardType) obj);
        }

        @Override
        public Type[] getLowerBounds() {
            Type type = this.c;
            return type != null ? new Type[]{type} : wkb.b;
        }

        @Override
        public Type[] getUpperBounds() {
            return new Type[]{this.b};
        }

        public int hashCode() {
            Type type = this.c;
            return (this.b.hashCode() + 31) ^ (type != null ? type.hashCode() + 31 : 1);
        }

        public String toString() {
            if (this.c != null) {
                return "? super " + wkb.v(this.c);
            }
            if (this.b == Object.class) {
                return "?";
            }
            return "? extends " + wkb.v(this.b);
        }
    }

    static {
        Class<?> cls;
        try {
            cls = Class.forName(getKotlinMetadataClassName());
        } catch (ClassNotFoundException unused) {
            cls = null;
        }
        d = cls;
        c = DefaultConstructorMarker.class;
        LinkedHashMap linkedHashMap = new LinkedHashMap(16);
        linkedHashMap.put(Boolean.TYPE, Boolean.class);
        linkedHashMap.put(Byte.TYPE, Byte.class);
        linkedHashMap.put(Character.TYPE, Character.class);
        linkedHashMap.put(Double.TYPE, Double.class);
        linkedHashMap.put(Float.TYPE, Float.class);
        linkedHashMap.put(Integer.TYPE, Integer.class);
        linkedHashMap.put(Long.TYPE, Long.class);
        linkedHashMap.put(Short.TYPE, Short.class);
        linkedHashMap.put(Void.TYPE, Void.class);
        e = Collections.unmodifiableMap(linkedHashMap);
    }

    public static Type a(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new a(a(cls.getComponentType())) : cls;
        }
        if (type instanceof ParameterizedType) {
            if (type instanceof b) {
                return type;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new b(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            return type instanceof a ? type : new a(((GenericArrayType) type).getGenericComponentType());
        }
        if (!(type instanceof WildcardType) || (type instanceof c)) {
            return type;
        }
        WildcardType wildcardType = (WildcardType) type;
        return new c(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
    }

    public static void b(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            throw new IllegalArgumentException("Unexpected primitive " + type + ". Use the boxed type.");
        }
    }

    public static Class c(TypeVariable typeVariable) {
        GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            return (Class) genericDeclaration;
        }
        return null;
    }

    public static e d(j jVar, Type type, Class cls) throws NoSuchMethodException {
        Constructor<?> declaredConstructor;
        Object[] objArr;
        ba5 ba5Var = (ba5) cls.getAnnotation(ba5.class);
        Class<?> cls2 = null;
        if (ba5Var == null || !ba5Var.generateAdapter()) {
            return null;
        }
        try {
            try {
                Class<?> cls3 = Class.forName(kdb.e(cls.getName()), true, cls.getClassLoader());
                try {
                    if (type instanceof ParameterizedType) {
                        Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
                        try {
                            declaredConstructor = cls3.getDeclaredConstructor(j.class, Type[].class);
                            objArr = new Object[]{jVar, actualTypeArguments};
                        } catch (NoSuchMethodException unused) {
                            declaredConstructor = cls3.getDeclaredConstructor(Type[].class);
                            objArr = new Object[]{actualTypeArguments};
                        }
                    } else {
                        try {
                            objArr = new Object[]{jVar};
                            declaredConstructor = cls3.getDeclaredConstructor(j.class);
                        } catch (NoSuchMethodException unused2) {
                            declaredConstructor = cls3.getDeclaredConstructor(null);
                            objArr = new Object[0];
                        }
                    }
                    declaredConstructor.setAccessible(true);
                    return ((e) declaredConstructor.newInstance(objArr)).nullSafe();
                } catch (NoSuchMethodException e2) {
                    e = e2;
                    cls2 = cls3;
                    if ((type instanceof ParameterizedType) || cls2.getTypeParameters().length == 0) {
                        throw new RuntimeException("Failed to find the generated JsonAdapter constructor for " + type, e);
                    }
                    throw new RuntimeException("Failed to find the generated JsonAdapter constructor for '" + type + "'. Suspiciously, the type was not parameterized but the target class '" + cls2.getCanonicalName() + "' is generic. Consider using Types#newParameterizedType() to define these missing type variables.", e);
                }
            } catch (NoSuchMethodException e3) {
                e = e3;
            }
        } catch (ClassNotFoundException e4) {
            throw new RuntimeException("Failed to find the generated JsonAdapter class for " + type, e4);
        } catch (IllegalAccessException e5) {
            throw new RuntimeException("Failed to access the generated JsonAdapter for " + type, e5);
        } catch (InstantiationException e6) {
            throw new RuntimeException("Failed to instantiate the generated JsonAdapter for " + type, e6);
        } catch (InvocationTargetException e7) {
            throw t(e7);
        }
    }

    public static Type e(Type type, Class cls, Class cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i = 0; i < length; i++) {
                Class<?> cls3 = interfaces[i];
                if (cls3 == cls2) {
                    return cls.getGenericInterfaces()[i];
                }
                if (cls2.isAssignableFrom(cls3)) {
                    return e(cls.getGenericInterfaces()[i], interfaces[i], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<?> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return e(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static boolean f(Annotation[] annotationArr) {
        for (Annotation annotation : annotationArr) {
            if (annotation.annotationType().getSimpleName().equals("Nullable")) {
                return true;
            }
        }
        return false;
    }

    public static int g(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    private static String getKotlinMetadataClassName() {
        return "kotlin.Metadata";
    }

    public static int h(Object[] objArr, Object obj) {
        for (int i = 0; i < objArr.length; i++) {
            if (obj.equals(objArr[i])) {
                return i;
            }
        }
        throw new NoSuchElementException();
    }

    public static boolean i(Class cls) {
        Class<? extends Annotation> cls2 = d;
        return cls2 != null && cls.isAnnotationPresent(cls2);
    }

    public static boolean j(Class cls) {
        String name = cls.getName();
        return name.startsWith("android.") || name.startsWith("androidx.") || name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("kotlin.") || name.startsWith("kotlinx.") || name.startsWith("scala.");
    }

    public static Set k(AnnotatedElement annotatedElement) {
        return l(annotatedElement.getAnnotations());
    }

    public static Set l(Annotation[] annotationArr) {
        LinkedHashSet linkedHashSet = null;
        for (Annotation annotation : annotationArr) {
            if (annotation.annotationType().isAnnotationPresent(ub5.class)) {
                if (linkedHashSet == null) {
                    linkedHashSet = new LinkedHashSet();
                }
                linkedHashSet.add(annotation);
            }
        }
        return linkedHashSet != null ? Collections.unmodifiableSet(linkedHashSet) : a;
    }

    public static String m(String str, v95 v95Var) {
        if (v95Var == null) {
            return str;
        }
        String strName = v95Var.name();
        return "\u0000".equals(strName) ? str : strName;
    }

    public static String n(String str, AnnotatedElement annotatedElement) {
        return m(str, (v95) annotatedElement.getAnnotation(v95.class));
    }

    public static JsonDataException o(String str, String str2, JsonReader jsonReader) {
        String path = jsonReader.getPath();
        return new JsonDataException(str2.equals(str) ? String.format("Required value '%s' missing at %s", str, path) : String.format("Required value '%s' (JSON name '%s') missing at %s", str, str2, path));
    }

    public static Type p(Type type) {
        if (!(type instanceof WildcardType)) {
            return type;
        }
        WildcardType wildcardType = (WildcardType) type;
        if (wildcardType.getLowerBounds().length != 0) {
            return type;
        }
        Type[] upperBounds = wildcardType.getUpperBounds();
        if (upperBounds.length == 1) {
            return upperBounds[0];
        }
        throw new IllegalArgumentException();
    }

    public static Type q(Type type, Class cls, Type type2) {
        return r(type, cls, type2, new LinkedHashSet());
    }

    public static Type r(Type type, Class cls, Type type2, Collection collection) {
        Type type3;
        WildcardType wildcardType;
        Type typeR;
        while (type2 instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) type2;
            if (collection.contains(typeVariable)) {
                return type2;
            }
            collection.add(typeVariable);
            type2 = s(type, cls, typeVariable);
            if (type2 == typeVariable) {
                return type2;
            }
        }
        if (type2 instanceof Class) {
            Class cls2 = (Class) type2;
            if (cls2.isArray()) {
                Class<?> componentType = cls2.getComponentType();
                Type typeR2 = r(type, cls, componentType, collection);
                return componentType == typeR2 ? cls2 : kdb.b(typeR2);
            }
        }
        if (type2 instanceof GenericArrayType) {
            GenericArrayType genericArrayType = (GenericArrayType) type2;
            Type genericComponentType = genericArrayType.getGenericComponentType();
            Type typeR3 = r(type, cls, genericComponentType, collection);
            return genericComponentType == typeR3 ? genericArrayType : kdb.b(typeR3);
        }
        if (type2 instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type2;
            Type ownerType = parameterizedType.getOwnerType();
            Type typeR4 = r(type, cls, ownerType, collection);
            boolean z = typeR4 != ownerType;
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            int length = actualTypeArguments.length;
            for (int i = 0; i < length; i++) {
                Type typeR5 = r(type, cls, actualTypeArguments[i], collection);
                if (typeR5 != actualTypeArguments[i]) {
                    if (!z) {
                        actualTypeArguments = (Type[]) actualTypeArguments.clone();
                        z = true;
                    }
                    actualTypeArguments[i] = typeR5;
                }
            }
            return z ? new b(typeR4, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
        }
        if (type2 instanceof WildcardType) {
            wildcardType = (WildcardType) type2;
            Type[] lowerBounds = wildcardType.getLowerBounds();
            Type[] upperBounds = wildcardType.getUpperBounds();
            if (lowerBounds.length == 1) {
                Type typeR6 = r(type, cls, lowerBounds[0], collection);
                if (typeR6 != lowerBounds[0]) {
                    type3 = type2;
                    type3 = wildcardType;
                    return kdb.l(typeR6);
                }
            } else if (upperBounds.length == 1 && (typeR = r(type, cls, upperBounds[0], collection)) != upperBounds[0]) {
                type3 = type2;
                type3 = wildcardType;
                type3 = wildcardType;
                return kdb.k(typeR);
            }
        }
        type3 = type2;
        type3 = wildcardType;
        type3 = wildcardType;
        type3 = type2;
        type3 = wildcardType;
        type3 = type2;
        type3 = wildcardType;
        type3 = type2;
        return type3;
    }

    public static Type s(Type type, Class cls, TypeVariable typeVariable) {
        Class clsC = c(typeVariable);
        if (clsC == null) {
            return typeVariable;
        }
        Type typeE = e(type, cls, clsC);
        if (!(typeE instanceof ParameterizedType)) {
            return typeVariable;
        }
        return ((ParameterizedType) typeE).getActualTypeArguments()[h(clsC.getTypeParameters(), typeVariable)];
    }

    public static RuntimeException t(InvocationTargetException invocationTargetException) {
        Throwable targetException = invocationTargetException.getTargetException();
        if (targetException instanceof RuntimeException) {
            throw ((RuntimeException) targetException);
        }
        if (targetException instanceof Error) {
            throw ((Error) targetException);
        }
        throw new RuntimeException(targetException);
    }

    public static String u(Type type, Set set) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(type);
        if (set.isEmpty()) {
            str = " (with no annotations)";
        } else {
            str = " annotated " + set;
        }
        sb.append(str);
        return sb.toString();
    }

    public static String v(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    public static JsonDataException w(String str, String str2, JsonReader jsonReader) {
        String path = jsonReader.getPath();
        return new JsonDataException(str2.equals(str) ? String.format("Non-null value '%s' was null at %s", str, path) : String.format("Non-null value '%s' (JSON name '%s') was null at %s", str, str2, path));
    }
}
