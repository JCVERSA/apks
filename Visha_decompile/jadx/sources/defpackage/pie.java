package defpackage;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class pie {
    public int f;
    public int h;
    public float n;
    public String a = "";
    public String b = "";
    public Set c = Collections.emptySet();
    public String d = "";
    public String e = null;
    public boolean g = false;
    public boolean i = false;
    public int j = -1;
    public int k = -1;
    public int l = -1;
    public int m = -1;
    public int o = -1;
    public boolean p = false;

    public static int a(int i, String str, String str2, int i2) {
        if (str.isEmpty() || i == -1) {
            return i;
        }
        if (str.equals(str2)) {
            return i + i2;
        }
        return -1;
    }

    public final boolean A() {
        return this.j == 1;
    }

    public final float b() {
        return this.n;
    }

    public final int c() {
        if (this.i) {
            return this.h;
        }
        throw new IllegalStateException("Background color not defined.");
    }

    public final int d() {
        if (this.g) {
            return this.f;
        }
        throw new IllegalStateException("Font color not defined");
    }

    public final int e() {
        return this.m;
    }

    public final int f() {
        return this.o;
    }

    public final int g(String str, String str2, Set set, String str3) {
        if (this.a.isEmpty() && this.b.isEmpty() && this.c.isEmpty() && this.d.isEmpty()) {
            return TextUtils.isEmpty(str2) ? 1 : 0;
        }
        int iA = a(a(a(0, this.a, str, 1073741824), this.b, str2, 2), this.d, str3, 4);
        if (iA == -1 || !set.containsAll(this.c)) {
            return 0;
        }
        return iA + (this.c.size() * 4);
    }

    public final int h() {
        int i = this.k;
        if (i == -1 && this.l == -1) {
            return -1;
        }
        return (i == 1 ? 1 : 0) | (this.l == 1 ? 2 : 0);
    }

    public final pie i(int i) {
        this.h = i;
        this.i = true;
        return this;
    }

    public final pie j(boolean z) {
        this.k = 1;
        return this;
    }

    public final pie k(boolean z) {
        this.p = z;
        return this;
    }

    public final pie l(int i) {
        this.f = i;
        this.g = true;
        return this;
    }

    public final pie m(String str) {
        this.e = d2i.a(str);
        return this;
    }

    public final pie n(float f) {
        this.n = f;
        return this;
    }

    public final pie o(int i) {
        this.m = i;
        return this;
    }

    public final pie p(boolean z) {
        this.l = 1;
        return this;
    }

    public final pie q(int i) {
        this.o = i;
        return this;
    }

    public final pie r(boolean z) {
        this.j = 1;
        return this;
    }

    public final String s() {
        return this.e;
    }

    public final void t(String[] strArr) {
        this.c = new HashSet(Arrays.asList(strArr));
    }

    public final void u(String str) {
        this.a = str;
    }

    public final void v(String str) {
        this.b = str;
    }

    public final void w(String str) {
        this.d = str;
    }

    public final boolean x() {
        return this.p;
    }

    public final boolean y() {
        return this.i;
    }

    public final boolean z() {
        return this.g;
    }
}
