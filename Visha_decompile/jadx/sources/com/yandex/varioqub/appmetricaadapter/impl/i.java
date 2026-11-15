package com.yandex.varioqub.appmetricaadapter.impl;

import android.content.Context;
import com.yandex.metrica.ModulesFacade;
import com.yandex.metrica.YandexMetrica;
import com.yandex.metrica.p;
import com.yandex.varioqub.analyticadapter.AdapterIdentifiersCallback;
import java.util.LinkedHashMap;

public final class i implements d {
    @Override
    public final void a(Context context, String str) {
    }

    @Override
    public final void b(LinkedHashMap linkedHashMap) {
        YandexMetrica.reportEvent("com.yandex.varioqub.activate_config", linkedHashMap);
    }

    @Override
    public final void c(Context context, AdapterIdentifiersCallback adapterIdentifiersCallback) {
        p.a(context, new g(adapterIdentifiersCallback), new String[]{"yandex_mobile_metrica_device_id"});
    }

    @Override
    public final void a(Context context, AdapterIdentifiersCallback adapterIdentifiersCallback) {
        p.a(context, new h(adapterIdentifiersCallback), new String[]{"yandex_mobile_metrica_uuid"});
    }

    @Override
    public final void a(byte[] bArr) {
        ModulesFacade.setSessionExtra("varioqub", bArr);
    }
}
