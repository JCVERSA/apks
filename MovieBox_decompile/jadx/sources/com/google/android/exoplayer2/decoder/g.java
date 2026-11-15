package com.google.android.exoplayer2.decoder;

import com.google.android.exoplayer2.p1;

public final class g {

    public final String f24248a;

    public final p1 f24249b;

    public final p1 f24250c;

    public final int f24251d;

    public final int f24252e;

    public g(String str, p1 p1Var, p1 p1Var2, int i10, int i11) {
        com.google.android.exoplayer2.util.a.a(i10 == 0 || i11 == 0);
        this.f24248a = com.google.android.exoplayer2.util.a.d(str);
        this.f24249b = (p1) com.google.android.exoplayer2.util.a.e(p1Var);
        this.f24250c = (p1) com.google.android.exoplayer2.util.a.e(p1Var2);
        this.f24251d = i10;
        this.f24252e = i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        return this.f24251d == gVar.f24251d && this.f24252e == gVar.f24252e && this.f24248a.equals(gVar.f24248a) && this.f24249b.equals(gVar.f24249b) && this.f24250c.equals(gVar.f24250c);
    }

    public int hashCode() {
        return ((((((((527 + this.f24251d) * 31) + this.f24252e) * 31) + this.f24248a.hashCode()) * 31) + this.f24249b.hashCode()) * 31) + this.f24250c.hashCode();
    }
}
