package com.yandex.mobile.ads.impl;

import android.location.Location;
import defpackage.y45;

public final class ct0 {
    private final Object a;

    public ct0(Object obj) {
        y45.j(obj, "taskObject");
        this.a = obj;
    }

    public final Location a() {
        Object objA = jo1.a.a(this.a, "getResult", new Object[0]);
        if (objA instanceof Location) {
            return (Location) objA;
        }
        return null;
    }

    public final boolean b() {
        Object objA = jo1.a.a(this.a, "isComplete", new Object[0]);
        Boolean bool = objA instanceof Boolean ? (Boolean) objA : null;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }
}
