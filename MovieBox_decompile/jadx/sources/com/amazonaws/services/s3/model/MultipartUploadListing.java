package com.amazonaws.services.s3.model;

import java.util.ArrayList;
import java.util.List;

public class MultipartUploadListing {

    private String f18130a;

    private String f18131b;

    private String f18132c;

    private String f18133d;

    private String f18134e;

    private int f18135f;

    private String f18136g;

    private boolean f18137h;

    private String f18138i;

    private String f18139j;

    private List f18140k;

    private List f18141l = new ArrayList();

    public List a() {
        return this.f18141l;
    }

    public List b() {
        if (this.f18140k == null) {
            this.f18140k = new ArrayList();
        }
        return this.f18140k;
    }

    public void c(String str) {
        this.f18130a = str;
    }

    public void d(String str) {
        this.f18132c = str;
    }

    public void e(String str) {
        this.f18136g = str;
    }

    public void f(String str) {
        this.f18131b = str;
    }

    public void g(int i10) {
        this.f18135f = i10;
    }

    public void h(String str) {
        this.f18138i = str;
    }

    public void i(String str) {
        this.f18139j = str;
    }

    public void j(String str) {
        this.f18133d = str;
    }

    public void k(boolean z10) {
        this.f18137h = z10;
    }

    public void l(String str) {
        this.f18134e = str;
    }
}
