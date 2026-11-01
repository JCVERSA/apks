package ru.zdevs.zarchiver;

import g0.i;
import h0.h;
import java.util.ArrayList;
import q0.g;

public final class d {

    public boolean f1682b;

    public final b[] f1686f;

    public g f1687g;

    public char f1681a = 0;

    public final a f1683c = new a(this);

    public final ArrayList<i> f1684d = new ArrayList<>(2);

    public int f1685e = 0;

    public d() {
        b[] bVarArr = new b[2];
        this.f1686f = bVarArr;
        bVarArr[0] = new b(0);
        this.f1687g = null;
    }

    public final void a(int i2, int i3, boolean z2) {
        int i4;
        i[] iVarArr;
        if (this.f1684d.isEmpty()) {
            return;
        }
        synchronized (this.f1684d) {
            iVarArr = (i[]) this.f1684d.toArray(new i[0]);
        }
        for (i iVar : iVarArr) {
            if ((i2 == -1 || iVar.f962c == i2) && ((i3 == -1 || iVar.l() == i3) && (!z2 || a0.c.K(iVar.f963d, 65536)))) {
                try {
                    iVar.e();
                } catch (Exception unused) {
                }
            }
        }
    }

    public final i b(int i2, int i3, int i4) {
        synchronized (this.f1684d) {
            for (i iVar : this.f1684d) {
                if (i2 == -1 || iVar.f962c == i2) {
                    if (i3 == -1 || iVar.l() == i3) {
                        if (i4 == -1 || iVar.k() == i4) {
                            return iVar;
                        }
                    }
                }
            }
            return null;
        }
    }

    public final b c() {
        return this.f1686f[this.f1685e];
    }

    public final h d() {
        return this.f1686f[this.f1685e].f1653c;
    }

    public final byte e() {
        return this.f1686f[this.f1685e].f();
    }

    public final boolean f(int i2) {
        return this.f1686f[this.f1685e].g(i2);
    }

    public final void g(char c2) {
        this.f1681a = c2;
        this.f1682b = false;
    }
}
