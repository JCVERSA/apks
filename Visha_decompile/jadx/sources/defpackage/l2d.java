package defpackage;

import android.text.TextUtils;

public class l2d {
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public int h;

    public l2d(String str) {
        this.h = 3;
        this.g = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (str.equals("text")) {
            this.h = 1;
        } else if (str.equals("image")) {
            this.h = 2;
        }
    }

    public l2d a(String str) {
        this.b = str;
        return this;
    }

    public String b() {
        return this.c;
    }

    public l2d c(String str) {
        this.a = str;
        return this;
    }

    public String d() {
        return this.b;
    }

    public l2d e(String str) {
        this.e = str;
        return this;
    }

    public String f() {
        return this.a;
    }

    public l2d g(String str) {
        this.f = str;
        return this;
    }

    public String h() {
        return this.d;
    }

    public int i() {
        return this.h;
    }

    public l2d j(String str) {
        int i = this.h;
        if (i == 1) {
            this.c = str;
        } else if (i == 2) {
            this.d = str;
        }
        return this;
    }

    public String k() {
        return this.e;
    }

    public String l() {
        return this.f;
    }
}
