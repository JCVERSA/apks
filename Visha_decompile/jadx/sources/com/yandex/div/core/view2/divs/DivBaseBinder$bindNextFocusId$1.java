package com.yandex.div.core.view2.divs;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.e74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", TtmlNode.ATTR_ID, "Lzfb;", "invoke", "(Ljava/lang/String;)V", "<anonymous>"}, k = 3, mv = {1, 8, 0})
public final class DivBaseBinder$bindNextFocusId$1 extends Lambda implements e74 {
    final e74 $applyNextFocusId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivBaseBinder$bindNextFocusId$1(e74 e74Var) {
        super(1);
        this.$applyNextFocusId = e74Var;
    }

    @Override
    public Object invoke(Object obj) {
        invoke((String) obj);
        return zfb.a;
    }

    public final void invoke(String str) {
        y45.j(str, TtmlNode.ATTR_ID);
        this.$applyNextFocusId.invoke(str);
    }
}
