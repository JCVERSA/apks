package com.alibaba.fastjson;

import com.alibaba.fastjson.util.ParameterizedTypeImpl;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public abstract class g {

    static ConcurrentMap f17528b = new ConcurrentHashMap(16, 0.75f, 1);

    public static final Type f17529c = new a().a();

    protected final Type f17530a;

    static class a extends g {
        a() {
        }
    }

    protected g() {
        Type type = ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
        Type type2 = (Type) f17528b.get(type);
        if (type2 == null) {
            f17528b.putIfAbsent(type, type);
            type2 = (Type) f17528b.get(type);
        }
        this.f17530a = type2;
    }

    public static Type b(ParameterizedTypeImpl parameterizedTypeImpl) {
        Type type = (Type) f17528b.get(parameterizedTypeImpl);
        if (type != null) {
            return type;
        }
        f17528b.putIfAbsent(parameterizedTypeImpl, parameterizedTypeImpl);
        return (Type) f17528b.get(parameterizedTypeImpl);
    }

    public Type a() {
        return this.f17530a;
    }
}
