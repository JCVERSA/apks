package io.appmetrica.analytics.impl;

import defpackage.d81;
import defpackage.y71;
import defpackage.z71;
import io.appmetrica.analytics.coreapi.internal.clientcomponents.ClientComponentsInitializer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class J7 implements ClientComponentsInitializer {
    public final List a = y71.n("io.appmetrica.analytics.adrevenue.admob.v23.internal.AdMobClientModuleEntryPoint", "io.appmetrica.analytics.adrevenue.applovin.v12.internal.AppLovinClientModuleEntryPoint", "io.appmetrica.analytics.adrevenue.fyber.v3.internal.FyberClientModuleEntryPoint", "io.appmetrica.analytics.adrevenue.ironsource.v7.internal.IronSourceClientModuleEntryPoint", "io.appmetrica.analytics.apphud.internal.ApphudClientModuleEntryPoint");

    @Override
    public final void onCreate() {
        if (C2879t4.i().a.c()) {
            Xc xc = C2879t4.i().m;
            List list = this.a;
            ArrayList arrayList = new ArrayList(z71.v(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new D5((String) it.next()));
            }
            Object[] array = arrayList.toArray(new D5[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            }
            D5[] d5Arr = (D5[]) array;
            Wc[] wcArr = (Wc[]) Arrays.copyOf(d5Arr, d5Arr.length);
            synchronized (xc) {
                d81.D(xc.a, wcArr);
            }
        }
    }
}
