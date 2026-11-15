package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.c74;
import defpackage.y45;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdTrackingInfoResult;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdvertisingIdsHolder;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.impl.Q;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import kotlin.NoWhenBranchMatchedException;

public final class Q implements Ha {
    public final Context a;
    public final ICommonExecutor b;
    public FutureTask i;
    public final G j;
    public final String c = "advertising identifiers collecting is forbidden by client configuration";
    public final String d = "advertising identifiers collecting is forbidden by startup";
    public final String e = "advertising identifiers collecting is forbidden by unknown reason";
    public final K f = new K(new C2767og("google"));
    public final K g = new K(new C2767og("huawei"));
    public final K h = new K(new C2767og("yandex"));
    public volatile AdvertisingIdsHolder k = new AdvertisingIdsHolder();
    public D l = new D(4, 4, 4);

    public Q(Context context, ICommonExecutor iCommonExecutor, Hl hl) {
        this.a = context;
        this.b = iCommonExecutor;
        this.j = new G(hl);
    }

    public static final Void e(Q q) {
        q.k = new AdvertisingIdsHolder(q.a(q.l.a, new N(q)), q.a(q.l.b, new O(q)), q.a(q.l.c, new P(q, new Pd())));
        return null;
    }

    @Override
    public final synchronized AdvertisingIdsHolder getIdentifiers(Context context) {
        return getIdentifiers();
    }

    @Override
    public final synchronized void init() {
        if (this.i == null) {
            this.l = this.j.a();
            FutureTask futureTask = new FutureTask(new Callable() {
                @Override
                public final Object call() {
                    return Q.e(this.b);
                }
            });
            this.i = futureTask;
            this.b.execute(futureTask);
        }
    }

    @Override
    public final synchronized void a(Hl hl) {
        this.j.a(hl);
        a((InterfaceC2968wi) new Pd(), false);
    }

    @Override
    public final synchronized void b(boolean z) {
        this.j.b.update(z);
        a((InterfaceC2968wi) new Pd(), false);
    }

    @Override
    public final synchronized AdvertisingIdsHolder getIdentifiers() {
        FutureTask futureTask = this.i;
        if (futureTask == null) {
            y45.B("refresh");
            futureTask = null;
        }
        try {
            futureTask.get();
        } catch (InterruptedException | ExecutionException unused) {
        }
        return this.k;
    }

    @Override
    public final synchronized AdvertisingIdsHolder a() {
        return a(new Pd());
    }

    @Override
    public final synchronized AdvertisingIdsHolder a(InterfaceC2968wi interfaceC2968wi) {
        try {
            a(interfaceC2968wi, true).get();
        } catch (InterruptedException | ExecutionException unused) {
        }
        return this.k;
    }

    public final FutureTask a(final InterfaceC2968wi interfaceC2968wi, final boolean z) {
        final D dA = this.j.a();
        FutureTask futureTask = new FutureTask(new Callable() {
            @Override
            public final Object call() {
                return Q.a(z, dA, this, interfaceC2968wi);
            }
        });
        this.i = futureTask;
        this.b.execute(futureTask);
        FutureTask futureTask2 = this.i;
        if (futureTask2 != null) {
            return futureTask2;
        }
        y45.B("refresh");
        return null;
    }

    public static final Void a(boolean z, D d, Q q, InterfaceC2968wi interfaceC2968wi) {
        if (!z && y45.e(d, q.l)) {
            return null;
        }
        AdvertisingIdsHolder advertisingIdsHolder = q.k;
        AdTrackingInfoResult adTrackingInfoResultA = q.a(d.a, new N(q));
        AdTrackingInfoResult google = advertisingIdsHolder.getGoogle();
        IdentifierStatus identifierStatus = adTrackingInfoResultA.mStatus;
        IdentifierStatus identifierStatus2 = IdentifierStatus.UNKNOWN;
        if (identifierStatus == identifierStatus2) {
            adTrackingInfoResultA = new AdTrackingInfoResult(google.mAdTrackingInfo, identifierStatus, adTrackingInfoResultA.mErrorExplanation);
        }
        AdTrackingInfoResult adTrackingInfoResultA2 = q.a(d.b, new O(q));
        AdTrackingInfoResult huawei = advertisingIdsHolder.getHuawei();
        IdentifierStatus identifierStatus3 = adTrackingInfoResultA2.mStatus;
        if (identifierStatus3 == identifierStatus2) {
            adTrackingInfoResultA2 = new AdTrackingInfoResult(huawei.mAdTrackingInfo, identifierStatus3, adTrackingInfoResultA2.mErrorExplanation);
        }
        AdTrackingInfoResult adTrackingInfoResultA3 = q.a(d.c, new P(q, interfaceC2968wi));
        AdTrackingInfoResult yandex = advertisingIdsHolder.getYandex();
        IdentifierStatus identifierStatus4 = adTrackingInfoResultA3.mStatus;
        if (identifierStatus4 == identifierStatus2) {
            adTrackingInfoResultA3 = new AdTrackingInfoResult(yandex.mAdTrackingInfo, identifierStatus4, adTrackingInfoResultA3.mErrorExplanation);
        }
        q.k = new AdvertisingIdsHolder(adTrackingInfoResultA, adTrackingInfoResultA2, adTrackingInfoResultA3);
        return null;
    }

    public final AdTrackingInfoResult a(int i, c74 c74Var) {
        if (i == 0) {
            throw null;
        }
        int i2 = i - 1;
        if (i2 == 0) {
            return (AdTrackingInfoResult) c74Var.invoke();
        }
        if (i2 == 1) {
            return new AdTrackingInfoResult(null, IdentifierStatus.FORBIDDEN_BY_CLIENT_CONFIG, this.c);
        }
        if (i2 == 2) {
            return new AdTrackingInfoResult(null, IdentifierStatus.FEATURE_DISABLED, this.d);
        }
        if (i2 == 3) {
            return new AdTrackingInfoResult(null, IdentifierStatus.UNKNOWN, this.e);
        }
        throw new NoWhenBranchMatchedException();
    }
}
