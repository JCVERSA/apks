package com.android.net;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Map;

public abstract class n<T> implements Comparable<n<T>> {
    public final int a;
    public final String b;
    final int c;
    final Object d;
    p.a e;
    Integer f;
    o g;
    boolean h;
    public boolean i;
    public r j;
    public com.android.net.b.a k;
    private final v.a l;
    private boolean m;
    private boolean n;
    private a o;

    public interface a {
        void a(n<?> nVar);

        void a(n<?> nVar, p<?> pVar);
    }

    public enum b {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    public n(int i, String str, p.a aVar) {
        Uri uri;
        String host;
        this.l = v.a.a ? new v.a() : null;
        this.d = new Object();
        this.h = true;
        int iHashCode = 0;
        this.m = false;
        this.n = false;
        this.i = false;
        this.k = null;
        this.a = i;
        this.b = str;
        this.e = aVar;
        this.j = new e();
        if (!TextUtils.isEmpty(str) && (uri = Uri.parse(str)) != null && (host = uri.getHost()) != null) {
            iHashCode = host.hashCode();
        }
        this.c = iHashCode;
    }

    public static u a(u uVar) {
        return uVar;
    }

    public abstract p<T> a(k kVar);

    public abstract void a(T t);

    public final void b(final String str) {
        o oVar = this.g;
        if (oVar != null) {
            oVar.b(this);
        }
        if (v.a.a) {
            final long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    @Override
                    public final void run() {
                        n.this.l.a(str, id);
                        n.this.l.a(toString());
                    }
                });
            } else {
                this.l.a(str, id);
                this.l.a(toString());
            }
        }
    }

    public Map<String, String> c() {
        return Collections.emptyMap();
    }

    @Override
    public int compareTo(Object obj) {
        int iOrdinal;
        int iOrdinal2;
        n nVar = (n) obj;
        b bVarI = i();
        b bVarI2 = nVar.i();
        if (bVarI == bVarI2) {
            iOrdinal = this.f.intValue();
            iOrdinal2 = nVar.f.intValue();
        } else {
            iOrdinal = bVarI2.ordinal();
            iOrdinal2 = bVarI.ordinal();
        }
        return iOrdinal - iOrdinal2;
    }

    @Deprecated
    public String d() {
        return g();
    }

    @Deprecated
    public byte[] e() {
        Map<String, String> mapF = f();
        if (mapF == null || mapF.size() <= 0) {
            return null;
        }
        return a(mapF, "UTF-8");
    }

    public Map<String, String> f() {
        return null;
    }

    public String g() {
        return "application/x-www-form-urlencoded; charset=UTF-8";
    }

    public byte[] h() {
        Map<String, String> mapF = f();
        if (mapF == null || mapF.size() <= 0) {
            return null;
        }
        return a(mapF, "UTF-8");
    }

    public b i() {
        return b.NORMAL;
    }

    public final int j() {
        return this.j.a();
    }

    public final void k() {
        synchronized (this.d) {
            this.n = true;
        }
    }

    public final boolean l() {
        boolean z;
        synchronized (this.d) {
            z = this.n;
        }
        return z;
    }

    public final void m() {
        a aVar;
        synchronized (this.d) {
            aVar = this.o;
        }
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public String toString() {
        String str = "0x" + Integer.toHexString(this.c);
        StringBuilder sb = new StringBuilder();
        sb.append(this.m ? "[X] " : "[ ] ");
        sb.append(this.b);
        sb.append(" ");
        sb.append(str);
        sb.append(" ");
        sb.append(i());
        sb.append(" ");
        sb.append(this.f);
        return sb.toString();
    }

    public final boolean b() {
        boolean z;
        synchronized (this.d) {
            z = this.m;
        }
        return z;
    }

    public void a() {
        synchronized (this.d) {
            this.m = true;
            this.e = null;
        }
    }

    public final void a(a aVar) {
        synchronized (this.d) {
            this.o = aVar;
        }
    }

    public final void a(p<?> pVar) {
        a aVar;
        synchronized (this.d) {
            aVar = this.o;
        }
        if (aVar != null) {
            aVar.a(this, pVar);
        }
    }

    public final void a(String str) {
        if (v.a.a) {
            this.l.a(str, Thread.currentThread().getId());
        }
    }

    private static byte[] a(Map<String, String> map, String str) {
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                sb.append(URLEncoder.encode(entry.getKey(), str));
                sb.append('=');
                sb.append(URLEncoder.encode(entry.getValue(), str));
                sb.append('&');
            }
            return sb.toString().getBytes(str);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Encoding not supported: ".concat(String.valueOf(str)), e);
        }
    }
}
