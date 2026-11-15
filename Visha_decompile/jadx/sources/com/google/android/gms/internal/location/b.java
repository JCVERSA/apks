package com.google.android.gms.internal.location;

import com.google.android.gms.location.LocationAvailability;
import defpackage.io5;

public final class b implements com.google.android.gms.common.api.internal.d.b {
    public final LocationAvailability a;

    public b(zzar zzarVar, LocationAvailability locationAvailability) {
        this.a = locationAvailability;
    }

    @Override
    public final void a(Object obj) {
        ((io5) obj).onLocationAvailability(this.a);
    }

    @Override
    public final void b() {
    }
}
