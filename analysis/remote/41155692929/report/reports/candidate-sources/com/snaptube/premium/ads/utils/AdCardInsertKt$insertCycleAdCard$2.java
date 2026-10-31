package com.snaptube.premium.ads.utils;

import com.snaptube.util.ProductionEnv;
import com.wandoujia.em.common.protomodel.Card;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import o.i7;
import o.li0;
import o.mg8;
import o.or3;
import o.rx2;
import o.zv4;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\b\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\u000e\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"", "index", "Lcom/wandoujia/em/common/protomodel/Card;", "kotlin.jvm.PlatformType", "card", "Lo/mg8;", "invoke", "(ILcom/wandoujia/em/common/protomodel/Card;)V", "<anonymous>"}, k = 3, mv = {1, 9, 0})
public final class AdCardInsertKt$insertCycleAdCard$2 extends Lambda implements rx2 {
    final zv4 $adapter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdCardInsertKt$insertCycleAdCard$2(zv4 zv4Var) {
        super(2);
        this.$adapter = zv4Var;
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        invoke(((Number) obj).intValue(), (Card) obj2);
        return mg8.a;
    }

    public final void invoke(int i, Card card) {
        ProductionEnv.d("feed_stream_insert", "插入列表 位置：" + i + ", placementID: " + i7.e(card));
        zv4 zv4Var = this.$adapter;
        or3.c(card);
        zv4Var.r(i, li0.f(card).k());
    }
}
