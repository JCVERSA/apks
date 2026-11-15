package com.alibaba.fastjson.util;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

public class GenericArrayTypeImpl implements GenericArrayType {

    private final Type f17546a;

    public GenericArrayTypeImpl(Type type) {
        this.f17546a = type;
    }

    public boolean equals(Object obj) {
        if (obj instanceof GenericArrayType) {
            return this.f17546a.equals(((GenericArrayType) obj).getGenericComponentType());
        }
        return false;
    }

    @Override
    public Type getGenericComponentType() {
        return this.f17546a;
    }

    public int hashCode() {
        return this.f17546a.hashCode();
    }

    public String toString() {
        Type genericComponentType = getGenericComponentType();
        StringBuilder sb2 = new StringBuilder();
        if (genericComponentType instanceof Class) {
            sb2.append(((Class) genericComponentType).getName());
        } else {
            sb2.append(genericComponentType.toString());
        }
        sb2.append("[]");
        return sb2.toString();
    }
}
