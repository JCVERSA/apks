package com.yandex.mobile.ads.impl;

import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class ak2 {

    @ColorInt
    private int f;
    private int h;
    private float o;
    private String a = "";
    private String b = "";
    private Set<String> c = Collections.emptySet();
    private String d = "";

    @Nullable
    private String e = null;
    private boolean g = false;
    private boolean i = false;
    private int j = -1;
    private int k = -1;
    private int l = -1;
    private int m = -1;
    private int n = -1;
    private int p = -1;
    private boolean q = false;

    public final int a() {
        if (this.i) {
            return this.h;
        }
        throw new IllegalStateException("Background color not defined.");
    }

    public final boolean b() {
        return this.q;
    }

    public final int c() {
        if (this.g) {
            return this.f;
        }
        throw new IllegalStateException("Font color not defined");
    }

    @Nullable
    public final String d() {
        return this.e;
    }

    public final float e() {
        return this.o;
    }

    public final int f() {
        return this.n;
    }

    public final int g() {
        return this.p;
    }

    public final int h() {
        int i = this.l;
        if (i == -1 && this.m == -1) {
            return -1;
        }
        return (i == 1 ? 1 : 0) | (this.m == 1 ? 2 : 0);
    }

    public final boolean i() {
        return this.i;
    }

    public final boolean j() {
        return this.g;
    }

    public final boolean k() {
        return this.j == 1;
    }

    public final boolean l() {
        return this.k == 1;
    }

    public final void m() {
        this.l = 1;
    }

    public final void n() {
        this.m = 1;
    }

    public final void o() {
        this.k = 1;
    }

    public final void b(int i) {
        this.f = i;
        this.g = true;
    }

    public final void d(int i) {
        this.p = i;
    }

    public final void d(String str) {
        this.d = str;
    }

    public final int a(@Nullable String str, @Nullable String str2, Set<String> set, @Nullable String str3) {
        int i;
        if (this.a.isEmpty() && this.b.isEmpty() && this.c.isEmpty() && this.d.isEmpty()) {
            return TextUtils.isEmpty(str2) ? 1 : 0;
        }
        String str4 = this.a;
        if (str4.isEmpty()) {
            i = 0;
        } else {
            i = str4.equals(str) ? 1073741824 : -1;
        }
        String str5 = this.b;
        if (!str5.isEmpty() && i != -1) {
            i = str5.equals(str2) ? i + 2 : -1;
        }
        String str6 = this.d;
        if (!str6.isEmpty() && i != -1) {
            i = str6.equals(str3) ? i + 4 : -1;
        }
        if (i == -1 || !set.containsAll(this.c)) {
            return 0;
        }
        return (this.c.size() * 4) + i;
    }

    public final void b(String str) {
        this.a = str;
    }

    public final void c(int i) {
        this.n = i;
    }

    public final void c(String str) {
        this.b = str;
    }

    public final void a(int i) {
        this.h = i;
        this.i = true;
    }

    public final void a(boolean z) {
        this.q = z;
    }

    public final void a(@Nullable String str) {
        this.e = fg.b(str);
    }

    public final void a(float f) {
        this.o = f;
    }

    public final void a(String[] strArr) {
        this.c = new HashSet(Arrays.asList(strArr));
    }
}
