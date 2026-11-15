package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public abstract class zd2 {

    public static final class a extends zd2 {
        private final sb2 a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(sb2 sb2Var) {
            super(0);
            y45.j(sb2Var, "error");
            this.a = sb2Var;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && y45.e(this.a, ((a) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "Error(error=" + this.a + ")";
        }
    }

    public static final class b extends zd2 {
        private final List<mb2> a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(List<mb2> list) {
            super(0);
            y45.j(list, "result");
            this.a = list;
        }

        public final List<mb2> a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && y45.e(this.a, ((b) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "Success(result=" + this.a + ")";
        }
    }

    private zd2() {
    }

    public zd2(int i) {
        this();
    }
}
