package androidx.core.util;

import android.util.SparseArray;
import kotlin.collections.IntIterator;

public abstract class k {

    public static final class a extends IntIterator {

        private int f7963a;

        final SparseArray f7964b;

        a(SparseArray sparseArray) {
            this.f7964b = sparseArray;
        }

        @Override
        public int a() {
            SparseArray sparseArray = this.f7964b;
            int i10 = this.f7963a;
            this.f7963a = i10 + 1;
            return sparseArray.keyAt(i10);
        }

        @Override
        public boolean hasNext() {
            return this.f7963a < this.f7964b.size();
        }
    }

    public static final IntIterator a(SparseArray sparseArray) {
        return new a(sparseArray);
    }
}
