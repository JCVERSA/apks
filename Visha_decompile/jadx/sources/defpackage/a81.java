package defpackage;

import java.util.Enumeration;
import java.util.Iterator;

public abstract class a81 extends z71 {

    public static final class a implements Iterator, qe5 {
        public final Enumeration b;

        public a(Enumeration enumeration) {
            this.b = enumeration;
        }

        @Override
        public boolean hasNext() {
            return this.b.hasMoreElements();
        }

        @Override
        public Object next() {
            return this.b.nextElement();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public static Iterator y(Enumeration enumeration) {
        y45.j(enumeration, "<this>");
        return new a(enumeration);
    }
}
