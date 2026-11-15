package com.yandex.mobile.ads.impl;

import android.location.Location;
import defpackage.y45;
import java.util.List;

public final class at0 {
    private final ws0 a = new ws0();

    public final Location a(List<? extends Location> list) {
        y45.j(list, "locations");
        Location location = null;
        for (Location location2 : list) {
            this.a.getClass();
            if (ws0.a(location2, location)) {
                location = location2;
            }
        }
        return location;
    }
}
