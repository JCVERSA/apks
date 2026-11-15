package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Pair;

public final class i82 implements pc9 {
    public final CharSequence a;
    public final int b;
    public final int c;
    public final s74 d;

    public static final class a implements Iterator, qe5 {
        public int b = -1;
        public int c;
        public int d;
        public u15 e;
        public int f;

        public a() {
            int iK = wn8.k(i82.this.b, 0, i82.this.a.length());
            this.c = iK;
            this.d = iK;
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0031 A[ADDED_TO_REGION, REMOVE] */
        /* JADX WARN: Code duplicated, block: B:17:0x0098  */
        /* JADX WARN: Code duplicated, block: B:9:0x0023  */
        private final void b() {
            Pair pair;
            if (this.d < 0) {
                this.b = 0;
                this.e = null;
                return;
            }
            if (i82.this.c > 0) {
                int i = this.f + 1;
                this.f = i;
                if (i >= i82.this.c) {
                    this.e = new u15(this.c, j1a.g0(i82.this.a));
                    this.d = -1;
                } else if (this.d > i82.this.a.length() && (pair = (Pair) i82.this.d.invoke(i82.this.a, Integer.valueOf(this.d))) != null) {
                    int iIntValue = ((Number) pair.component1()).intValue();
                    int iIntValue2 = ((Number) pair.component2()).intValue();
                    this.e = wn8.q(this.c, iIntValue);
                    int i2 = iIntValue + iIntValue2;
                    this.c = i2;
                    this.d = i2 + (iIntValue2 == 0 ? 1 : 0);
                } else {
                    this.e = new u15(this.c, j1a.g0(i82.this.a));
                    this.d = -1;
                }
            } else if (this.d > i82.this.a.length()) {
                this.e = new u15(this.c, j1a.g0(i82.this.a));
                this.d = -1;
            } else {
                int iIntValue3 = ((Number) pair.component1()).intValue();
                int iIntValue4 = ((Number) pair.component2()).intValue();
                this.e = wn8.q(this.c, iIntValue3);
                int i3 = iIntValue3 + iIntValue4;
                this.c = i3;
                this.d = i3 + (iIntValue4 == 0 ? 1 : 0);
            }
            this.b = 1;
        }

        @Override
        public u15 next() {
            if (this.b == -1) {
                b();
            }
            if (this.b == 0) {
                throw new NoSuchElementException();
            }
            u15 u15Var = this.e;
            y45.h(u15Var, "null cannot be cast to non-null type kotlin.ranges.IntRange");
            this.e = null;
            this.b = -1;
            return u15Var;
        }

        @Override
        public boolean hasNext() {
            if (this.b == -1) {
                b();
            }
            return this.b == 1;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public i82(CharSequence charSequence, int i, int i2, s74 s74Var) {
        y45.j(charSequence, "input");
        y45.j(s74Var, "getNextMatch");
        this.a = charSequence;
        this.b = i;
        this.c = i2;
        this.d = s74Var;
    }

    @Override
    public Iterator iterator() {
        return new a();
    }
}
