package defpackage;

import java.util.LinkedList;

public abstract class cc7 {
    public final LinkedList a = new LinkedList();

    public Object a() {
        return this.a.poll();
    }

    public void b() {
        this.a.clear();
    }

    public final boolean c(Object obj) {
        return this.a.contains(obj);
    }

    public boolean d(Object obj) {
        if (c(obj)) {
            return false;
        }
        return this.a.add(obj);
    }
}
