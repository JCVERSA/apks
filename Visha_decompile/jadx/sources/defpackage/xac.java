package defpackage;

import java.util.ArrayList;
import java.util.function.Supplier;

public final class xac implements Supplier {
    @Override
    public final Object get() {
        return new ArrayList();
    }
}
