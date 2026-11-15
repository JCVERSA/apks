package com.mbridge.msdk.tracker.network;

public class v<T> {

    public final T f37859a;

    public final com.mbridge.msdk.tracker.network.b.a f37860b;

    public final b0 f37861c;

    public boolean f37862d;

    public interface a {
        void a(b0 b0Var);
    }

    public interface b<T> {
        void a(T t10);
    }

    private v(T t10, com.mbridge.msdk.tracker.network.b.a aVar) {
        this.f37862d = false;
        this.f37859a = t10;
        this.f37860b = aVar;
        this.f37861c = null;
    }

    public static <T> v<T> a(T t10, com.mbridge.msdk.tracker.network.b.a aVar) {
        return new v<>(t10, aVar);
    }

    public static <T> v<T> a(b0 b0Var) {
        return new v<>(b0Var);
    }

    public boolean a() {
        return this.f37861c == null;
    }

    private v(b0 b0Var) {
        this.f37862d = false;
        this.f37859a = null;
        this.f37860b = null;
        this.f37861c = b0Var;
    }
}
