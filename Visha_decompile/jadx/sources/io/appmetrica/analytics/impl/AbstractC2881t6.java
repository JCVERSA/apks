package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.ICrashTransformer;

public abstract class AbstractC2881t6 implements Ma {
    public final InterfaceC2856s6 a;
    public final ICrashTransformer b;
    public final T9 c;

    public AbstractC2881t6(InterfaceC2856s6 interfaceC2856s6, ICrashTransformer iCrashTransformer, T9 t9) {
        this.a = interfaceC2856s6;
        this.b = iCrashTransformer;
        this.c = t9;
    }

    @Override
    public final void a(@Nullable Throwable th, @NonNull S s) {
        if (this.a.a(th)) {
            ICrashTransformer iCrashTransformer = this.b;
            if (iCrashTransformer == null || th == null || (th = iCrashTransformer.process(th)) != null) {
                C2749nn c2749nnA = AbstractC2824qn.a(th, s, null, (String) this.c.b.a(), (Boolean) this.c.c.a());
                C2663kc c2663kc = (C2663kc) ((C2892th) this).d;
                c2663kc.a.a().b(c2663kc.b).a(c2749nnA);
            }
        }
    }

    @VisibleForTesting
    public final InterfaceC2856s6 b() {
        return this.a;
    }

    @Nullable
    @VisibleForTesting
    public final ICrashTransformer a() {
        return this.b;
    }
}
