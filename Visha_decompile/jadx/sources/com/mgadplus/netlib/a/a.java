package com.mgadplus.netlib.a;

import androidx.annotation.NonNull;
import java.util.Map;

public class a {
    private int a = 0;
    private int b = 0;
    private String c;
    private com.mgadplus.netlib.base.c d;
    private Map<String, String> e;

    public a(@NonNull String str) {
        this.c = str;
    }

    public String a() {
        return this.c;
    }

    public Map<String, String> b() {
        return this.e;
    }

    public com.mgadplus.netlib.base.c c() {
        return this.d;
    }

    public int d() {
        return this.a;
    }

    public int e() {
        return this.b;
    }

    public a a(Map<String, String> map) {
        this.e = map;
        return this;
    }

    public a b(int i) {
        this.b = i;
        return this;
    }

    public a a(String str, String str2, com.mgadplus.netlib.base.c.a aVar) {
        if (this.d == null) {
            this.d = new com.mgadplus.netlib.base.c();
        }
        this.d.put(str, str2, aVar);
        return this;
    }

    public a a(int i) {
        this.a = i;
        return this;
    }
}
