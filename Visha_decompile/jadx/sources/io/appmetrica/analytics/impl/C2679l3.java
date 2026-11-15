package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.billinginterface.internal.BillingType;
import io.appmetrica.analytics.billinginterface.internal.monitor.BillingMonitor;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoSender;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoStorage;
import io.appmetrica.analytics.billingv6.internal.BillingLibraryMonitor;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate.ApplicationState;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate.ApplicationStateProvider;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import java.util.concurrent.Executor;

public final class C2679l3 implements Ml {
    public BillingMonitor a;
    public final Context b;
    public final Executor c;
    public final Executor d;
    public final BillingType e;
    public final BillingInfoStorage f;
    public final BillingInfoSender g;
    public final ApplicationStateProvider h;
    public final C2629j3 i;

    public C2679l3(@NonNull Context context, @NonNull Executor executor, @NonNull Executor executor2, @NonNull BillingType billingType, @NonNull BillingInfoStorage billingInfoStorage, @NonNull BillingInfoSender billingInfoSender) {
        this(context, executor, executor2, billingType, billingInfoStorage, billingInfoSender, C2910ua.j().d(), new C2629j3());
    }

    public final void a(@NonNull Hl hl, @Nullable Boolean bool) {
        BillingMonitor c2410a8;
        if (((Boolean) WrapUtils.getOrDefault(bool, Boolean.TRUE)).booleanValue()) {
            synchronized (this) {
                try {
                    C2629j3 c2629j3 = this.i;
                    Context context = this.b;
                    Executor executor = this.c;
                    Executor executor2 = this.d;
                    BillingType billingType = this.e;
                    BillingInfoStorage billingInfoStorage = this.f;
                    BillingInfoSender billingInfoSender = this.g;
                    c2629j3.getClass();
                    if (AbstractC2605i3.a[billingType.ordinal()] == 1) {
                        c2410a8 = new BillingLibraryMonitor(context, executor, executor2, billingInfoStorage, billingInfoSender, null, null, 96, null);
                    } else {
                        c2410a8 = new C2410a8();
                    }
                    this.a = c2410a8;
                } catch (Throwable th) {
                    throw th;
                }
            }
            c2410a8.onBillingConfigChanged(hl.x);
            if (this.h.registerStickyObserver(new C2654k3(this)) == ApplicationState.VISIBLE) {
                try {
                    BillingMonitor billingMonitor = this.a;
                    if (billingMonitor != null) {
                        billingMonitor.onSessionResumed();
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public C2679l3(@NonNull Context context, @NonNull Executor executor, @NonNull Executor executor2, @NonNull BillingType billingType, @NonNull BillingInfoStorage billingInfoStorage, @NonNull BillingInfoSender billingInfoSender, @NonNull ApplicationStateProvider applicationStateProvider, @NonNull C2629j3 c2629j3) {
        this.b = context;
        this.c = executor;
        this.d = executor2;
        this.e = billingType;
        this.f = billingInfoStorage;
        this.g = billingInfoSender;
        this.h = applicationStateProvider;
        this.i = c2629j3;
    }

    @Override
    public final synchronized void a(@NonNull Hl hl) {
        BillingMonitor billingMonitor;
        synchronized (this) {
            billingMonitor = this.a;
        }
        if (billingMonitor != null) {
            billingMonitor.onBillingConfigChanged(hl.x);
        }
    }
}
