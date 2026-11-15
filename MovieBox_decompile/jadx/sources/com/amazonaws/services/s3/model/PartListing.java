package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
import java.util.ArrayList;
import java.util.List;

public class PartListing implements S3RequesterChargedResult {

    private String f18145a;

    private String f18146b;

    private String f18147c;

    private Integer f18148d;

    private Integer f18149e;

    private String f18150f;

    private Owner f18151g;

    private Owner f18152h;

    private String f18153i;

    private boolean f18154j;

    private Integer f18155k;

    private List f18156l;

    private boolean f18157m;

    public List a() {
        if (this.f18156l == null) {
            this.f18156l = new ArrayList();
        }
        return this.f18156l;
    }

    public void b(String str) {
        this.f18145a = str;
    }

    public void c(String str) {
        this.f18150f = str;
    }

    public void d(Owner owner) {
        this.f18152h = owner;
    }

    public void e(String str) {
        this.f18146b = str;
    }

    public void f(int i10) {
        this.f18148d = Integer.valueOf(i10);
    }

    public void g(int i10) {
        this.f18155k = Integer.valueOf(i10);
    }

    public void h(Owner owner) {
        this.f18151g = owner;
    }

    public void i(int i10) {
        this.f18149e = Integer.valueOf(i10);
    }

    public void j(String str) {
        this.f18153i = str;
    }

    public void k(boolean z10) {
        this.f18154j = z10;
    }

    public void l(String str) {
        this.f18147c = str;
    }

    @Override
    public void setRequesterCharged(boolean z10) {
        this.f18157m = z10;
    }
}
