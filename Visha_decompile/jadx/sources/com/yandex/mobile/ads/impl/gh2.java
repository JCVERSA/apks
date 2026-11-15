package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.e74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

final class gh2 extends Lambda implements e74 {
    final hh2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gh2(hh2 hh2Var) {
        super(1);
        this.b = hh2Var;
    }

    @Override
    public final Object invoke(Object obj) {
        String str = (String) obj;
        y45.j(str, TtmlNode.ATTR_ID);
        this.b.a.invoke(new dy.b(str));
        return zfb.a;
    }
}
