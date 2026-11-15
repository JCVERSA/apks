package com.yandex.div.core.view2.divs;

import com.yandex.div2.DivContainer;
import defpackage.e74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\t\u001a\u00020\u0006\"\u0012\b\u0000\u0010\u0003*\u00020\u0000*\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0004H\n¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Landroid/view/ViewGroup;", "Lmk2;", "Lcom/yandex/div2/Div$b;", "T", "Lcom/yandex/div2/DivContainer$Orientation;", "orientation", "Lzfb;", "invoke", "(Lcom/yandex/div2/DivContainer$Orientation;)V", "<anonymous>"}, k = 3, mv = {1, 8, 0})
public final class DivContainerBinder$bindOrientation$1 extends Lambda implements e74 {
    final e74 $applyOrientation;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivContainerBinder$bindOrientation$1(e74 e74Var) {
        super(1);
        this.$applyOrientation = e74Var;
    }

    @Override
    public Object invoke(Object obj) {
        invoke((DivContainer.Orientation) obj);
        return zfb.a;
    }

    public final void invoke(DivContainer.Orientation orientation) {
        y45.j(orientation, "orientation");
        this.$applyOrientation.invoke(orientation);
    }
}
