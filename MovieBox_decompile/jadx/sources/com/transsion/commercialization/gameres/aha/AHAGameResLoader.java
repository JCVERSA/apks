package com.transsion.commercialization.gameres.aha;

import android.content.Context;
import com.transsion.bean.GameInfoType;
import com.transsion.commercialization.gameres.GameResView;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class AHAGameResLoader implements com.transsion.commercialization.gameres.a {

    private final Lazy f42599b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return AHAGameResLoader.h();
        }
    });

    public final a g() {
        return (a) this.f42599b.getValue();
    }

    public static final a h() {
        return (a) kg.c.f63982e.a().h(a.class);
    }

    @Override
    public void a(Context context, String pageName, String itemId, Function1 callback) {
        Intrinsics.h(context, "context");
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(itemId, "itemId");
        Intrinsics.h(callback, "callback");
        k.d(o0.a(y0.b()), null, null, new AHAGameResLoader$loadGameInfo$1(itemId, this, callback, context, pageName, null), 3, null);
    }

    public uj.a d(String pageName, String itemId, c info) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(itemId, "itemId");
        Intrinsics.h(info, "info");
        uj.a aVar = new uj.a(GameInfoType.AHA, null, info);
        aVar.l(pageName);
        aVar.k(itemId);
        return aVar;
    }

    public GameResView e(Context context, uj.a info) {
        Intrinsics.h(context, "context");
        Intrinsics.h(info, "info");
        AHAGameResView aHAGameResView = new AHAGameResView(context);
        aHAGameResView.setContent(info);
        return aHAGameResView;
    }

    public String f() {
        return ag.a.f344a.d() ? "https://tapi.ahagamecenter.com" : "https://api.ahagamecenter.com";
    }
}
