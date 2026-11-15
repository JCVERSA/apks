package defpackage;

import android.util.SparseBooleanArray;

public final class enj {
    public final SparseBooleanArray a;

    public final int a(int i) {
        SparseBooleanArray sparseBooleanArray = this.a;
        n7g.a(i, 0, sparseBooleanArray.size());
        return sparseBooleanArray.keyAt(i);
    }

    public final int b() {
        return this.a.size();
    }

    public final boolean c(int i) {
        return this.a.get(i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof enj)) {
            return false;
        }
        enj enjVar = (enj) obj;
        if (kfh.a >= 24) {
            return this.a.equals(enjVar.a);
        }
        SparseBooleanArray sparseBooleanArray = this.a;
        if (sparseBooleanArray.size() != enjVar.a.size()) {
            return false;
        }
        for (int i = 0; i < sparseBooleanArray.size(); i++) {
            if (a(i) != enjVar.a(i)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        if (kfh.a >= 24) {
            return this.a.hashCode();
        }
        SparseBooleanArray sparseBooleanArray = this.a;
        int size = sparseBooleanArray.size();
        for (int i = 0; i < sparseBooleanArray.size(); i++) {
            size = (size * 31) + a(i);
        }
        return size;
    }
}
