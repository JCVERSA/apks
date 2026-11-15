package com.yandex.varioqub.appmetricaadapter.impl;

import android.content.Context;
import com.yandex.varioqub.analyticadapter.AdapterIdentifiersCallback;
import defpackage.x71;
import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.IModuleReporter;
import io.appmetrica.analytics.ModulesFacade;
import io.appmetrica.analytics.StartupParamsCallback;
import java.util.LinkedHashMap;

public final class c implements d {
    public IModuleReporter a;

    @Override
    public final void a(Context context, AdapterIdentifiersCallback adapterIdentifiersCallback) {
        AppMetrica.requestStartupParams(context, new b(adapterIdentifiersCallback), x71.e(StartupParamsCallback.APPMETRICA_UUID));
    }

    @Override
    public final void b(LinkedHashMap linkedHashMap) {
        AppMetrica.reportEvent("com.yandex.varioqub.activate_config", linkedHashMap);
    }

    @Override
    public final void c(Context context, AdapterIdentifiersCallback adapterIdentifiersCallback) {
        AppMetrica.requestStartupParams(context, new a(adapterIdentifiersCallback), x71.e(StartupParamsCallback.APPMETRICA_DEVICE_ID));
    }

    @Override
    public final void a(Context context, String str) {
        this.a = ModulesFacade.getModuleReporter(context, str);
    }

    @Override
    public final void a(byte[] bArr) {
        IModuleReporter iModuleReporter = this.a;
        if (iModuleReporter != null) {
            iModuleReporter.setSessionExtra("varioqub", bArr);
        } else {
            ModulesFacade.setSessionExtra("varioqub", bArr);
        }
    }
}
