package androidx.media3.common;

import android.util.SparseBooleanArray;
import androidx.media3.common.util.a1;

public final class p {

    private final SparseBooleanArray f9807a;

    public static final class b {

        private final SparseBooleanArray f9808a = new SparseBooleanArray();

        private boolean f9809b;

        public b a(int i10) {
            androidx.media3.common.util.a.g(!this.f9809b);
            this.f9808a.append(i10, true);
            return this;
        }

        public b b(p pVar) {
            for (int i10 = 0; i10 < pVar.d(); i10++) {
                a(pVar.c(i10));
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

        public p e() {
            androidx.media3.common.util.a.g(!this.f9809b);
            this.f9809b = true;
            return new p(this.f9808a);
        }
    }

    public boolean a(int i10) {
        return this.f9807a.get(i10);
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
        androidx.media3.common.util.a.c(i10, 0, d());
        return this.f9807a.keyAt(i10);
    }

    public int d() {
        return this.f9807a.size();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        if (a1.f10038a >= 24) {
            return this.f9807a.equals(pVar.f9807a);
        }
        if (d() != pVar.d()) {
            return false;
        }
        for (int i10 = 0; i10 < d(); i10++) {
            if (c(i10) != pVar.c(i10)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        if (a1.f10038a >= 24) {
            return this.f9807a.hashCode();
        }
        int iD = d();
        for (int i10 = 0; i10 < d(); i10++) {
            iD = (iD * 31) + c(i10);
        }
        return iD;
    }

    private p(SparseBooleanArray sparseBooleanArray) {
        this.f9807a = sparseBooleanArray;
    }
}
