package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.StartupParamsCallback;

public final class C2797pl implements H6 {
    public final StartupParamsCallback a;
    public final C2822ql b;

    public C2797pl(C2822ql c2822ql, StartupParamsCallback startupParamsCallback) {
        this.b = c2822ql;
        this.a = startupParamsCallback;
    }

    @Override
    public final void a(int i, Bundle bundle) {
        this.b.b(bundle, this.a);
    }
}
