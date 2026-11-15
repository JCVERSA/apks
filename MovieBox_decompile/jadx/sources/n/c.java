package n;

import java.util.LinkedHashMap;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    private final LinkedHashMap f66845a;

    public c() {
        this(0, 0.0f, 3, null);
    }

    public final Object a(Object key) {
        Intrinsics.h(key, "key");
        return this.f66845a.get(key);
    }

    public final Set b() {
        Set setEntrySet = this.f66845a.entrySet();
        Intrinsics.g(setEntrySet, "map.entries");
        return setEntrySet;
    }

    public final boolean c() {
        return this.f66845a.isEmpty();
    }

    public final Object d(Object key, Object value) {
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        return this.f66845a.put(key, value);
    }

    public final Object e(Object key) {
        Intrinsics.h(key, "key");
        return this.f66845a.remove(key);
    }

    public c(int i10, float f10) {
        this.f66845a = new LinkedHashMap(i10, f10, true);
    }

    public c(int i10, float f10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 16 : i10, (i11 & 2) != 0 ? 0.75f : f10);
    }
}
