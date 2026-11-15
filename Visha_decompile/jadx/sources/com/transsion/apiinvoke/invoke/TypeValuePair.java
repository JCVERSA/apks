package com.transsion.apiinvoke.invoke;

import java.io.Serializable;

public class TypeValuePair<T> implements Serializable {
    private static final long serialVersionUID = 5051827069177500136L;
    private Class type;
    private T value = null;
    private String name = "";

    public static <T> TypeValuePair<T> create(Class cls, T t) {
        return create(cls, t, "");
    }

    public static <T> TypeValuePair<T> createNoNull(T t) {
        return create(t.getClass(), t, "");
    }

    public static <T> TypeValuePair<T> createTypeMapping(T t) {
        return t == null ? empty() : create(t.getClass(), t);
    }

    public static <T> TypeValuePair<T> empty() {
        return new TypeValuePair<>();
    }

    private static boolean isAssignableFrom(Class cls, Class cls2) {
        if (cls == null || cls2 == null) {
            return false;
        }
        return cls2.isAssignableFrom(cls);
    }

    public String getName() {
        return this.name;
    }

    public Object getValue() {
        return this.value;
    }

    public Class<?> getValueType() {
        return this.type;
    }

    public boolean isPrimitive() {
        Class cls = this.type;
        if (cls != null) {
            return isPrimitive(cls);
        }
        T t = this.value;
        if (t == null) {
            return false;
        }
        return isPrimitive(t.getClass());
    }

    public String toString() {
        return "TypeValuePair{type='" + this.type + "', value=" + this.value + ", name='" + this.name + "'}";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> TypeValuePair<T> create(Class cls, T t, String str) {
        if (t instanceof TypeValuePair) {
            return (TypeValuePair) t;
        }
        TypeValuePair<T> typeValuePair = new TypeValuePair<>();
        ((TypeValuePair) typeValuePair).type = cls;
        if (cls == null) {
            ((TypeValuePair) typeValuePair).type = t.getClass();
        }
        if (t != 0) {
            ((TypeValuePair) typeValuePair).value = t;
        }
        if (str != null) {
            ((TypeValuePair) typeValuePair).name = str;
        }
        return typeValuePair;
    }

    private static boolean isPrimitive(Class<?> cls) {
        if (cls.equals(String.class) || cls.isPrimitive()) {
            return true;
        }
        try {
            return ((Class) cls.getField("TYPE").get(null)).isPrimitive();
        } catch (Exception unused) {
            return false;
        }
    }
}
