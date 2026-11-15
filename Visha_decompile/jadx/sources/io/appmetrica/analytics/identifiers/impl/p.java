package io.appmetrica.analytics.identifiers.impl;

import android.os.IBinder;
import android.os.IInterface;
import defpackage.e74;
import kotlin.jvm.internal.Lambda;

public final class p extends Lambda implements e74 {
    public static final p a = new p();

    public p() {
        super(1);
    }

    @Override
    public final Object invoke(Object obj) {
        IBinder iBinder = (IBinder) obj;
        int i = t.a;
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.yandex.android.advid.service.YandexAdvIdInterface");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof u)) ? new s(iBinder) : (u) iInterfaceQueryLocalInterface;
    }
}
