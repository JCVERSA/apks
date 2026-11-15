package com.alibaba.fastjson.util;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.Map;

public class d implements Comparable {

    public final String f17580a;

    public final Method f17581b;

    public final Field f17582c;

    private int f17583d;

    public final Class f17584e;

    public final Type f17585f;

    public final Class f17586g;

    public final boolean f17587h;

    public final int f17588i;

    public final int f17589j;

    public final String f17590k;

    private final z4.b f17591l;

    private final z4.b f17592m;

    public final boolean f17593n;

    public final boolean f17594o;

    public final char[] f17595p;

    public final boolean f17596q;

    public final boolean f17597r;

    public final boolean f17598s;

    public final String f17599t;

    public final String[] f17600u;

    public final long f17601v;

    public d(String str, Class cls, Class cls2, Type type, Field field, int i10, int i11, int i12) {
        this.f17583d = 0;
        i10 = i10 < 0 ? 0 : i10;
        this.f17580a = str;
        this.f17586g = cls;
        this.f17584e = cls2;
        this.f17585f = type;
        this.f17581b = null;
        this.f17582c = field;
        this.f17583d = i10;
        this.f17588i = i11;
        this.f17589j = i12;
        this.f17596q = cls2.isEnum();
        if (field != null) {
            int modifiers = field.getModifiers();
            this.f17593n = true;
            this.f17594o = Modifier.isTransient(modifiers);
        } else {
            this.f17594o = false;
            this.f17593n = false;
        }
        this.f17595p = b();
        if (field != null) {
            TypeUtils.M0(field);
        }
        this.f17590k = "";
        z4.b bVar = field == null ? null : (z4.b) TypeUtils.O(field, z4.b.class);
        this.f17591l = bVar;
        this.f17592m = null;
        this.f17587h = false;
        this.f17597r = false;
        this.f17598s = false;
        this.f17599t = null;
        this.f17600u = new String[0];
        this.f17601v = n(str, bVar);
    }

