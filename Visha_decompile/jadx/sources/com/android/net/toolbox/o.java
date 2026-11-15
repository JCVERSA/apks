package com.android.net.toolbox;

import java.io.UnsupportedEncodingException;

public class o extends com.android.net.n<String> {
    private final Object l;
    private com.android.net.p.b<String> m;

    public o(int i, String str, com.android.net.p.b<String> bVar, com.android.net.p.a aVar) {
        super(i, str, aVar);
        this.l = new Object();
        this.m = bVar;
    }

    @Override
    public final com.android.net.p<String> a(com.android.net.k kVar) {
        String str;
        try {
            str = new String(kVar.b, g.a(kVar.c));
        } catch (UnsupportedEncodingException unused) {
            str = new String(kVar.b);
        }
        return com.android.net.p.a(str, g.a(kVar));
    }

    @Override
    public final void a() {
        super.a();
        synchronized (this.l) {
            this.m = null;
        }
    }

    @Override
    public final void a(String str) {
        com.android.net.p.b<String> bVar;
        String str2 = str;
        synchronized (this.l) {
            bVar = this.m;
        }
        if (bVar != null) {
            bVar.a(str2);
        }
    }
}
