package com.mgadplus.netlib.base;

import androidx.annotation.NonNull;
import defpackage.wed;

public class d extends wed {
    public String a;
    public c b;
    private int c = 0;
    private int d = 0;

    public d(@NonNull String str, @NonNull c cVar) {
        this.a = str;
        this.b = cVar;
    }

    public int a() {
        return this.c;
    }

    public String b() {
        return this.a;
    }

    public int c() {
        return this.d;
    }

    public d a(int i) {
        this.c = i;
        return this;
    }

    public d b(int i) {
        this.d = i;
        return this;
    }
}
