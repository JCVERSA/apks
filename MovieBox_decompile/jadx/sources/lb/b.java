package lb;

import android.os.Bundle;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    private final Bundle f65675a = new Bundle();

    public final Bundle a() {
        return this.f65675a;
    }

    public final void b(String key, long j10) {
        Intrinsics.h(key, "key");
        this.f65675a.putLong(key, j10);
    }

    public final void c(String key, String value) {
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        this.f65675a.putString(key, value);
    }
}
