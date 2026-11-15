package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.DivPreloader;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.DivCustom;
import defpackage.oj3;
import defpackage.y45;

public final class d20 implements com.yandex.div.core.a {
    @Override
    public final void bindView(View view, DivCustom divCustom, Div2View div2View, oj3 oj3Var, DivStatePath divStatePath) {
        y45.j(view, "view");
        y45.j(divCustom, TtmlNode.TAG_DIV);
        y45.j(div2View, "divView");
        y45.j(oj3Var, "expressionResolver");
        y45.j(divStatePath, "path");
    }

    @Override
    public final View createView(DivCustom divCustom, Div2View div2View, oj3 oj3Var, DivStatePath divStatePath) {
        y45.j(divCustom, TtmlNode.TAG_DIV);
        y45.j(div2View, "divView");
        y45.j(oj3Var, "expressionResolver");
        y45.j(divStatePath, "path");
        Context context = div2View.getContext();
        y45.g(context);
        return new qn1(context);
    }

    @Override
    public final boolean isCustomTypeSupported(String str) {
        y45.j(str, "type");
        return y45.e("rating", str);
    }

    @Override
    public DivPreloader.d preload(DivCustom divCustom, DivPreloader.a aVar) {
        return super.preload(divCustom, aVar);
    }

    @Override
    public final void release(View view, DivCustom divCustom) {
        y45.j(view, "view");
        y45.j(divCustom, TtmlNode.TAG_DIV);
    }
}
