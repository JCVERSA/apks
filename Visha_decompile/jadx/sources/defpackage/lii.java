package defpackage;

import java.util.concurrent.atomic.AtomicReference;

public final class lii {
    public static final lii b = new lii();
    public static final jii c = new jii(null);
    public final AtomicReference a = new AtomicReference();

    public static lii b() {
        return b;
    }

    public final zhi a() {
        zhi zhiVar = (zhi) this.a.get();
        return zhiVar == null ? c : zhiVar;
    }
}
