package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;

public final class Z5 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        EnumC2859s9 enumC2859s9;
        Bundle bundle = parcel.readBundle(I6.class.getClassLoader());
        if (bundle.containsKey("CounterReport.Source")) {
            int i = bundle.getInt("CounterReport.Source");
            EnumC2859s9[] enumC2859s9ArrValues = EnumC2859s9.values();
            int length = enumC2859s9ArrValues.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    enumC2859s9 = EnumC2859s9.NATIVE;
                    break;
                }
                enumC2859s9 = enumC2859s9ArrValues[i2];
                if (enumC2859s9.a == i) {
                    break;
                }
                i2++;
            }
        } else {
            enumC2859s9 = null;
        }
        C2408a6 c2408a6 = new C2408a6("", "", 0);
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        c2408a6.d = bundle.getInt("CounterReport.Type", -1);
        c2408a6.e = bundle.getInt("CounterReport.CustomType");
        c2408a6.b = StringUtils.ifIsNullToDef(bundle.getString("CounterReport.Value"), "");
        c2408a6.c = bundle.getString("CounterReport.Environment");
        c2408a6.a = bundle.getString("CounterReport.Event");
        c2408a6.f = C2408a6.a(bundle);
        c2408a6.g = bundle.getInt("CounterReport.TRUNCATED");
        c2408a6.h = bundle.getString("CounterReport.ProfileID");
        c2408a6.i = bundle.getLong("CounterReport.CreationElapsedRealtime");
        c2408a6.j = bundle.getLong("CounterReport.CreationTimestamp");
        c2408a6.k = EnumC2661ka.a(Integer.valueOf(bundle.getInt("CounterReport.UniquenessStatus")));
        c2408a6.l = enumC2859s9;
        c2408a6.m = bundle.getBundle("CounterReport.Payload");
        c2408a6.n = bundle.containsKey("CounterReport.AttributionIdChanged") ? Boolean.valueOf(bundle.getBoolean("CounterReport.AttributionIdChanged")) : null;
        c2408a6.o = bundle.containsKey("CounterReport.OpenId") ? Integer.valueOf(bundle.getInt("CounterReport.OpenId")) : null;
        c2408a6.p = CollectionUtils.bundleToMap(bundle.getBundle("CounterReport.Extras"));
        return c2408a6;
    }

    @Override
    public final Object[] newArray(int i) {
        return new C2408a6[i];
    }
}
