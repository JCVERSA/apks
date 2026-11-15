package defpackage;

import freemarker.ext.beans.b;
import freemarker.ext.beans.d;
import freemarker.template.Version;

public abstract class xd0 implements Cloneable {
    public final Version b;
    public yw0 c;
    public boolean d;
    public int e;
    public gc7 f;
    public boolean g;
    public boolean h;

    public xd0(Version version, boolean z) {
        this.d = false;
        this.e = 0;
        this.f = null;
        this.g = false;
        this.h = false;
        d1d.a(version);
        version = z ? version : b.G(version);
        this.b = version;
        this.c = new yw0(version);
    }

    public Object a(boolean z) {
        try {
            xd0 xd0Var = (xd0) super.clone();
            if (z) {
                xd0Var.c = (yw0) this.c.clone();
            }
            return xd0Var;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException("Failed to clone BeansWrapperConfiguration", e);
        }
    }

    public int c() {
        return this.e;
    }

    public Version d() {
        return this.b;
    }

    public d e() {
        return this.c.e();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        xd0 xd0Var = (xd0) obj;
        return this.b.equals(xd0Var.b) && this.d == xd0Var.d && this.e == xd0Var.e && this.f == xd0Var.f && this.g == xd0Var.g && this.h == xd0Var.h && this.c.equals(xd0Var.c);
    }

    public gc7 f() {
        return this.f;
    }

    public boolean g() {
        return this.h;
    }

    public boolean h() {
        return this.d;
    }

    public int hashCode() {
        int iHashCode = (((((this.b.hashCode() + 31) * 31) + (this.d ? 1231 : 1237)) * 31) + this.e) * 31;
        gc7 gc7Var = this.f;
        return ((((((iHashCode + (gc7Var != null ? gc7Var.hashCode() : 0)) * 31) + (this.g ? 1231 : 1237)) * 31) + (this.h ? 1231 : 1237)) * 31) + this.c.hashCode();
    }

    public boolean i() {
        return this.g;
    }

    public void j(d dVar) {
        this.c.i(dVar);
    }

    public xd0(Version version) {
        this(version, false);
    }
}
