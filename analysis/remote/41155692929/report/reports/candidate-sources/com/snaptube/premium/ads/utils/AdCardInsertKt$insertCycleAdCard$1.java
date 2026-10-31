package com.snaptube.premium.ads.utils;

import com.snaptube.util.ProductionEnv;
import com.wandoujia.em.common.protomodel.Card;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import o.i7;
import o.li0;
import o.mg8;
import o.or3;
import o.rx2;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", "index", "Lcom/wandoujia/em/common/protomodel/Card;", "card", "Lo/mg8;", "invoke", "(ILcom/wandoujia/em/common/protomodel/Card;)V", "<anonymous>"}, k = 3, mv = {1, 9, 0})
public final class AdCardInsertKt$insertCycleAdCard$1 extends Lambda implements rx2 {
    final List<Card> $currentCards;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdCardInsertKt$insertCycleAdCard$1(List<Card> list) {
        super(2);
        this.$currentCards = list;
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        invoke(((Number) obj).intValue(), (Card) obj2);
        return mg8.a;
    }

    public final void invoke(int i, @NotNull Card card) {
        or3.f(card, "card");
        ProductionEnv.d("feed_stream_insert", "插入列表 位置：" + i + ", placementID: " + i7.e(card));
        List<Card> list = this.$currentCards;
        Card cardK = li0.f(card).k();
        or3.e(cardK, "build(...)");
        list.add(i, cardK);
    }
}