    private static boolean f(Type[] typeArr, Map map) {
        if (map == null || map.size() == 0) {
            return false;
        }
        boolean z10 = false;
        for (int i10 = 0; i10 < typeArr.length; i10++) {
            Type type = typeArr[i10];
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                if (f(actualTypeArguments, map)) {
                    typeArr[i10] = com.alibaba.fastjson.g.b(new ParameterizedTypeImpl(actualTypeArguments, parameterizedType.getOwnerType(), parameterizedType.getRawType()));
                    z10 = true;
                }
            } else if ((type instanceof TypeVariable) && map.containsKey(type)) {
                typeArr[i10] = (Type) map.get(type);
                z10 = true;
            }
        }
        return z10;
    }

    private static boolean g(Type[] typeArr, TypeVariable[] typeVariableArr, Type[] typeArr2) {
        if (typeArr2 == null || typeVariableArr.length == 0) {
            return false;
        }
        boolean z10 = false;
        for (int i10 = 0; i10 < typeArr.length; i10++) {
            Type type = typeArr[i10];
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                if (g(actualTypeArguments, typeVariableArr, typeArr2)) {
                    typeArr[i10] = com.alibaba.fastjson.g.b(new ParameterizedTypeImpl(actualTypeArguments, parameterizedType.getOwnerType(), parameterizedType.getRawType()));
                    z10 = true;
                }
            } else if (type instanceof TypeVariable) {
                for (int i11 = 0; i11 < typeVariableArr.length; i11++) {
                    if (type.equals(typeVariableArr[i11])) {
                        typeArr[i10] = typeArr2[i11];
                        z10 = true;
                    }
                }
            }
        }
        return z10;
    }

    public static Type i(Class cls, Type type, Type type2) {
        return j(cls, type, type2, null);
    }

    public static Type j(Class cls, Type type, Type type2, Map map) {
        TypeVariable<Class<?>>[] typeParameters;
        ParameterizedType parameterizedType;
        if (cls != null && type != null) {
            if (type2 instanceof GenericArrayType) {
                Type genericComponentType = ((GenericArrayType) type2).getGenericComponentType();
                Type typeJ = j(cls, type, genericComponentType, map);
                return genericComponentType != typeJ ? Array.newInstance((Class<?>) TypeUtils.Q(typeJ), 0).getClass() : type2;
            }
            if (!TypeUtils.p0(type)) {
                return type2;
            }
            if (type2 instanceof TypeVariable) {
                ParameterizedType parameterizedType2 = (ParameterizedType) TypeUtils.Z(type);
                TypeVariable typeVariable = (TypeVariable) type2;
                TypeVariable[] typeParameters2 = TypeUtils.Q(parameterizedType2).getTypeParameters();
                for (int i10 = 0; i10 < typeParameters2.length; i10++) {
                    if (typeParameters2[i10].getName().equals(typeVariable.getName())) {
                        return parameterizedType2.getActualTypeArguments()[i10];
                    }
                }
            }
            if (type2 instanceof ParameterizedType) {
                ParameterizedType parameterizedType3 = (ParameterizedType) type2;
                Type[] actualTypeArguments = parameterizedType3.getActualTypeArguments();
                boolean zF = f(actualTypeArguments, map);
                if (!zF) {
                    if (type instanceof ParameterizedType) {
                        parameterizedType = (ParameterizedType) type;
                        typeParameters = cls.getTypeParameters();
                    } else if (cls.getGenericSuperclass() instanceof ParameterizedType) {
                        parameterizedType = (ParameterizedType) cls.getGenericSuperclass();
                        typeParameters = cls.getSuperclass().getTypeParameters();
                    } else {
                        typeParameters = type.getClass().getTypeParameters();
                        parameterizedType = parameterizedType3;
                    }
                    zF = g(actualTypeArguments, typeParameters, parameterizedType.getActualTypeArguments());
                }
                if (zF) {
                    return com.alibaba.fastjson.g.b(new ParameterizedTypeImpl(actualTypeArguments, parameterizedType3.getOwnerType(), parameterizedType3.getRawType()));
                }
            }
        }
        return type2;
    }

    private static Type l(Class cls, Type type, TypeVariable typeVariable) {
        Type[] actualTypeArguments;
        Class cls2 = typeVariable.getGenericDeclaration() instanceof Class ? (Class) typeVariable.getGenericDeclaration() : null;
        if (cls2 == cls) {
            actualTypeArguments = type instanceof ParameterizedType ? ((ParameterizedType) type).getActualTypeArguments() : null;
        } else {
            Type[] typeArr = null;
            while (cls != null && cls != Object.class && cls != cls2) {
                Type genericSuperclass = cls.getGenericSuperclass();
                if (genericSuperclass instanceof ParameterizedType) {
                    Type[] actualTypeArguments2 = ((ParameterizedType) genericSuperclass).getActualTypeArguments();
                    g(actualTypeArguments2, cls.getTypeParameters(), typeArr);
                    typeArr = actualTypeArguments2;
                }
                cls = cls.getSuperclass();
            }
            actualTypeArguments = typeArr;
        }
        if (actualTypeArguments == null || cls2 == null) {
            return null;
        }
        TypeVariable[] typeParameters = cls2.getTypeParameters();
        for (int i10 = 0; i10 < typeParameters.length; i10++) {
            if (typeVariable.equals(typeParameters[i10])) {
                return actualTypeArguments[i10];
            }
        }
        return null;
    }

    private long n(String str, z4.b bVar) {
        return (bVar == null || bVar.name().length() == 0) ? TypeUtils.K(str) : TypeUtils.L(str);
    }

    @Override
    public int compareTo(d dVar) {
        Method method = dVar.f17581b;
        if (method != null && this.f17581b != null && method.isBridge() && !this.f17581b.isBridge() && dVar.f17581b.getName().equals(this.f17581b.getName())) {
            return 1;
        }
        int i10 = this.f17583d;
        int i11 = dVar.f17583d;
        if (i10 < i11) {
            return -1;
        }
        if (i10 > i11) {
            return 1;
        }
        int iCompareTo = this.f17580a.compareTo(dVar.f17580a);
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        Class<?> clsH = h();
        Class<?> clsH2 = dVar.h();
        if (clsH != null && clsH2 != null && clsH != clsH2) {
            if (clsH.isAssignableFrom(clsH2)) {
                return -1;
            }
            if (clsH2.isAssignableFrom(clsH)) {
                return 1;
            }
        }
        Field field = this.f17582c;
        boolean z10 = false;
        boolean z11 = field != null && field.getType() == this.f17584e;
        Field field2 = dVar.f17582c;
        if (field2 != null && field2.getType() == dVar.f17584e) {
            z10 = true;
        }
        if (z11 && !z10) {
            return 1;
        }
        if (z10 && !z11) {
            return -1;
        }
        if (dVar.f17584e.isPrimitive() && !this.f17584e.isPrimitive()) {
            return 1;
        }
        if (this.f17584e.isPrimitive() && !dVar.f17584e.isPrimitive()) {
            return -1;
        }
        if (dVar.f17584e.getName().startsWith("java.") && !this.f17584e.getName().startsWith("java.")) {
            return 1;
        }
        if (!this.f17584e.getName().startsWith("java.") || dVar.f17584e.getName().startsWith("java.")) {
            return this.f17584e.getName().compareTo(dVar.f17584e.getName());
        }
        return -1;
    }

    protected char[] b() {
        int length = this.f17580a.length();
        char[] cArr = new char[length + 3];
        String str = this.f17580a;
        str.getChars(0, str.length(), cArr, 1);
        cArr[0] = '\"';
        cArr[length + 1] = '\"';
        cArr[length + 2] = ':';
        return cArr;
    }

    public Object d(Object obj) {
        Method method = this.f17581b;
        return method != null ? method.invoke(obj, null) : this.f17582c.get(obj);
    }

    public z4.b e() {
        z4.b bVar = this.f17591l;
        return bVar != null ? bVar : this.f17592m;
    }

    protected Class h() {
        Method method = this.f17581b;
        if (method != null) {
            return method.getDeclaringClass();
        }
        Field field = this.f17582c;
        if (field != null) {
            return field.getDeclaringClass();
        }
        return null;
    }

    public String k() {
        return this.f17599t;
    }

    public Member m() {
        Method method = this.f17581b;
        return method != null ? method : this.f17582c;
    }

    public void o(Object obj, Object obj2) throws IllegalAccessException, InvocationTargetException {
        Method method = this.f17581b;
        if (method != null) {
            method.invoke(obj, obj2);
        } else {
            this.f17582c.set(obj, obj2);
        }
    }

    public void p() {
        Method method = this.f17581b;
        if (method != null) {
            TypeUtils.M0(method);
        } else {
            TypeUtils.M0(this.f17582c);
        }
    }

    public String toString() {
        return this.f17580a;
    }

    public d(String str, Method method, Field field, Class cls, Type type, int i10, int i11, int i12, z4.b bVar, z4.b bVar2, String str2) {
        this(str, method, field, cls, type, i10, i11, i12, bVar, bVar2, str2, null);
    }

    public d(String str, Method method, Field field, Class cls, Type type, int i10, int i11, int i12, z4.b bVar, z4.b bVar2, String str2, Map map) {
        boolean zJsonDirect;
        boolean zIsFinal;
        Class<?> cls2;
        Type type2;
        Type typeL;
        Class<?> cls3;
        Class<?> cls4;
        Type genericReturnType;
        Class<?> returnType;
        Type type3;
        boolean z10 = false;
        this.f17583d = 0;
        if (field != null) {
            String name = field.getName();
            if (name.equals(str)) {
                str = name;
            }
        }
        i10 = i10 < 0 ? 0 : i10;
        this.f17580a = str;
        this.f17581b = method;
        this.f17582c = field;
        this.f17583d = i10;
        this.f17588i = i11;
        this.f17589j = i12;
        this.f17591l = bVar;
        this.f17592m = bVar2;
        if (field != null) {
            int modifiers = field.getModifiers();
            this.f17593n = (modifiers & 1) != 0 || method == null;
            this.f17594o = Modifier.isTransient(modifiers) || TypeUtils.y0(method);
        } else {
            this.f17593n = false;
            this.f17594o = TypeUtils.y0(method);
        }
        if (str2 != null && str2.length() > 0) {
            this.f17590k = str2;
        } else {
            this.f17590k = "";
        }
        z4.b bVarE = e();
        this.f17601v = n(str, bVarE);
        String str3 = null;
        if (bVarE != null) {
            String str4 = bVarE.format();
            str3 = str4.trim().length() != 0 ? str4 : null;
            zJsonDirect = bVarE.jsonDirect();
            this.f17598s = bVarE.unwrapped();
            this.f17600u = bVarE.alternateNames();
        } else {
            this.f17598s = false;
            this.f17600u = new String[0];
            zJsonDirect = false;
        }
        this.f17599t = str3;
        this.f17595p = b();
        if (method != null) {
            TypeUtils.M0(method);
        }
        if (field != null) {
            TypeUtils.M0(field);
        }
        if (method != null) {
            Class<?>[] parameterTypes = method.getParameterTypes();
            if (parameterTypes.length == 1) {
                cls4 = parameterTypes[0];
                type3 = method.getGenericParameterTypes()[0];
            } else {
                if (parameterTypes.length == 2 && (cls3 = parameterTypes[0]) == String.class && parameterTypes[1] == Object.class) {
                    cls4 = cls3;
                    type3 = cls3;
                } else {
                    zIsFinal = true;
                    returnType = method.getReturnType();
                    genericReturnType = method.getGenericReturnType();
                }
                this.f17586g = method.getDeclaringClass();
                cls2 = returnType;
                type2 = genericReturnType;
            }
            zIsFinal = false;
            returnType = cls4;
            genericReturnType = type3;
            this.f17586g = method.getDeclaringClass();
            cls2 = returnType;
            type2 = genericReturnType;
        } else {
            Class<?> type4 = field.getType();
            Type genericType = field.getGenericType();
            this.f17586g = field.getDeclaringClass();
            zIsFinal = Modifier.isFinal(field.getModifiers());
            cls2 = type4;
            type2 = genericType;
        }
        this.f17587h = zIsFinal;
        if (zJsonDirect && cls2 == String.class) {
            z10 = true;
        }
        this.f17597r = z10;
        if (cls != null && cls2 == Object.class && (type2 instanceof TypeVariable) && (typeL = l(cls, type, (TypeVariable) type2)) != null) {
            this.f17584e = TypeUtils.Q(typeL);
            this.f17585f = typeL;
            this.f17596q = cls2.isEnum();
            return;
        }
        boolean z11 = type2 instanceof Class;
        Class<?> cls5 = cls2;
        Type type5 = type2;
        if (!z11) {
            Type typeJ = j(cls, type == null ? cls : type, type2, map);
            Class<?> clsQ = cls2;
            if (typeJ != type2) {
                if (typeJ instanceof ParameterizedType) {
                    clsQ = TypeUtils.Q(typeJ);
                } else if (typeJ instanceof Class) {
                    clsQ = cls2;
                    clsQ = TypeUtils.Q(typeJ);
                }
            }
            clsQ = cls2;
            type5 = typeJ;
            cls5 = clsQ;
        }
        this.f17585f = type5;
        this.f17584e = cls5;
        this.f17596q = cls5.isEnum();
    }
}
