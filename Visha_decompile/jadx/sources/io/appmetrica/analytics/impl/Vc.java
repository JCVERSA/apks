package io.appmetrica.analytics.impl;

import android.location.Location;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreapi.internal.control.Toggle;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleLocationSourcesServiceController;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServicesDatabase;
import java.util.List;
import java.util.Map;

public interface Vc extends InterfaceC2764od {
    List<ModuleServicesDatabase> b();

    Map c();

    Map d();

    List<Consumer<Location>> e();

    ModuleLocationSourcesServiceController f();

    Toggle g();

    List h();
}
