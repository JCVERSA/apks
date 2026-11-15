package defpackage;

import com.google.common.base.Optional;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import java.util.Iterator;

public abstract class a24 implements Iterable {
    public final Optional b;

    public class a extends a24 {
        public final Iterable c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Iterable iterable, Iterable iterable2) {
            super(iterable);
            this.c = iterable2;
        }

        @Override
        public Iterator iterator() {
            return this.c.iterator();
        }
    }

    public class b extends a24 {
        public final Iterable[] c;

        public class a extends a3 {
            public a(int i) {
                super(i);
            }

            @Override
            public Iterator a(int i) {
                return b.this.c[i].iterator();
            }
        }

        public b(Iterable[] iterableArr) {
            this.c = iterableArr;
        }

        @Override
        public Iterator iterator() {
            return Iterators.e(new a(this.c.length));
        }
    }

    public a24() {
        this.b = Optional.absent();
    }

    public static a24 b(Iterable iterable, Iterable iterable2) {
        return c(iterable, iterable2);
    }

    public static a24 c(Iterable... iterableArr) {
        for (Iterable iterable : iterableArr) {
            xd8.o(iterable);
        }
        return new b(iterableArr);
    }

    public static a24 i(Iterable iterable) {
        return iterable instanceof a24 ? (a24) iterable : new a(iterable, iterable);
    }

    public final a24 f(he8 he8Var) {
        return i(v55.e(j(), he8Var));
    }

    public final Iterable j() {
        return (Iterable) this.b.or(this);
    }

    public final ImmutableSet k() {
        return ImmutableSet.copyOf(j());
    }

    public String toString() {
        return v55.s(j());
    }

    public a24(Iterable iterable) {
        this.b = Optional.of(iterable);
    }
}
