package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.C;

public interface ex1 {

    public static final class a {
        public final gx1 a;
        public final gx1 b;

        public a(gx1 gx1Var) {
            this(gx1Var, gx1Var);
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.a.equals(aVar.a) && this.b.equals(aVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            String str;
            StringBuilder sb = new StringBuilder("[");
            sb.append(this.a);
            if (this.a.equals(this.b)) {
                str = "";
            } else {
                str = ", " + this.b;
            }
            sb.append(str);
            sb.append("]");
            return sb.toString();
        }

        public a(gx1 gx1Var, gx1 gx1Var2) {
            this.a = (gx1) hg.a(gx1Var);
            this.b = (gx1) hg.a(gx1Var2);
        }
    }

    public static class b implements ex1 {
        private final long a;
        private final a b;

        public b() {
            this(C.TIME_UNSET, 0L);
        }

        @Override
        public final boolean b() {
            return false;
        }

        @Override
        public final long c() {
            return this.a;
        }

        public b(long j, long j2) {
            this.a = j;
            this.b = new a(j2 == 0 ? gx1.c : new gx1(0L, j2));
        }

        @Override
        public final a b(long j) {
            return this.b;
        }
    }

    a b(long j);

    boolean b();

    long c();
}
