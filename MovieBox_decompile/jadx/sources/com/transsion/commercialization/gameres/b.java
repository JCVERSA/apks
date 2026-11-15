package com.transsion.commercialization.gameres;

import android.content.Context;
import com.transsion.bean.GameInfoType;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class b implements wj.b {
    @Override
    public void a(Context context, String pageName, GameInfoType type, String itemId, Function1 callback) {
        Intrinsics.h(context, "context");
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(type, "type");
        Intrinsics.h(itemId, "itemId");
        Intrinsics.h(callback, "callback");
        a.f42596a.a(type).a(context, pageName, itemId, callback);
    }
}
