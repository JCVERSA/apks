package com.yandex.div.core.util;

import com.yandex.div2.Div;
import defpackage.e74;
import defpackage.g59;
import defpackage.y45;
import defpackage.zfb;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$ObjectRef;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Log2;", "T", "Lcom/yandex/div2/Div;", "it", "Lzfb;", "invoke", "(Lcom/yandex/div2/Div;)V", "<anonymous>"}, k = 3, mv = {1, 8, 0})
public final class SearchUtilKt$findNearest$visitor$2 extends Lambda implements e74 {
    final List<g59> $searchRoutes;
    final Ref$ObjectRef<g59> $seekerRoute;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchUtilKt$findNearest$visitor$2(List<g59> list, Ref$ObjectRef<g59> ref$ObjectRef) {
        super(1);
        this.$searchRoutes = list;
        this.$seekerRoute = ref$ObjectRef;
    }

    @Override
    public Object invoke(Object obj) {
        invoke((Div) obj);
        return zfb.a;
    }

    public final void invoke(Div div) {
        y45.j(div, "it");
        Iterator<T> it = this.$searchRoutes.iterator();
        while (it.hasNext()) {
            ((g59) it.next()).d();
        }
        g59 g59Var = this.$seekerRoute.element;
        if (g59Var != null) {
            g59Var.d();
        }
    }
}
