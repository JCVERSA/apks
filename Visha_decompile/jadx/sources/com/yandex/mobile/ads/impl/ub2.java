package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class ub2 {
    private final List<u70> a;
    private final List<l62> b;

    private ub2(List<u70> list, List<l62> list2) {
        this.a = list;
        this.b = list2;
    }

    public final List<u70> a() {
        return this.a;
    }

    public final List<l62> b() {
        return this.b;
    }

    public static final class a {
        private List<u70> a = defpackage.y71.k();
        private List<l62> b = defpackage.y71.k();

        public final a a(List<u70> list) {
            y45.j(list, "extensions");
            this.a = list;
            return this;
        }

        public final a b(List<l62> list) {
            y45.j(list, "trackingEvents");
            this.b = list;
            return this;
        }

        public final ub2 a() {
            return new ub2(this.a, this.b, 0);
        }
    }

    public ub2(List list, List list2, int i) {
        this(list, list2);
    }
}
