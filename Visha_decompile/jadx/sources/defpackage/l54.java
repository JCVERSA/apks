package defpackage;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;

public abstract class l54 extends e54 implements SortedSet {
    @Override
    public Comparator<Object> comparator() {
        return f().comparator();
    }

    @Override
    public abstract SortedSet f();

    @Override
    public Object first() {
        return f().first();
    }

    @Override
    public SortedSet<Object> headSet(Object obj) {
        return f().headSet(obj);
    }

    @Override
    public Object last() {
        return f().last();
    }

    @Override
    public boolean standardContains(Object obj) {
        try {
            return k54.f(comparator(), tailSet(obj).first(), obj) == 0;
        } catch (ClassCastException | NullPointerException | NoSuchElementException unused) {
            return false;
        }
    }

    @Override
    public boolean standardRemove(Object obj) {
        try {
            Iterator it = tailSet(obj).iterator();
            if (it.hasNext()) {
                if (k54.f(comparator(), it.next(), obj) == 0) {
                    it.remove();
                    return true;
                }
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    public SortedSet<Object> standardSubSet(Object obj, Object obj2) {
        return tailSet(obj).headSet(obj2);
    }

    @Override
    public SortedSet<Object> subSet(Object obj, Object obj2) {
        return f().subSet(obj, obj2);
    }

    @Override
    public SortedSet<Object> tailSet(Object obj) {
        return f().tailSet(obj);
    }
}
