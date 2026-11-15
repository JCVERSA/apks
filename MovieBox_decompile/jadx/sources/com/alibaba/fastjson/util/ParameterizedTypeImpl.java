package com.alibaba.fastjson.util;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;

public class ParameterizedTypeImpl implements ParameterizedType {

    private final Type[] f17547a;

    private final Type f17548b;

    private final Type f17549c;

    public ParameterizedTypeImpl(Type[] typeArr, Type type, Type type2) {
        this.f17547a = typeArr;
        this.f17548b = type;
        this.f17549c = type2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ParameterizedTypeImpl parameterizedTypeImpl = (ParameterizedTypeImpl) obj;
        if (!Arrays.equals(this.f17547a, parameterizedTypeImpl.f17547a)) {
            return false;
        }
        Type type = this.f17548b;
        if (type == null ? parameterizedTypeImpl.f17548b != null : !type.equals(parameterizedTypeImpl.f17548b)) {
            return false;
        }
        Type type2 = this.f17549c;
        Type type3 = parameterizedTypeImpl.f17549c;
        if (type2 != null) {
            return type2.equals(type3);
        }
        return type3 == null;
    }

    @Override
    public Type[] getActualTypeArguments() {
        return this.f17547a;
    }

    @Override
    public Type getOwnerType() {
        return this.f17548b;
    }

    @Override
    public Type getRawType() {
        return this.f17549c;
    }

    public int hashCode() {
        Type[] typeArr = this.f17547a;
        int iHashCode = (typeArr != null ? Arrays.hashCode(typeArr) : 0) * 31;
        Type type = this.f17548b;
        int iHashCode2 = (iHashCode + (type != null ? type.hashCode() : 0)) * 31;
        Type type2 = this.f17549c;
        return iHashCode2 + (type2 != null ? type2.hashCode() : 0);
    }
}
