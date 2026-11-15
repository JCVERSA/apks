package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import defpackage.y45;

public final class xe0 {
    private final jo1 a;
    private final mc b;
    private final Context c;

    public xe0(Context context) {
        this(context, new jo1(), new mc());
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 3 */
    public final lc a() {
        try {
            this.a.getClass();
            y45.j("com.google.android.gms.ads.identifier.AdvertisingIdClient", TranSearchIndexablesContract.TranBaseColumns.COLUMN_CLASS_NAME);
            if (AdvertisingIdClient.class == 0) {
                return null;
            }
            jo1 jo1Var = this.a;
            Object[] objArr = {this.c};
            jo1Var.getClass();
            Object objA = jo1.a(AdvertisingIdClient.class, "getAdvertisingIdInfo", objArr);
            if (objA == null) {
                return null;
            }
            String str = (String) jo1.a.a(objA, "getId", new Object[0]);
            Boolean bool = (Boolean) jo1.a.a(objA, "isLimitAdTrackingEnabled", new Object[0]);
            this.b.getClass();
            if (bool == null || str == null) {
                return null;
            }
            return new lc(str, bool.booleanValue());
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
            return null;
        }
    }

    public xe0(Context context, jo1 jo1Var, mc mcVar) {
        y45.j(context, "context");
        y45.j(jo1Var, "reflectHelper");
        y45.j(mcVar, "advertisingInfoCreator");
        this.a = jo1Var;
        this.b = mcVar;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.c = applicationContext;
    }
}
