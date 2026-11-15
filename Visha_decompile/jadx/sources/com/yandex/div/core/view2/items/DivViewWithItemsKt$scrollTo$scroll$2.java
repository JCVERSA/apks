package com.yandex.div.core.view2.items;

import androidx.recyclerview.widget.RecyclerView;
import defpackage.s74;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
public class DivViewWithItemsKt$scrollTo$scroll$2 extends FunctionReferenceImpl implements s74 {
    public DivViewWithItemsKt$scrollTo$scroll$2(Object obj) {
        super(2, obj, RecyclerView.class, "scrollBy", "scrollBy(II)V", 0);
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        invoke(((Number) obj).intValue(), ((Number) obj2).intValue());
        return zfb.a;
    }

    public final void invoke(int i, int i2) {
        ((RecyclerView) this.receiver).scrollBy(i, i2);
    }
}
