package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionState;
import java.util.ArrayList;
import java.util.Iterator;

public final class Y1 implements ProtobufConverter {
    public final F2 a;

    public Y1() {
        this(new F2());
    }

    @Override
    @NonNull
    public final C2429b2 fromModel(@NonNull X1 x1) {
        C2429b2 c2429b2 = new C2429b2();
        c2429b2.a = new C2404a2[x1.a.size()];
        int i = 0;
        int i2 = 0;
        for (PermissionState permissionState : x1.a) {
            C2404a2[] c2404a2Arr = c2429b2.a;
            C2404a2 c2404a2 = new C2404a2();
            c2404a2.a = permissionState.name;
            c2404a2.b = permissionState.granted;
            c2404a2Arr[i2] = c2404a2;
            i2++;
        }
        H2 h2 = x1.b;
        if (h2 != null) {
            c2429b2.b = this.a.fromModel(h2);
        }
        c2429b2.c = new String[x1.c.size()];
        Iterator it = x1.c.iterator();
        while (it.hasNext()) {
            c2429b2.c[i] = (String) it.next();
            i++;
        }
        return c2429b2;
    }

    public Y1(F2 f2) {
        this.a = f2;
    }

    @Override
    @NonNull
    public final X1 toModel(@NonNull C2429b2 c2429b2) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        while (true) {
            C2404a2[] c2404a2Arr = c2429b2.a;
            if (i2 >= c2404a2Arr.length) {
                break;
            }
            C2404a2 c2404a2 = c2404a2Arr[i2];
            arrayList.add(new PermissionState(c2404a2.a, c2404a2.b));
            i2++;
        }
        Z1 z1 = c2429b2.b;
        H2 model = z1 != null ? this.a.toModel(z1) : null;
        ArrayList arrayList2 = new ArrayList();
        while (true) {
            String[] strArr = c2429b2.c;
            if (i < strArr.length) {
                arrayList2.add(strArr[i]);
                i++;
            } else {
                return new X1(arrayList, model, arrayList2);
            }
        }
    }
}
