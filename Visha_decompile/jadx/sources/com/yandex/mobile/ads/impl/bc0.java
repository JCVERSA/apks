package com.yandex.mobile.ads.impl;

import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;

public final class bc0 {
    private final SparseBooleanArray a;

    public final int b(int i) {
        hg.a(i, this.a.size());
        return this.a.keyAt(i);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bc0)) {
            return false;
        }
        bc0 bc0Var = (bc0) obj;
        if (f92.a >= 24) {
            return this.a.equals(bc0Var.a);
        }
        if (this.a.size() != bc0Var.a.size()) {
            return false;
        }
        for (int i = 0; i < this.a.size(); i++) {
            if (b(i) != bc0Var.b(i)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        if (f92.a >= 24) {
            return this.a.hashCode();
        }
        int size = this.a.size();
        for (int i = 0; i < this.a.size(); i++) {
            size = (size * 31) + b(i);
        }
        return size;
    }

    private bc0(SparseBooleanArray sparseBooleanArray) {
        this.a = sparseBooleanArray;
    }

    public final boolean a(int i) {
        return this.a.get(i);
    }

    public static final class a {
        private final SparseBooleanArray a = new SparseBooleanArray();
        private boolean b;

        public final a a(int i) {
            if (this.b) {
                throw new IllegalStateException();
            }
            this.a.append(i, true);
            return this;
        }

        public final void a(bc0 bc0Var) {
            for (int i = 0; i < bc0Var.a.size(); i++) {
                a(bc0Var.b(i));
            }
        }

        public final bc0 a() {
            if (!this.b) {
                this.b = true;
                return new bc0(this.a);
            }
            throw new IllegalStateException();
        }
    }

    public final int a() {
        return this.a.size();
    }
}
