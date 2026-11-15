package com.yandex.div.core.view2.divs;

import com.yandex.div2.DivContainer;
import defpackage.e74;
import defpackage.oj3;
import defpackage.s74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\t\u001a\u00020\u0006\"\u0012\b\u0000\u0010\u0003*\u00020\u0000*\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0004H\n¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Landroid/view/ViewGroup;", "Lmk2;", "Lcom/yandex/div2/Div$b;", "T", "", "it", "Lzfb;", "invoke", "(Ljava/lang/Object;)V", "<anonymous>"}, k = 3, mv = {1, 8, 0})
public final class DivContainerBinder$bindSeparatorShowMode$callback$1 extends Lambda implements e74 {
    final s74 $applySeparatorShowMode;
    final DivContainer.Separator $newSeparator;
    final oj3 $resolver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivContainerBinder$bindSeparatorShowMode$callback$1(s74 s74Var, DivContainer.Separator separator, oj3 oj3Var) {
        super(1);
        this.$applySeparatorShowMode = s74Var;
        this.$newSeparator = separator;
        this.$resolver = oj3Var;
    }

    @Override
    public Object invoke(Object obj) {
        m184invoke(obj);
        return zfb.a;
    }

    public final void m184invoke(Object obj) {
        y45.j(obj, "it");
        this.$applySeparatorShowMode.invoke(this.$newSeparator, this.$resolver);
    }
}
