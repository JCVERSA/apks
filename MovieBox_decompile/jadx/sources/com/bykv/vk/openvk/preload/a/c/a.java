package com.bykv.vk.openvk.preload.a.c;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public class a<T> {

    private Class<? super T> f19853a;

    private Type f19854b;

    private int f19855c;

    protected a() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        if (genericSuperclass instanceof Class) {
            throw new RuntimeException("Missing type parameter.");
        }
        Type typeA = com.bykv.vk.openvk.preload.a.b.a.a(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        this.f19854b = typeA;
        this.f19853a = (Class<? super T>) com.bykv.vk.openvk.preload.a.b.a.b(typeA);
        this.f19855c = this.f19854b.hashCode();
    }

    public final Class<? super T> a() {
        return this.f19853a;
    }

    public final Type b() {
        return this.f19854b;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && com.bykv.vk.openvk.preload.a.b.a.a(this.f19854b, ((a) obj).f19854b);
    }

    public final int hashCode() {
        return this.f19855c;
    }

    public final String toString() {
        return com.bykv.vk.openvk.preload.a.b.a.c(this.f19854b);
    }

    public static a<?> a(Type type) {
        return new a<>(type);
    }

    public static <T> a<T> a(Class<T> cls) {
        return new a<>(cls);
    }

    private a(Type type) {
        Type typeA = com.bykv.vk.openvk.preload.a.b.a.a((Type) com.bykv.vk.openvk.preload.falconx.a.a.a(type));
        this.f19854b = typeA;
        this.f19853a = (Class<? super T>) com.bykv.vk.openvk.preload.a.b.a.b(typeA);
        this.f19855c = this.f19854b.hashCode();
    }
}
