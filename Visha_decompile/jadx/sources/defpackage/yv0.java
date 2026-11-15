package defpackage;

import java.util.ArrayList;

public final class yv0 {
    public static final yv0 a = new yv0();
    public static ArrayList b = new ArrayList();

    public final void a(int i) {
        if (b.size() > i) {
            return;
        }
        b.ensureCapacity(i + 1);
        int size = b.size();
        if (size > i) {
            return;
        }
        while (true) {
            b.add(size, "child#" + size);
            if (size == i) {
                return;
            } else {
                size++;
            }
        }
    }

    public final String b(int i) {
        a(i);
        Object obj = b.get(i);
        y45.i(obj, "cache[index]");
        return (String) obj;
    }
}
