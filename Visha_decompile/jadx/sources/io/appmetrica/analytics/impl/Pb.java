package io.appmetrica.analytics.impl;

import android.location.Location;
import io.appmetrica.analytics.modulesapi.internal.service.LocationServiceApi;

public interface Pb extends Sb, LocationServiceApi {
    @Override
    void a(Location location);

    @Override
    void a(Object obj);

    @Override
    void a(boolean z);

    @Override
    void b(Object obj);

    @Override
    void init();
}
