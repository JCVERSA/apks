package com.android.net;

public final class p<T> {
    public final T a;
    public final com.android.net.b.a b;
    public final u c;
    public boolean d;

    public interface a {
        void a(u uVar);
    }

    public interface b<T> {
        void a(T t);
    }

    private p(u uVar) {
        this.d = false;
        this.a = null;
        this.b = null;
        this.c = uVar;
    }

    public static <T> p<T> a(u uVar) {
        return new p<>(uVar);
    }

    private p(T t, com.android.net.b.a aVar) {
        this.d = false;
        this.a = t;
        this.b = aVar;
        this.c = null;
    }

    public static <T> p<T> a(T t, com.android.net.b.a aVar) {
        return new p<>(t, aVar);
    }
}
