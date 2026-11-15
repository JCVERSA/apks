package defpackage;

import net.grandcentrix.tray.core.TrayException;

public abstract class me8 {
    public boolean a = false;
    public le8 b;
    public int c;

    public me8(le8 le8Var, int i) {
        this.b = le8Var;
        this.c = i;
        d();
    }

    public synchronized void a(int i) {
        try {
            if (i < 1) {
                throw new IllegalArgumentException("Version must be >= 1, was " + i);
            }
            try {
                int version = c().getVersion();
                if (version != i) {
                    if (version == 0) {
                        r9b.b("create " + this + " with initial version 0");
                        e(i);
                    } else if (version > i) {
                        r9b.b("downgrading " + this + "from " + version + " to " + i);
                        f(version, i);
                    } else {
                        r9b.b("upgrading " + this + " from " + version + " to " + i);
                        g(version, i);
                    }
                    c().setVersion(i);
                }
                this.a = true;
            } catch (TrayException e) {
                e.printStackTrace();
                r9b.b("could not change the version, retrying with the next interaction");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public Object b(String str) {
        return this.b.get(str);
    }

    public le8 c() {
        return this.b;
    }

    public boolean d() {
        if (!this.a) {
            a(this.c);
        }
        return this.a;
    }

    public void e(int i) {
    }

    public void f(int i, int i2) {
        throw new IllegalStateException("Can't downgrade " + this + " from version " + i + " to " + i2);
    }

    public void g(int i, int i2) {
        throw new IllegalStateException("Can't upgrade database from version " + i + " to " + i2 + ", not implemented.");
    }

    public boolean h(String str) {
        if (!d()) {
            return false;
        }
        r9b.b("removed key '" + str + "' from " + this);
        return c().remove(str);
    }
}
