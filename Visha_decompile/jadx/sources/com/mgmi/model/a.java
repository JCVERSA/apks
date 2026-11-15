package com.mgmi.model;

import defpackage.l2d;
import java.util.ArrayList;
import java.util.List;

public class a {
    private String c;
    private String d;
    private List<l2d> e;
    private List<l2d> f;
    private int b = 0;
    private l2d a = new l2d("");

    public void a(String str) {
        this.a.a(this.c);
        this.a.c(this.d);
        int i = this.b;
        if (i == 0) {
            this.a.e(str);
        } else if (i == 1) {
            this.a.g(str);
        }
        this.b++;
    }

    public void b(String str) {
        this.c = str;
    }

    public void c(String str) {
        this.d = str;
    }

    public List<l2d> b() {
        return this.f;
    }

    public l2d c() {
        return this.a;
    }

    public void a(l2d l2dVar) {
        int i = this.b;
        if (i == 1) {
            if (this.e == null) {
                this.e = new ArrayList();
            }
            this.e.add(l2dVar);
        } else if (i == 2) {
            if (this.f == null) {
                this.f = new ArrayList();
            }
            this.f.add(l2dVar);
        }
    }

    public List<l2d> a() {
        return this.e;
    }
}
