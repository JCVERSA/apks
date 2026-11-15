package ma;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class d {

    private int f66305f;

    private int f66307h;

    private float f66314o;

    private String f66300a = "";

    private String f66301b = "";

    private Set f66302c = Collections.emptySet();

    private String f66303d = "";

    private String f66304e = null;

    private boolean f66306g = false;

    private boolean f66308i = false;

    private int f66309j = -1;

    private int f66310k = -1;

    private int f66311l = -1;

    private int f66312m = -1;

    private int f66313n = -1;

    private int f66315p = -1;

    private boolean f66316q = false;

    private static int B(int i10, String str, String str2, int i11) {
        if (str.isEmpty() || i10 == -1) {
            return i10;
        }
        if (str.equals(str2)) {
            return i10 + i11;
        }
        return -1;
    }

    public d A(boolean z10) {
        this.f66310k = z10 ? 1 : 0;
        return this;
    }

    public int a() {
        if (this.f66308i) {
            return this.f66307h;
        }
        throw new IllegalStateException("Background color not defined.");
    }

    public boolean b() {
        return this.f66316q;
    }

    public int c() {
        if (this.f66306g) {
            return this.f66305f;
        }
        throw new IllegalStateException("Font color not defined");
    }

    public String d() {
        return this.f66304e;
    }

    public float e() {
        return this.f66314o;
    }

    public int f() {
        return this.f66313n;
    }

    public int g() {
        return this.f66315p;
    }

    public int h(String str, String str2, Set set, String str3) {
        if (this.f66300a.isEmpty() && this.f66301b.isEmpty() && this.f66302c.isEmpty() && this.f66303d.isEmpty()) {
            return TextUtils.isEmpty(str2) ? 1 : 0;
        }
        int iB = B(B(B(0, this.f66300a, str, 1073741824), this.f66301b, str2, 2), this.f66303d, str3, 4);
        if (iB == -1 || !set.containsAll(this.f66302c)) {
            return 0;
        }
        return iB + (this.f66302c.size() * 4);
    }

    public int i() {
        int i10 = this.f66311l;
        if (i10 == -1 && this.f66312m == -1) {
            return -1;
        }
        return (i10 == 1 ? 1 : 0) | (this.f66312m == 1 ? 2 : 0);
    }

    public boolean j() {
        return this.f66308i;
    }

    public boolean k() {
        return this.f66306g;
    }

    public boolean l() {
        return this.f66309j == 1;
    }

    public boolean m() {
        return this.f66310k == 1;
    }

    public d n(int i10) {
        this.f66307h = i10;
        this.f66308i = true;
        return this;
    }

    public d o(boolean z10) {
        this.f66311l = z10 ? 1 : 0;
        return this;
    }

    public d p(boolean z10) {
        this.f66316q = z10;
        return this;
    }

    public d q(int i10) {
        this.f66305f = i10;
        this.f66306g = true;
        return this;
    }

    public d r(String str) {
        this.f66304e = str == null ? null : com.google.common.base.a.e(str);
        return this;
    }

    public d s(float f10) {
        this.f66314o = f10;
        return this;
    }

    public d t(int i10) {
        this.f66313n = i10;
        return this;
    }

    public d u(boolean z10) {
        this.f66312m = z10 ? 1 : 0;
        return this;
    }

    public d v(int i10) {
        this.f66315p = i10;
        return this;
    }

    public void w(String[] strArr) {
        this.f66302c = new HashSet(Arrays.asList(strArr));
    }

    public void x(String str) {
        this.f66300a = str;
    }

    public void y(String str) {
        this.f66301b = str;
    }

    public void z(String str) {
        this.f66303d = str;
    }
}
