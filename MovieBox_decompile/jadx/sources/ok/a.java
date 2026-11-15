package ok;

import com.transsion.home.bean.HomePreferencesConfig;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private final int f67828a;

    private final HomePreferencesConfig f67829b;

    public a(int i10, HomePreferencesConfig config) {
        Intrinsics.h(config, "config");
        this.f67828a = i10;
        this.f67829b = config;
    }

    public final HomePreferencesConfig a() {
        return this.f67829b;
    }

    public final int b() {
        return this.f67828a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f67828a == aVar.f67828a && Intrinsics.c(this.f67829b, aVar.f67829b);
    }

    public int hashCode() {
        return (this.f67828a * 31) + this.f67829b.hashCode();
    }

    public String toString() {
        return "HomePreferencesInsertInstruction(position=" + this.f67828a + ", config=" + this.f67829b + ")";
    }
}
