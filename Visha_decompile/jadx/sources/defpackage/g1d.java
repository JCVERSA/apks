package defpackage;

import java.util.Iterator;
import java.util.Set;

public class g1d extends h1d {
    public final Set b;
    public final Set c;

    public class a implements Iterator {
        public Iterator b;
        public Iterator c;
        public boolean d;

        public a() {
        }

        @Override
        public boolean hasNext() {
            if (!this.d) {
                if (this.b == null) {
                    this.b = g1d.this.b.iterator();
                }
                if (this.b.hasNext()) {
                    return true;
                }
                this.c = g1d.this.c.iterator();
                this.b = null;
                this.d = true;
            }
            return this.c.hasNext();
        }

        @Override
        public Object next() {
            if (!this.d) {
                if (this.b == null) {
                    this.b = g1d.this.b.iterator();
                }
                if (this.b.hasNext()) {
                    return this.b.next();
                }
                this.c = g1d.this.c.iterator();
                this.b = null;
                this.d = true;
            }
            return this.c.next();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public g1d(Set set, Set set2) {
        this.b = set;
        this.c = set2;
    }

    @Override
    public boolean contains(Object obj) {
        return this.b.contains(obj) || this.c.contains(obj);
    }

    @Override
    public Iterator iterator() {
        return new a();
    }

    @Override
    public int size() {
        return this.b.size() + this.c.size();
    }
}
