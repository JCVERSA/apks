package androidx.core.app;

import android.content.res.Configuration;
import kotlin.jvm.internal.Intrinsics;

public final class x {

    private final boolean f7816a;

    private Configuration f7817b;

    public x(boolean z10) {
        this.f7816a = z10;
    }

    public final boolean a() {
        return this.f7816a;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public x(boolean z10, Configuration newConfig) {
        this(z10);
        Intrinsics.h(newConfig, "newConfig");
        this.f7817b = newConfig;
    }
}
