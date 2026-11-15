package com.mgmi.model;

import java.util.List;

public class u {
    private String a;
    private String b;
    private String d;
    private String e;
    private int c = 1;
    private boolean f = false;
    private boolean g = false;

    public String a() {
        return this.a;
    }

    public boolean b() {
        return this.f;
    }

    public boolean c() {
        return this.g;
    }

    public String d() {
        return this.e;
    }

    public String e() {
        return this.b;
    }

    public int f() {
        return this.c;
    }

    public String g() {
        return this.d;
    }

    public u a(String str) {
        this.a = str;
        return this;
    }

    public void b(boolean z) {
        this.g = z;
    }

    public u c(String str) {
        this.b = str;
        return this;
    }

    public u d(String str) {
        this.d = str;
        return this;
    }

    public void a(boolean z) {
        this.f = z;
    }

    public void b(String str) {
        this.e = str;
    }

    public u a(int i) {
        this.c = i;
        return this;
    }

    public static void a(List<u> list) {
        int iF = 0;
        for (int i = 0; i < list.size(); i++) {
            list.get(i).a(false);
            list.get(i).b(false);
            iF += list.get(i).f();
        }
        int i2 = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            int iF2 = list.get(i3).f();
            if (i3 == list.size() - 1) {
                list.get(i3).a(100 - i2);
            } else {
                int i4 = (int) ((iF2 * 100.0f) / iF);
                list.get(i3).a(i4);
                i2 += i4;
            }
        }
        int i5 = 0;
        int iF3 = 0;
        for (int i6 = 0; i6 < list.size(); i6++) {
            if (list.get(i6).f() >= iF3) {
                iF3 = list.get(i6).f();
                i5 = i6;
            }
        }
        list.get(i5).b(true);
    }
}
