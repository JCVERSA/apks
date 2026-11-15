package ru;

import android.app.Application;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.os.Build;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.Intrinsics;

public final class f {

    public static final Lazy f71355f = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, com.transsion.upgradesdk.net.f.f54525a);

    public boolean f71356a;

    public long f71358c;

    public final com.transsion.upgradesdk.net.g f71357b = new com.transsion.upgradesdk.net.g(this);

    public final String f71359d = "UpgradeSdkManager";

    public final e f71360e = new e(this);

    public static final void b(f fVar) {
        fVar.getClass();
        Intrinsics.y("connectivityManager");
        throw null;
    }

    public final void a() {
        if (this.f71356a) {
            return;
        }
        this.f71356a = true;
        Application application = pu.a.f69263a;
        Application application2 = null;
        if (application == null) {
            Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
            application = null;
        }
        Object systemService = application.getSystemService("connectivity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        if (Build.VERSION.SDK_INT >= 24) {
            connectivityManager.registerDefaultNetworkCallback(this.f71360e);
            return;
        }
        IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
        Application application3 = pu.a.f69263a;
        if (application3 != null) {
            application2 = application3;
        } else {
            Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
        }
        application2.registerReceiver(this.f71357b, intentFilter);
    }
}
