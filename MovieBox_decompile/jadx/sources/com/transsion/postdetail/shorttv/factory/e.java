package com.transsion.postdetail.shorttv.factory;

import android.content.Context;
import android.os.Bundle;
import kotlin.jvm.internal.Intrinsics;

public final class e implements ur.f {
    @Override
    public void a(String screenName, Long l10, Context context) {
        Intrinsics.h(screenName, "screenName");
        com.transsion.baselib.report.e.f42196a.n(screenName, l10, context);
    }

    @Override
    public void b(String event, Bundle bundle, Context context) {
        Intrinsics.h(event, "event");
        com.transsion.baselib.report.e.f42196a.l(event, bundle, context);
    }
}
