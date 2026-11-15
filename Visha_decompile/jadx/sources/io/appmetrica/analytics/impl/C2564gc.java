package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.text.TextUtils;
import defpackage.c74;
import io.appmetrica.analytics.coreutils.internal.services.FrameworkDetector;
import kotlin.jvm.internal.Lambda;

public final class C2564gc extends Lambda implements c74 {
    public final C2589hc a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2564gc(C2589hc c2589hc) {
        super(0);
        this.a = c2589hc;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0039  */
    @Override
    public final Object invoke() {
        Ac c3039ze;
        C2589hc c2589hc = this.a;
        Bc bc = c2589hc.f;
        InterfaceC2984x9 interfaceC2984x9 = c2589hc.b;
        Fg fg = c2589hc.a;
        F4 f4 = c2589hc.c;
        Le le = c2589hc.d;
        bc.getClass();
        if (FrameworkDetector.isNative()) {
            T9 t9H = C2910ua.E.h();
            Bundle applicationMetaData = t9H.d.getApplicationMetaData(t9H.a);
            if (TextUtils.isEmpty(applicationMetaData != null ? applicationMetaData.getString("io.appmetrica.analytics.plugin_id") : null)) {
                c3039ze = new Jd();
            } else {
                c3039ze = new C3039ze(interfaceC2984x9, fg, f4, le);
            }
        } else {
            c3039ze = new C3039ze(interfaceC2984x9, fg, f4, le);
        }
        return c3039ze.a();
    }
}
