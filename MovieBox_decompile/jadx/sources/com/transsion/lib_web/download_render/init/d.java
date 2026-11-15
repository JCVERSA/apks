package com.transsion.lib_web.download_render.init;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkRequest;
import android.os.Build;
import kotlin.jvm.internal.Intrinsics;
import yg.k;

public final class d implements c {

    private final Context f44815a;

    public d(Context context) {
        Intrinsics.h(context, "context");
        this.f44815a = context;
    }

    @Override
    public void invoke() {
        Object systemService = this.f44815a.getSystemService("connectivity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        if (Build.VERSION.SDK_INT >= 24) {
            connectivityManager.registerDefaultNetworkCallback(k.f76255g.a());
        } else {
            connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addCapability(12).build(), k.f76255g.a());
        }
        com.transsion.lib_web.download_render.utils.d.f44821a.d();
        yl.e.f76272a.d();
    }
}
