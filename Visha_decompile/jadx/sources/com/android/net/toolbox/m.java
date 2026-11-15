package com.android.net.toolbox;

import com.android.net.v;
import java.io.UnsupportedEncodingException;

public abstract class m<T> extends com.android.net.n<T> {
    private static final String l = String.format("application/json; charset=%s", "utf-8");
    private final Object m;
    private com.android.net.p.b<T> n;
    private final String o;

    public m(int i, String str, String str2, com.android.net.p.b<T> bVar, com.android.net.p.a aVar) {
        super(i, str, aVar);
        this.m = new Object();
        this.n = bVar;
        this.o = str2;
    }

    @Override
    public abstract com.android.net.p<T> a(com.android.net.k kVar);

    @Override
    public final void a() {
        super.a();
        synchronized (this.m) {
            this.n = null;
        }
    }

    @Override
    @Deprecated
    public final String d() {
        return l;
    }

    @Override
    @Deprecated
    public final byte[] e() {
        return h();
    }

    @Override
    public final String g() {
        return l;
    }

    @Override
    public final byte[] h() {
        try {
            String str = this.o;
            if (str == null) {
                return null;
            }
            return str.getBytes("utf-8");
        } catch (UnsupportedEncodingException unused) {
            v.d("Unsupported Encoding while trying to get the bytes of %s using %s", this.o, "utf-8");
            return null;
        }
    }

    @Override
    public final void a(T t) {
        com.android.net.p.b<T> bVar;
        synchronized (this.m) {
            bVar = this.n;
        }
        if (bVar != null) {
            bVar.a(t);
        }
    }
}
