package q3;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class c {

    private int f69341f;

    private int f69343h;

    private float f69350o;

    private String f69336a = "";

    private String f69337b = "";

    private Set f69338c = Collections.emptySet();

    private String f69339d = "";

    private String f69340e = null;

    private boolean f69342g = false;

    private boolean f69344i = false;

    private int f69345j = -1;

    private int f69346k = -1;

    private int f69347l = -1;

    private int f69348m = -1;

    private int f69349n = -1;

    private int f69351p = -1;

    private boolean f69352q = false;

    private static int B(int i10, String str, String str2, int i11) {
        if (str.isEmpty() || i10 == -1) {
            return i10;
        }
        if (str.equals(str2)) {
            return i10 + i11;
        }
        return -1;
    }

    public c A(boolean z10) {
        this.f69346k = z10 ? 1 : 0;
        return this;
    }

    public int a() {
        if (this.f69344i) {
            return this.f69343h;
        }
        throw new IllegalStateException("Background color not defined.");
    }

    public boolean b() {
        return this.f69352q;
    }

    public int c() {
        if (this.f69342g) {
            return this.f69341f;
        }
        throw new IllegalStateException("Font color not defined");
    }

    public String d() {
        return this.f69340e;
    }

    public float e() {
        return this.f69350o;
    }

    public int f() {
        return this.f69349n;
    }

    public int g() {
        return this.f69351p;
    }

    public int h(String str, String str2, Set set, String str3) {
        if (this.f69336a.isEmpty() && this.f69337b.isEmpty() && this.f69338c.isEmpty() && this.f69339d.isEmpty()) {
            return TextUtils.isEmpty(str2) ? 1 : 0;
        }
        int iB = B(B(B(0, this.f69336a, str, 1073741824), this.f69337b, str2, 2), this.f69339d, str3, 4);
        if (iB == -1 || !set.containsAll(this.f69338c)) {
            return 0;
        }
        return iB + (this.f69338c.size() * 4);
    }

    public int i() {
        int i10 = this.f69347l;
        if (i10 == -1 && this.f69348m == -1) {
            return -1;
        }
        return (i10 == 1 ? 1 : 0) | (this.f69348m == 1 ? 2 : 0);
    }

    public boolean j() {
        return this.f69344i;
    }

    public boolean k() {
        return this.f69342g;
    }

    public boolean l() {
        return this.f69345j == 1;
    }

    public boolean m() {
        return this.f69346k == 1;
    }

    public c n(int i10) {
        this.f69343h = i10;
        this.f69344i = true;
        return this;
    }

    public c o(boolean z10) {
        this.f69347l = z10 ? 1 : 0;
        return this;
    }

    public c p(boolean z10) {
        this.f69352q = z10;
        return this;
    }

    public c q(int i10) {
        this.f69341f = i10;
        this.f69342g = true;
        return this;
    }

    public c r(String str) {
        this.f69340e = str == null ? null : com.google.common.base.a.e(str);
        return this;
    }

    public c s(float f10) {
        this.f69350o = f10;
        return this;
    }

    public c t(int i10) {
        this.f69349n = i10;
        return this;
    }

    public c u(boolean z10) {
        this.f69348m = z10 ? 1 : 0;
        return this;
    }

    public c v(int i10) {
        this.f69351p = i10;
        return this;
    }

    public void w(String[] strArr) {
        this.f69338c = new HashSet(Arrays.asList(strArr));
    }

    public void x(String str) {
        this.f69336a = str;
    }

    public void y(String str) {
        this.f69337b = str;
    }

    public void z(String str) {
        this.f69339d = str;
    }
}
