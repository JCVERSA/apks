package defpackage;

import com.mq.mgmi.client.message.n;

public class hpa {
    public static final String p = "hpa";
    public volatile boolean a;
    public boolean b;
    public boolean c;
    public final Object d;
    public final Object e;
    public tod f;
    public es6 g;
    public n h;
    public String[] i;
    public String j;
    public f9d k;
    public v7d l;
    public Object m;
    public int n;
    public boolean o;

    public hpa(String str) {
        w7d.a("com.mq.mgmi.client.message.internal.nls.logcat", p);
        this.a = false;
        this.b = false;
        this.c = false;
        this.d = new Object();
        this.e = new Object();
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = 0;
        this.o = false;
        throw null;
    }

    public v7d a() {
        return this.l;
    }

    public n b() {
        return this.h;
    }

    public String c() {
        return this.j;
    }

    public int d() {
        return this.n;
    }

    public es6 e() {
        return this.g;
    }

    public String[] f() {
        return this.i;
    }

    public Object g() {
        return this.m;
    }

    public boolean h() {
        return this.a;
    }

    public boolean i() {
        return this.o;
    }

    public void j(int i) {
        this.n = i;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=");
        stringBuffer.append(c());
        stringBuffer.append(" ,topics=");
        if (f() != null) {
            for (int i = 0; i < f().length; i++) {
                stringBuffer.append(f()[i]);
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append(" ,usercontext=");
        stringBuffer.append(g());
        stringBuffer.append(" ,isComplete=");
        stringBuffer.append(h());
        stringBuffer.append(" ,isNotified=");
        stringBuffer.append(i());
        stringBuffer.append(" ,exception=");
        stringBuffer.append(b());
        stringBuffer.append(" ,actioncallback=");
        stringBuffer.append(a());
        return stringBuffer.toString();
    }
}
