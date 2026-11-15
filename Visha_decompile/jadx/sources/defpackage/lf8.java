package defpackage;

import java.lang.reflect.Array;
import java.util.AbstractList;

public class lf8 extends AbstractList {
    public final Object b;

    public lf8(Object obj) {
        this.b = obj;
    }

    @Override
    public Object get(int i) {
        return Array.get(this.b, i);
    }

    @Override
    public int size() {
        return Array.getLength(this.b);
    }
}
