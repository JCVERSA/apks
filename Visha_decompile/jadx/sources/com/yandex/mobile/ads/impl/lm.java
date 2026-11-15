package com.yandex.mobile.ads.impl;

import android.os.Bundle;
import java.util.ArrayList;

public final class lm {
    private lm() {
    }

    public static kk0 a(km.a aVar, ArrayList arrayList) {
        int i = kk0.d;
        kk0.a aVar2 = new kk0.a();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            Bundle bundle = (Bundle) arrayList.get(i2);
            bundle.getClass();
            aVar2.b(aVar.fromBundle(bundle));
        }
        return aVar2.a();
    }
}
