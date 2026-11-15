package com.transsion.commercialization.gameres.ps;

import android.content.Context;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.ad.ps.model.RecommendInfo;
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

public final class PSGameResLoader implements com.transsion.commercialization.gameres.a {

    private final Lazy f42617b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PSGameResLoader.h();
        }
    });

    public final a g() {
        return (a) this.f42617b.getValue();
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
        k.d(o0.a(y0.b()), null, null, new PSGameResLoader$loadGameInfo$1(itemId, this, callback, context, pageName, null), 3, null);
    }

    public uj.a d(String pageName, String itemId, RecommendInfo info) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(itemId, "itemId");
        Intrinsics.h(info, "info");
        uj.a aVar = new uj.a(GameInfoType.PS, info, null);
        aVar.l(pageName);
        aVar.k(itemId);
        return aVar;
    }

    public GameResView e(Context context, uj.a info) {
        Intrinsics.h(context, "context");
        Intrinsics.h(info, "info");
        PSGameResView pSGameResView = new PSGameResView(context);
        pSGameResView.setContent(info);
        return pSGameResView;
    }

    public String f() {
        if (ag.a.f344a.d()) {
            return "https://test-empower-api.palmplaystore.com";
        }
        return Intrinsics.c(Utils.a().getPackageName(), TmcConstants.PACKAGE_MOVIE_BOX_7) ? "https://ind-empower-api.palmplaystore.com" : "https://empower-api.palmplaystore.com";
    }
}
