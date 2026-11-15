package defpackage;

import java.util.NoSuchElementException;

public abstract class w3 extends dgb {
    public Object b;

    public w3(Object obj) {
        this.b = obj;
    }

    public abstract Object a(Object obj);

    @Override
    public final boolean hasNext() {
        return this.b != null;
    }

    @Override
    public final Object next() {
        Object obj = this.b;
        if (obj == null) {
            throw new NoSuchElementException();
        }
        this.b = a(obj);
        return obj;
    }
}
