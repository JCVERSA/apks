package defpackage;

import java.util.Iterator;
import java.util.Map;

public final class v4i extends v5i {
    public v4i(Iterator it) {
        super(it);
    }

    @Override
    public final Object a(Object obj) {
        return ((Map.Entry) obj).getValue();
    }
}
