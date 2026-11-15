package androidx.core.app;

import android.content.res.Configuration;
import kotlin.jvm.internal.Intrinsics;

public final class m {

    private final boolean f7768a;

    private Configuration f7769b;

    public m(boolean z10) {
        this.f7768a = z10;
    }

    public final boolean a() {
        return this.f7768a;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public m(boolean z10, Configuration newConfig) {
        this(z10);
        Intrinsics.h(newConfig, "newConfig");
        this.f7769b = newConfig;
    }
}
