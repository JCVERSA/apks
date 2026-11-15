package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class oa0 implements x {
    private final String a;
    private final List<a> b;

    public static final class a {
        private final String a;
        private final String b;

        public a(String str, String str2) {
            y45.j(str, "title");
            y45.j(str2, "url");
            this.a = str;
            this.b = str2;
        }

        public final String a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(this.a, aVar.a) && y45.e(this.b, aVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "Item(title=" + this.a + ", url=" + this.b + ")";
        }
    }

    public oa0(String str, ArrayList arrayList) {
        y45.j(str, "actionType");
        y45.j(arrayList, "items");
        this.a = str;
        this.b = arrayList;
    }

    @Override
    public final String a() {
        return this.a;
    }

    public final List<a> c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof oa0)) {
            return false;
        }
        oa0 oa0Var = (oa0) obj;
        return y45.e(this.a, oa0Var.a) && y45.e(this.b, oa0Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "FeedbackAction(actionType=" + this.a + ", items=" + this.b + ")";
    }
}
