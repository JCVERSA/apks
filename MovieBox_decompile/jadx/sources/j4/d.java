package j4;

import kotlin.jvm.internal.Intrinsics;

public final class d {

    private final String f62952a;

    private final Long f62953b;

    public d(String key, Long l10) {
        Intrinsics.h(key, "key");
        this.f62952a = key;
        this.f62953b = l10;
    }

    public final String a() {
        return this.f62952a;
    }

    public final Long b() {
        return this.f62953b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return Intrinsics.c(this.f62952a, dVar.f62952a) && Intrinsics.c(this.f62953b, dVar.f62953b);
    }

    public int hashCode() {
        int iHashCode = this.f62952a.hashCode() * 31;
        Long l10 = this.f62953b;
        return iHashCode + (l10 == null ? 0 : l10.hashCode());
    }

    public String toString() {
        return "Preference(key=" + this.f62952a + ", value=" + this.f62953b + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public d(String key, boolean z10) {
        this(key, Long.valueOf(z10 ? 1L : 0L));
        Intrinsics.h(key, "key");
    }
}
