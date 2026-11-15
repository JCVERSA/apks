package io.appmetrica.analytics.impl;

import android.location.Location;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
import io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProvider;
import io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProviderFactory;
import io.appmetrica.analytics.locationapi.internal.LocationControllerObserver;
import io.appmetrica.analytics.locationapi.internal.LocationFilter;
import io.appmetrica.analytics.locationapi.internal.LocationReceiverProvider;
import io.appmetrica.analytics.locationapi.internal.LocationReceiverProviderFactory;

public final class Rb implements Pb {
    public final C2665ke a = new C2665ke();
    public final C3036zb b = new C3036zb();
    public final C2439bc c = new C2439bc();

    @Override
    public final void a(Location location) {
    }

    @Override
    public final void b(Object obj) {
    }

    @Override
    public final LastKnownLocationExtractorProviderFactory getLastKnownExtractorProviderFactory() {
        return this.b;
    }

    @Override
    public final LocationReceiverProviderFactory getLocationReceiverProviderFactory() {
        return this.c;
    }

    @Override
    public final PermissionExtractor getPermissionExtractor() {
        return this.a;
    }

    @Override
    public final Location getSystemLocation() {
        return null;
    }

    @Override
    public final Location getUserLocation() {
        return null;
    }

    @Override
    public final void init() {
    }

    @Override
    public final void registerControllerObserver(LocationControllerObserver locationControllerObserver) {
    }

    @Override
    public final void registerSource(LastKnownLocationExtractorProvider lastKnownLocationExtractorProvider) {
    }

    @Override
    public final void unregisterSource(LastKnownLocationExtractorProvider lastKnownLocationExtractorProvider) {
    }

    @Override
    public final void updateLocationFilter(LocationFilter locationFilter) {
    }

    @Override
    public final void a(Object obj) {
    }

    @Override
    public final void registerSource(LocationReceiverProvider locationReceiverProvider) {
    }

    @Override
    public final void unregisterSource(LocationReceiverProvider locationReceiverProvider) {
    }

    @Override
    public final void a(boolean z) {
    }
}
