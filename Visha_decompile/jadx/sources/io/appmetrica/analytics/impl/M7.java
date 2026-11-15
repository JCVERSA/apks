package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.d81;
import defpackage.y71;
import defpackage.z71;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.ServiceComponentsInitializer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class M7 implements ServiceComponentsInitializer {
    public final List a = y71.n("io.appmetrica.analytics.remotepermissions.internal.RemotePermissionsModuleEntryPoint", "io.appmetrica.analytics.apphud.internal.ApphudServiceModuleEntryPoint");

    @Override
    public final void onCreate(Context context) {
        Xc xc = C2910ua.E.s;
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
        C2910ua.E.s.a(new Je(context, "io.appmetrica.analytics.modules.ads", "lsm"));
    }
}
