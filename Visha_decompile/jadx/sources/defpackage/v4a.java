package defpackage;

import java.util.List;

public abstract class v4a {
    public static m2a a(long j, List list) {
        if (list != null && !list.isEmpty()) {
            int size = list.size() - 1;
            int i = 0;
            while (i <= size) {
                int i2 = (i + size) / 2;
                m2a m2aVar = (m2a) list.get(i2);
                int i3 = m2aVar.b.a;
                if (j >= i3) {
                    int i4 = m2aVar.c.a;
                    if (j > i4) {
                        if (j < i3) {
                            return m2aVar;
                        }
                        i = i2 + 1;
                    } else if (j >= i3 && j <= i4) {
                        return m2aVar;
                    }
                } else {
                    if (j > m2aVar.c.a) {
                        return m2aVar;
                    }
                    size = i2 - 1;
                }
            }
        }
        return null;
    }
}
