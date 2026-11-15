package defpackage;

import org.mozilla.javascript.ES6Iterator;

public class ad1 {
    public final sc5 a;
    public boolean b;

    public ad1(sc5 sc5Var) {
        y45.j(sc5Var, "writer");
        this.a = sc5Var;
        this.b = true;
    }

    public final boolean a() {
        return this.b;
    }

    public void b() {
        this.b = true;
    }

    public void c() {
        this.b = false;
    }

    public void d(byte b) {
        this.a.writeLong(b);
    }

    public final void e(char c) {
        this.a.a(c);
    }

    public void f(double d) {
        this.a.c(String.valueOf(d));
    }

    public void g(float f) {
        this.a.c(String.valueOf(f));
    }

    public void h(int i) {
        this.a.writeLong(i);
    }

    public void i(long j) {
        this.a.writeLong(j);
    }

    public final void j(String str) {
        y45.j(str, "v");
        this.a.c(str);
    }

    public void k(short s) {
        this.a.writeLong(s);
    }

    public void l(boolean z) {
        this.a.c(String.valueOf(z));
    }

    public void m(String str) {
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
        this.a.b(str);
    }

    public final void n(boolean z) {
        this.b = z;
    }

    public void o() {
    }

    public void p() {
    }
}
