package com.yandex.mobile.ads.impl;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.CallSuper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.Map;

public abstract class up1<T> implements Comparable<up1<T>> {
    private final ti2.a b;
    private final int c;
    private final String d;
    private final int e;
    private final Object f;

    @Nullable
    @GuardedBy("mLock")
    private xq1.a g;
    private Integer h;
    private iq1 i;
    private boolean j;

    @GuardedBy("mLock")
    private boolean k;

    @GuardedBy("mLock")
    private boolean l;
    private boolean m;
    private boolean n;
    private nr1 o;

    @Nullable
    private tm.a p;
    private Object q;

    @GuardedBy("mLock")
    private b r;

    public class a implements Runnable {
        final String b;
        final long c;

        public a(String str, long j) {
            this.b = str;
            this.c = j;
        }

        @Override
        public final void run() {
            up1.this.b.a(this.b, this.c);
            up1 up1Var = up1.this;
            up1Var.b.a(up1Var.toString());
        }
    }

    public interface b {
    }

    public up1(int i, String str, @Nullable xq1.a aVar) {
        this.b = ti2.a.c ? new ti2.a() : null;
        this.f = new Object();
        this.j = true;
        this.k = false;
        this.l = false;
        this.m = false;
        this.n = false;
        this.p = null;
        this.c = i;
        this.d = str;
        this.g = aVar;
        a(new m00());
        this.e = b(str);
    }

    public abstract xq1<T> a(xc1 xc1Var);

    public abstract void a(T t);

    public si2 b(si2 si2Var) {
        return si2Var;
    }

    public final void c(String str) {
        iq1 iq1Var = this.i;
        if (iq1Var != null) {
            iq1Var.b(this);
        }
        if (ti2.a.c) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new a(str, id));
            } else {
                this.b.a(str, id);
                this.b.a(toString());
            }
        }
    }

    @Override
    public final int compareTo(Object obj) {
        int iA;
        int iA2;
        up1 up1Var = (up1) obj;
        int iG = g();
        int iG2 = up1Var.g();
        if (iG == iG2) {
            iA = this.h.intValue();
            iA2 = up1Var.h.intValue();
        } else {
            iA = f9.a(iG2);
            iA2 = f9.a(iG);
        }
        return iA - iA2;
    }

    public final String d() {
        String strL = l();
        int i = this.c;
        if (i == 0 || i == -1) {
            return strL;
        }
        return Integer.toString(i) + '-' + strL;
    }

    public Map<String, String> e() throws ai {
        return Collections.emptyMap();
    }

    public final int f() {
        return this.c;
    }

    public int g() {
        return 2;
    }

    public final nr1 h() {
        return this.o;
    }

    public final Object i() {
        return this.q;
    }

    public final int j() {
        return this.o.a();
    }

    public final int k() {
        return this.e;
    }

    public String l() {
        return this.d;
    }

    public final boolean m() {
        boolean z;
        synchronized (this.f) {
            z = this.l;
        }
        return z;
    }

    public final boolean n() {
        boolean z;
        synchronized (this.f) {
            z = this.k;
        }
        return z;
    }

    public final void o() {
        synchronized (this.f) {
            this.l = true;
        }
    }

    public final void p() {
        b bVar;
        synchronized (this.f) {
            bVar = this.r;
        }
        if (bVar != null) {
            ((hj2) bVar).b(this);
        }
    }

    public final void q() {
        this.j = false;
    }

    public final void r() {
        this.n = true;
    }

    public final void s() {
        this.m = true;
    }

    public final boolean t() {
        return this.j;
    }

    public final String toString() {
        String str = "0x" + Integer.toHexString(this.e);
        StringBuilder sb = new StringBuilder();
        sb.append(n() ? "[X] " : "[ ] ");
        sb.append(l());
        sb.append(" ");
        sb.append(str);
        sb.append(" ");
        sb.append(wp1.a(g()));
        sb.append(" ");
        sb.append(this.h);
        return sb.toString();
    }

    public final boolean u() {
        return this.n;
    }

    public final boolean v() {
        return this.m;
    }

    @CallSuper
    public void a() {
        synchronized (this.f) {
            this.k = true;
            this.g = null;
        }
    }

    public byte[] b() throws ai {
        return null;
    }

    private static int b(String str) {
        Uri uri;
        String host;
        if (TextUtils.isEmpty(str) || (uri = Uri.parse(str)) == null || (host = uri.getHost()) == null) {
            return 0;
        }
        return host.hashCode();
    }

    public final void a(si2 si2Var) {
        xq1.a aVar;
        synchronized (this.f) {
            aVar = this.g;
        }
        if (aVar != null) {
            aVar.a(si2Var);
        }
    }

    public final void b(int i) {
        this.h = Integer.valueOf(i);
    }

    public final void b(Object obj) {
        this.q = obj;
    }

    @Nullable
    public final tm.a c() {
        return this.p;
    }

    public final void a(xq1<?> xq1Var) {
        b bVar;
        synchronized (this.f) {
            bVar = this.r;
        }
        if (bVar != null) {
            ((hj2) bVar).a(this, xq1Var);
        }
    }

    public final void a(int i) {
        iq1 iq1Var = this.i;
        if (iq1Var != null) {
            iq1Var.a(this, i);
        }
    }

    public final void a(tm.a aVar) {
        this.p = aVar;
    }

    public final void a(b bVar) {
        synchronized (this.f) {
            this.r = bVar;
        }
    }

    public final void a(iq1 iq1Var) {
        this.i = iq1Var;
    }

    public final void a(m00 m00Var) {
        this.o = m00Var;
    }

    public final void a(String str) {
        if (ti2.a.c) {
            this.b.a(str, Thread.currentThread().getId());
        }
    }
}
