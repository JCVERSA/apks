package defpackage;

import java.util.Iterator;

public abstract class z44 extends c54 implements Iterator {
    public abstract Iterator f();

    @Override
    public boolean hasNext() {
        return f().hasNext();
    }

    public Object next() {
        return f().next();
    }
}
