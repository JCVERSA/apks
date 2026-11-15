package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class xu {
    private final m80 a;
    private final List<l62> b;
    private final qr0 c;

    public static final class a {
        private m80 a;
        private List<l62> b;
        private qr0 c;

        public final void a(m80 m80Var) {
            this.a = m80Var;
        }

        public final void a(qr0 qr0Var) {
            this.c = qr0Var;
        }

        public final void a(List list) {
            this.b = list;
        }

        public final xu a() {
            return new xu(this.a, this.b, this.c);
        }
    }

    public xu(m80 m80Var, List<l62> list, qr0 qr0Var) {
        this.a = m80Var;
        this.b = list;
        this.c = qr0Var;
    }

    public final m80 a() {
        return this.a;
    }

    public final qr0 b() {
        return this.c;
    }

    public final List<l62> c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xu)) {
            return false;
        }
        xu xuVar = (xu) obj;
        return y45.e(this.a, xuVar.a) && y45.e(this.b, xuVar.b) && y45.e(this.c, xuVar.c);
    }

    public final int hashCode() {
        m80 m80Var = this.a;
        int iHashCode = (m80Var == null ? 0 : m80Var.hashCode()) * 31;
        List<l62> list = this.b;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        qr0 qr0Var = this.c;
        return iHashCode2 + (qr0Var != null ? qr0Var.hashCode() : 0);
    }

    public final String toString() {
        return "CreativeExtensions(falseClick=" + this.a + ", trackingEvents=" + this.b + ", linearCreativeInfo=" + this.c + ")";
    }
}
