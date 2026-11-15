package io.appmetrica.analytics.impl;

import android.content.Context;
import android.location.Location;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
import io.appmetrica.analytics.locationapi.internal.CacheArguments;
import io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProvider;
import io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProviderFactory;
import io.appmetrica.analytics.locationapi.internal.LocationClient;
import io.appmetrica.analytics.locationapi.internal.LocationControllerObserver;
import io.appmetrica.analytics.locationapi.internal.LocationFilter;
import io.appmetrica.analytics.locationapi.internal.LocationProvider;
import io.appmetrica.analytics.locationapi.internal.LocationReceiverProvider;
import io.appmetrica.analytics.locationapi.internal.LocationReceiverProviderFactory;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleLocationSourcesServiceController;

public final class Qb implements Pb, Ml, LocationProvider {
    public final Context a;
    public final Ub b;
    public final LocationClient c;
    public final Vk d;
    public final C2447bk e;
    public final LastKnownLocationExtractorProviderFactory f;
    public final LocationReceiverProviderFactory g;

    public Qb(Context context, Ub ub, LocationClient locationClient) {
        this.a = context;
        this.b = ub;
        this.c = locationClient;
        Zb zb = new Zb();
        this.d = new Vk(new C2955w5(zb, C2910ua.j().o().getAskForPermissionStrategy()));
        this.e = C2910ua.j().o();
        ((Xb) ub).a(zb, true);
        ((Xb) ub).a(locationClient, true);
        this.f = locationClient.getLastKnownExtractorProviderFactory();
        this.g = locationClient.getLocationReceiverProviderFactory();
    }

    @Override
    public final void a(Hl hl) {
        C2978x3 c2978x3 = hl.y;
        if (c2978x3 != null) {
            long j = c2978x3.a;
            this.c.updateCacheArguments(new CacheArguments(j, ((long) 2) * j));
        }
    }

    public final Vk b() {
        return this.d;
    }

    @Override
    public final LastKnownLocationExtractorProviderFactory getLastKnownExtractorProviderFactory() {
        return this.f;
    }

    @Override
    public final LocationReceiverProviderFactory getLocationReceiverProviderFactory() {
        return this.g;
    }

    @Override
    public final PermissionExtractor getPermissionExtractor() {
        return this.d;
    }

    @Override
    public final Location getSystemLocation() {
        return this.c.getSystemLocation();
    }

    @Override
    public final Location getUserLocation() {
        return this.c.getUserLocation();
    }

    @Override
    public final void init() {
        this.c.init(this.a, this.d, C2910ua.E.d.c(), this.e.e());
        ModuleLocationSourcesServiceController moduleLocationSourcesServiceControllerF = this.e.f();
        if (moduleLocationSourcesServiceControllerF != null) {
            moduleLocationSourcesServiceControllerF.init();
        } else {
            LocationClient locationClient = this.c;
            locationClient.registerSystemLocationSource(locationClient.getLastKnownExtractorProviderFactory().getGplLastKnownLocationExtractorProvider());
            LocationClient locationClient2 = this.c;
            locationClient2.registerSystemLocationSource(locationClient2.getLastKnownExtractorProviderFactory().getNetworkLastKnownLocationExtractorProvider());
        }
        ((Xb) this.b).a(this.e.g());
        C2910ua.E.u.a(this);
    }

    @Override
    public final void registerControllerObserver(LocationControllerObserver locationControllerObserver) {
        ((Xb) this.b).a(locationControllerObserver, true);
    }

    @Override
    public final void registerSource(LastKnownLocationExtractorProvider lastKnownLocationExtractorProvider) {
        this.c.registerSystemLocationSource(lastKnownLocationExtractorProvider);
    }

    @Override
    public final void unregisterSource(LastKnownLocationExtractorProvider lastKnownLocationExtractorProvider) {
        this.c.unregisterSystemLocationSource(lastKnownLocationExtractorProvider);
    }

    @Override
    public final void updateLocationFilter(LocationFilter locationFilter) {
        this.c.updateLocationFilter(locationFilter);
    }

    @Override
    public final void b(Object obj) {
        ((Xb) this.b).a(obj);
    }

    @Override
    public final void registerSource(LocationReceiverProvider locationReceiverProvider) {
        this.c.registerSystemLocationSource(locationReceiverProvider);
    }

    @Override
    public final void unregisterSource(LocationReceiverProvider locationReceiverProvider) {
        this.c.unregisterSystemLocationSource(locationReceiverProvider);
    }

    @Override
    public final void a(Object obj) {
        ((Xb) this.b).b(obj);
    }

    @Override
    public final void a(boolean z) {
        ((Xb) this.b).a(z);
    }

    @Override
    public final void a(Location location) {
        this.c.updateUserLocation(location);
    }
}
