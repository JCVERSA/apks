package androidx.core.util;

import android.util.LongSparseArray;
import kotlin.collections.LongIterator;

public abstract class c {

    public static final class a extends LongIterator {

        private int f7956a;

        final LongSparseArray f7957b;

        a(LongSparseArray longSparseArray) {
            this.f7957b = longSparseArray;
        }

        @Override
        public long a() {
            LongSparseArray longSparseArray = this.f7957b;
            int i10 = this.f7956a;
            this.f7956a = i10 + 1;
            return longSparseArray.keyAt(i10);
        }

        @Override
        public boolean hasNext() {
            return this.f7956a < this.f7957b.size();
        }
    }

    public static final LongIterator a(LongSparseArray longSparseArray) {
        return new a(longSparseArray);
    }
}
