package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import io.appmetrica.analytics.appsetid.internal.IAppSetIdRetriever;
import io.appmetrica.analytics.coreapi.internal.identifiers.AppSetId;
import io.appmetrica.analytics.coreapi.internal.identifiers.AppSetIdProvider;
import io.appmetrica.analytics.coreapi.internal.identifiers.AppSetIdScope;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public final class C2504e2 implements AppSetIdProvider {
    public final Context a;
    public final IAppSetIdRetriever b;
    public volatile AppSetId c;
    public CountDownLatch d;
    public final long e;
    public final C2479d2 f;

    @VisibleForTesting
    public C2504e2(Context context, IAppSetIdRetriever iAppSetIdRetriever) {
        this.a = context;
        this.b = iAppSetIdRetriever;
        this.d = new CountDownLatch(1);
        this.e = 20L;
        this.f = new C2479d2(this);
    }

    @Override
    @WorkerThread
    public final synchronized AppSetId getAppSetId() {
        AppSetId appSetId;
        if (this.c == null) {
            try {
                this.d = new CountDownLatch(1);
                this.b.retrieveAppSetId(this.a, this.f);
                this.d.await(this.e, TimeUnit.SECONDS);
            } catch (Throwable unused) {
            }
        }
        appSetId = this.c;
        if (appSetId == null) {
            appSetId = new AppSetId(null, AppSetIdScope.UNKNOWN);
            this.c = appSetId;
        }
        return appSetId;
    }

    public C2504e2(Context context) {
        this(context, AbstractC2529f2.a());
    }
}
