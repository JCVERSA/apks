package io.appmetrica.analytics.impl;

import android.app.Activity;
import java.util.WeakHashMap;

public final class r {
    public final WeakHashMap a = new WeakHashMap();

    public final boolean a(Activity activity, EnumC2800q enumC2800q) {
        if (activity != null && this.a.get(activity) == enumC2800q) {
            return false;
        }
        if (activity == null) {
            return true;
        }
        this.a.put(activity, enumC2800q);
        return true;
    }
}
