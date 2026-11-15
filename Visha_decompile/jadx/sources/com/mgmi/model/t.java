package com.mgmi.model;

import java.util.ArrayList;
import java.util.List;

public class t {
    private String b;
    private String c;
    private String d;
    private String e;
    private boolean f = false;
    private List<u> a = new ArrayList();

    public void a(u uVar) {
        if (uVar != null) {
            uVar.b(this.e);
        }
        this.a.add(uVar);
    }

    public String b() {
        return this.b;
    }

    public boolean c() {
        return this.f;
    }

    public String d() {
        return this.c;
    }

    public String e() {
        return this.d;
    }

    public String f() {
        return this.e;
    }

    public void b(String str) {
        this.d = str;
    }

    public void c(String str) {
        this.e = str;
    }

    public void d(String str) {
        this.c = str;
    }

    public List<u> a() {
        return this.a;
    }

    public void a(String str) {
        this.b = str;
    }

    public void a(boolean z) {
        this.f = z;
    }
}
