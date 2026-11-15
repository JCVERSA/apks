package defpackage;

import java.util.Iterator;
import java.util.Set;

public class l9d implements Iterator {
    public final Iterator[] b;
    public int c = 0;

    public l9d(Set... setArr) {
        this.b = new Iterator[setArr.length];
        for (int i = 0; i < setArr.length; i++) {
            this.b[i] = setArr[i].iterator();
        }
    }

    @Override
    public boolean hasNext() {
        if (this.b[this.c].hasNext()) {
            return true;
        }
        int i = this.c + 1;
        this.c = i;
        Iterator[] itArr = this.b;
        return i < itArr.length && itArr[i].hasNext();
    }

    @Override
    public Object next() {
        return this.b[this.c].next();
    }

    @Override
    public void remove() {
        this.b[this.c].remove();
    }
}
