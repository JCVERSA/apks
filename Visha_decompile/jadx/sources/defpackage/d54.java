package defpackage;

import java.util.NoSuchElementException;
import java.util.Queue;

public abstract class d54 extends u44 implements Queue {
    @Override
    public abstract Queue f();

    @Override
    public Object element() {
        return f().element();
    }

    @Override
    public Object peek() {
        return f().peek();
    }

    @Override
    public Object poll() {
        return f().poll();
    }

    @Override
    public Object remove() {
        return f().remove();
    }

    public boolean standardOffer(Object obj) {
        try {
            return add(obj);
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    public Object standardPeek() {
        try {
            return element();
        } catch (NoSuchElementException unused) {
            return null;
        }
    }

    public Object standardPoll() {
        try {
            return remove();
        } catch (NoSuchElementException unused) {
            return null;
        }
    }
}
