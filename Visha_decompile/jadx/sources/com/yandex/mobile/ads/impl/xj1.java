package com.yandex.mobile.ads.impl;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

public final class xj1 {

    public static class a<T> implements wj1<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final List<? extends wj1<? super T>> b;

        @Override
        public final boolean apply(T t) {
            for (int i = 0; i < this.b.size(); i++) {
                if (!this.b.get(i).apply(t)) {
                    return false;
                }
            }
            return true;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                return this.b.equals(((a) obj).b);
            }
            return false;
        }

        public final int hashCode() {
            return this.b.hashCode() + 306654252;
        }

        public final String toString() {
            List<? extends wj1<? super T>> list = this.b;
            StringBuilder sb = new StringBuilder("Predicates.and(");
            boolean z = true;
            for (T t : list) {
                if (!z) {
                    sb.append(',');
                }
                sb.append(t);
                z = false;
            }
            sb.append(')');
            return sb.toString();
        }

        private a(List<? extends wj1<? super T>> list) {
            this.b = list;
        }
    }

    public static <T> wj1<T> a(wj1<? super T> wj1Var, wj1<? super T> wj1Var2) {
        wj1Var.getClass();
        wj1Var2.getClass();
        return new a(Arrays.asList(wj1Var, wj1Var2));
    }
}
