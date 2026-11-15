package defpackage;

import java.util.Iterator;

public abstract class gd9 {

    public static final class a implements Iterator, qe5 {
        public int b;
        public final kotlinx.serialization.descriptors.a c;

        public a(kotlinx.serialization.descriptors.a aVar) {
            this.c = aVar;
            this.b = aVar.e();
        }

        @Override
        public kotlinx.serialization.descriptors.a next() {
            kotlinx.serialization.descriptors.a aVar = this.c;
            int iE = aVar.e();
            int i = this.b;
            this.b = i - 1;
            return aVar.d(iE - i);
        }

        @Override
        public boolean hasNext() {
            return this.b > 0;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public static final class b implements Iterator, qe5 {
        public int b;
        public final kotlinx.serialization.descriptors.a c;

        public b(kotlinx.serialization.descriptors.a aVar) {
            this.c = aVar;
            this.b = aVar.e();
        }

        @Override
        public String next() {
            kotlinx.serialization.descriptors.a aVar = this.c;
            int iE = aVar.e();
            int i = this.b;
            this.b = i - 1;
            return aVar.f(iE - i);
        }

        @Override
        public boolean hasNext() {
            return this.b > 0;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public static final class c implements Iterable, qe5 {
        public final kotlinx.serialization.descriptors.a b;

        public c(kotlinx.serialization.descriptors.a aVar) {
            this.b = aVar;
        }

        @Override
        public Iterator iterator() {
            return new a(this.b);
        }
    }

    public static final class d implements Iterable, qe5 {
        public final kotlinx.serialization.descriptors.a b;

        public d(kotlinx.serialization.descriptors.a aVar) {
            this.b = aVar;
        }

        @Override
        public Iterator iterator() {
            return new b(this.b);
        }
    }

    public static final Iterable a(kotlinx.serialization.descriptors.a aVar) {
        y45.j(aVar, "<this>");
        return new c(aVar);
    }

    public static final Iterable b(kotlinx.serialization.descriptors.a aVar) {
        y45.j(aVar, "<this>");
        return new d(aVar);
    }
}
