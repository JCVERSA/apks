package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class pv5 {
    public final String a;
    public final List b;
    public float c;
    public int d;
    public int e;
    public boolean f;
    public long g;
    public boolean h;
    public long i;

    public pv5() {
        this("");
    }

    public void a(zv5 zv5Var) {
        this.b.add(zv5Var);
    }

    public float b() {
        Iterator it = this.b.iterator();
        float fD = 0.0f;
        while (it.hasNext()) {
            fD += ((zv5) it.next()).d();
        }
        return fD;
    }

    public int c() {
        return this.d;
    }

    public long d() {
        return this.i;
    }

    public float e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof pv5)) {
            return false;
        }
        pv5 pv5Var = (pv5) obj;
        String str = this.a;
        return str != null && str.equals(pv5Var.a);
    }

    public List f() {
        return this.b;
    }

    public int g() {
        return this.e;
    }

    public boolean h() {
        return this.f;
    }

    public void i(boolean z) {
        this.f = z;
    }

    public void j(boolean z) {
        this.h = z;
    }

    public void k(int i) {
        this.d = i;
    }

    public void l(long j) {
        this.i = j;
    }

    public void m(float f) {
        this.c = f;
    }

    public void n(int i) {
        this.e = i;
    }

    public pv5(String str) {
        this.e = 3;
        this.g = -1L;
        this.h = false;
        this.a = str;
        this.d = 0;
        this.b = new ArrayList();
    }
}
