package io.appmetrica.analytics.impl;

import androidx.annotation.MainThread;
import io.appmetrica.analytics.appsetid.internal.AppSetIdListener;
import io.appmetrica.analytics.coreapi.internal.identifiers.AppSetId;
import io.appmetrica.analytics.coreapi.internal.identifiers.AppSetIdScope;

public final class C2479d2 implements AppSetIdListener {
    public final C2504e2 a;

    public C2479d2(C2504e2 c2504e2) {
        this.a = c2504e2;
    }

    @Override
    @MainThread
    public final void onAppSetIdRetrieved(String str, AppSetIdScope appSetIdScope) {
        this.a.c = new AppSetId(str, appSetIdScope);
        this.a.d.countDown();
    }

    @Override
    @MainThread
    public final void onFailure(Throwable th) {
        this.a.d.countDown();
    }
}
