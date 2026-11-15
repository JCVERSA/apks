package com.google.android.exoplayer2.util;

import android.util.SparseBooleanArray;

public final class m {

    private final SparseBooleanArray f26835a;

    public static final class b {

        private final SparseBooleanArray f26836a = new SparseBooleanArray();

        private boolean f26837b;

        public b a(int i10) {
            com.google.android.exoplayer2.util.a.g(!this.f26837b);
            this.f26836a.append(i10, true);
            return this;
        }

        public b b(m mVar) {
            for (int i10 = 0; i10 < mVar.d(); i10++) {
                a(mVar.c(i10));
            }
            return this;
        }

        public b c(int... iArr) {
            for (int i10 : iArr) {
                a(i10);
            }
            return this;
        }

        public b d(int i10, boolean z10) {
            return z10 ? a(i10) : this;
        }

        public m e() {
            com.google.android.exoplayer2.util.a.g(!this.f26837b);
            this.f26837b = true;
            return new m(this.f26836a);
        }
    }

    public boolean a(int i10) {
        return this.f26835a.get(i10);
    }

    public boolean b(int... iArr) {
        for (int i10 : iArr) {
            if (a(i10)) {
                return true;
            }
        }
        return false;
    }

    public int c(int i10) {
        com.google.android.exoplayer2.util.a.c(i10, 0, d());
        return this.f26835a.keyAt(i10);
    }

    public int d() {
        return this.f26835a.size();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (p0.f26854a >= 24) {
            return this.f26835a.equals(mVar.f26835a);
        }
        if (d() != mVar.d()) {
            return false;
        }
        for (int i10 = 0; i10 < d(); i10++) {
            if (c(i10) != mVar.c(i10)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        if (p0.f26854a >= 24) {
            return this.f26835a.hashCode();
        }
        int iD = d();
        for (int i10 = 0; i10 < d(); i10++) {
            iD = (iD * 31) + c(i10);
        }
        return iD;
    }

    private m(SparseBooleanArray sparseBooleanArray) {
        this.f26835a = sparseBooleanArray;
    }
}
