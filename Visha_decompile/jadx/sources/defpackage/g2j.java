package defpackage;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

public final class g2j implements Iterator {
    public int b;
    public boolean c;
    public Iterator d;
    public final o2j e;

    public g2j(o2j o2jVar, l2j l2jVar) {
        Objects.requireNonNull(o2jVar);
        this.e = o2jVar;
        this.b = -1;
    }

    public final Iterator a() {
        if (this.d == null) {
            this.d = this.e.d.entrySet().iterator();
        }
        return this.d;
    }

    @Override
    public final boolean hasNext() {
        int i = this.b + 1;
        o2j o2jVar = this.e;
        if (i >= o2jVar.c) {
            return !o2jVar.d.isEmpty() && a().hasNext();
        }
        return true;
    }

    @Override
    public final Object next() {
        this.c = true;
        int i = this.b + 1;
        this.b = i;
        o2j o2jVar = this.e;
        return i < o2jVar.c ? (d2j) o2jVar.b[i] : (Map.Entry) a().next();
    }

    @Override
    public final void remove() {
        if (!this.c) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.c = false;
        o2j o2jVar = this.e;
        o2jVar.q();
        int i = this.b;
        if (i >= o2jVar.c) {
            a().remove();
        } else {
            this.b = i - 1;
            o2jVar.o(i);
        }
    }
}
