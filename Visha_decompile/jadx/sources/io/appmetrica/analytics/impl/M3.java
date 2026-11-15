package io.appmetrica.analytics.impl;

import defpackage.y45;
import java.util.List;

public final class M3 implements V7 {
    public final L3 a;
    public final List b;

    public M3(L3 l3, List<L3> list) {
        this.a = l3;
        this.b = list;
    }

    public final M3 a(L3 l3, List<L3> list) {
        return new M3(l3, list);
    }

    @Override
    public final Object b() {
        return this.a;
    }

    public final L3 c() {
        return this.a;
    }

    public final List<L3> d() {
        return this.b;
    }

    public final L3 e() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof M3)) {
            return false;
        }
        M3 m3 = (M3) obj;
        return y45.e(this.a, m3.a) && y45.e(this.b, m3.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "ClidsInfo(chosen=" + this.a + ", candidates=" + this.b + ')';
    }

    public static M3 a(M3 m3, L3 l3, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            l3 = m3.a;
        }
        if ((i & 2) != 0) {
            list = m3.b;
        }
        m3.getClass();
        return new M3(l3, list);
    }

    @Override
    public final List<L3> a() {
        return this.b;
    }
}
