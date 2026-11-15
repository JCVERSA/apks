package defpackage;

import java.util.Objects;

public class woc {
    public int a;
    public int b;
    public boolean c;
    public boolean d;
    public float e;
    public boolean f;
    public boolean g;
    public boolean h;
    public int i;
    public int j;
    public int k;
    public int l;
    public woc m;
    public int n;
    public int o;

    public boolean a() {
        return this.c && ((double) this.e) > 0.6000000014901161d;
    }

    public boolean b() {
        return this.a == 2 && !this.g;
    }

    public boolean c() {
        return this.a == 2 && this.g;
    }

    public boolean d() {
        return this.a <= 1 && this.g;
    }

    public boolean e() {
        if (this.c || this.f) {
            return false;
        }
        if (this.a >= 2) {
            return true;
        }
        return this.g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof woc)) {
            return false;
        }
        woc wocVar = (woc) obj;
        return this.a == wocVar.a && this.c == wocVar.c && this.f == wocVar.f && this.h == wocVar.h && this.g == wocVar.g && this.e == wocVar.e;
    }

    public boolean f() {
        if (this.a >= 2) {
            return true;
        }
        return (this.c || this.g) ? false : true;
    }

    public boolean g() {
        return this.a == 3 && this.g && !this.f && !this.c;
    }

    public boolean h() {
        return (this.a != 1 || this.g || this.f || this.c) ? false : true;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.a), Boolean.valueOf(this.c), Boolean.valueOf(this.f), Boolean.valueOf(this.h), Boolean.valueOf(this.g));
    }

    public String toString() {
        return "WindowOptions{state=" + this.a + ",lastState=" + this.b + ", isSplitWindow=" + this.c + ", isSmallSplitWindow=" + this.d + ", isSmallWindow=" + this.f + ", isOnPictureInPictureMode=" + this.h + ", isLandscape=" + this.g + ", windowWidth=" + this.i + ", windowHeight=" + this.j + ", physicsWidth=" + this.n + ", physicsHeight=" + this.o + ", angel=" + this.k + ", angelDirection=" + this.l + ", splitRatio=" + this.e + '}';
    }
}
