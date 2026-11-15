package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class eji {
    public static final eri b = eri.b(new byte[0]);
    public final Map a;

    public final Iterable a(byte[] bArr) {
        Map map = this.a;
        List list = (List) map.get(b);
        List list2 = bArr.length >= 5 ? (List) map.get(eri.c(bArr, 0, 5)) : null;
        if (list == null && list2 == null) {
            return new ArrayList();
        }
        if (list == null) {
            return list2;
        }
        return list2 == null ? list : new aji(this, list2, list);
    }
}
