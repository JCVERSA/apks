package androidx.collection;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

public abstract class a1 {

    public static final class a implements Iterator, KMappedMarker {

        private int f1952a;

        final y0 f1953b;

        a(y0 y0Var) {
            this.f1953b = y0Var;
        }

        @Override
        public boolean hasNext() {
            return this.f1952a < this.f1953b.p();
        }

        @Override
        public Object next() {
            y0 y0Var = this.f1953b;
            int i10 = this.f1952a;
            this.f1952a = i10 + 1;
            return y0Var.q(i10);
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public static final Iterator a(y0 y0Var) {
        Intrinsics.h(y0Var, "<this>");
        return new a(y0Var);
    }
}
