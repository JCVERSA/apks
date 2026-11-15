package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import javax.net.ssl.SSLSocketFactory;

public final class ki0 {
    public static nk a(Context context, ji0.b bVar, SSLSocketFactory sSLSocketFactory) {
        y45.j(context, "context");
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        return (ju1VarA == null || !ju1VarA.z0()) ? new ji0(bVar, sSLSocketFactory) : new li0(bVar, sSLSocketFactory);
    }
}
