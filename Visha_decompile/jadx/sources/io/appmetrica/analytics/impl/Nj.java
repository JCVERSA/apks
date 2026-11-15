package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.control.DataSendingRestrictionController;
import io.appmetrica.analytics.coreapi.internal.crypto.CryptoProvider;
import io.appmetrica.analytics.coreapi.internal.identifiers.PlatformIdentifiers;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrier;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.FirstExecutionConditionService;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.SdkEnvironmentProvider;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate.ApplicationStateProvider;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.ChargeTypeProvider;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
import io.appmetrica.analytics.modulesapi.internal.common.ExecutorProvider;
import io.appmetrica.analytics.modulesapi.internal.common.ModuleSelfReporter;
import io.appmetrica.analytics.modulesapi.internal.service.LocationServiceApi;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceLifecycleController;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceContext;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceNetworkContext;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceStorageProvider;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceWakeLock;

public final class Nj implements ServiceContext {
    public final ModuleServiceLifecycleController a;
    public final Kd b = new Kd(getContext());
    public final C2515ed c = new C2515ed();
    public final C2572gk d = new C2572gk(getContext(), new C2547fk(new Q1()));
    public final C2472ck e = new C2472ck(getContext(), C2910ua.j().x(), C2559g7.a(getContext()).h());
    public final F9 f = new F9();
    public final C3006y6 g = new C3006y6();

    public Nj(ModuleServiceLifecycleController moduleServiceLifecycleController) {
        this.a = moduleServiceLifecycleController;
    }

    public final Kd a() {
        return this.b;
    }

    public final C2515ed b() {
        return this.c;
    }

    public final C2472ck c() {
        return this.e;
    }

    public final C2572gk d() {
        return this.d;
    }

    @Override
    public final ActivationBarrier getActivationBarrier() {
        return C2910ua.E.B.getActivationBarrier();
    }

    @Override
    public final ApplicationStateProvider getApplicationStateProvider() {
        return C2910ua.E.k().b;
    }

    @Override
    public final ChargeTypeProvider getChargeTypeProvider() {
        C2910ua c2910ua = C2910ua.E;
        C2455c3 c2455c3 = c2910ua.e;
        if (c2455c3 == null) {
            synchronized (c2910ua) {
                try {
                    c2455c3 = c2910ua.e;
                    if (c2455c3 == null) {
                        c2455c3 = new C2455c3(c2910ua.d.a(), c2910ua.k().a);
                        c2910ua.e = c2455c3;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c2455c3;
    }

    @Override
    public final Context getContext() {
        return C2910ua.E.a;
    }

    @Override
    public final CryptoProvider getCryptoProvider() {
        return this.g;
    }

    @Override
    public final DataSendingRestrictionController getDataSendingRestrictionController() {
        return C2910ua.E.g();
    }

    @Override
    public final ExecutorProvider getExecutorProvider() {
        return this.f;
    }

    @Override
    public final FirstExecutionConditionService getFirstExecutionConditionService() {
        return C2910ua.E.B.getFirstExecutionService();
    }

    @Override
    public final LocationServiceApi getLocationServiceApi() {
        return C2910ua.E.l();
    }

    @Override
    public final ModuleServiceLifecycleController getModuleServiceLifecycleController() {
        return this.a;
    }

    @Override
    public final ServiceNetworkContext getNetworkContext() {
        return this.b;
    }

    @Override
    public final PermissionExtractor getPermissionExtractor() {
        return C2910ua.E.i();
    }

    @Override
    public final PlatformIdentifiers getPlatformIdentifiers() {
        return C2910ua.E.r();
    }

    @Override
    public final SdkEnvironmentProvider getSdkEnvironmentProvider() {
        return C2910ua.E.u();
    }

    @Override
    public final ModuleSelfReporter getSelfReporter() {
        return this.c;
    }

    @Override
    public final ServiceStorageProvider getServiceStorageProvider() {
        return this.e;
    }

    @Override
    public final ServiceWakeLock getServiceWakeLock() {
        return this.d;
    }
}
