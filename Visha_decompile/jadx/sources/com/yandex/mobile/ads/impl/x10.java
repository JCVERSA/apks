package com.yandex.mobile.ads.impl;

import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.DivPreloader;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.DivCustom;
import defpackage.oj3;
import defpackage.y45;

public final class x10 implements com.yandex.div.core.a {
    private final com.yandex.div.core.a[] a;

    public x10(com.yandex.div.core.a... aVarArr) {
        y45.j(aVarArr, "divCustomViewAdapters");
        this.a = aVarArr;
    }

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
        com.yandex.div.core.a aVar;
        View viewCreateView;
        y45.j(divCustom, TtmlNode.TAG_DIV);
        y45.j(div2View, "divView");
        y45.j(oj3Var, "expressionResolver");
        y45.j(divStatePath, "path");
        com.yandex.div.core.a[] aVarArr = this.a;
        int length = aVarArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                aVar = null;
                break;
            }
            aVar = aVarArr[i];
            if (aVar.isCustomTypeSupported(divCustom.j)) {
                break;
            }
            i++;
        }
        return (aVar == null || (viewCreateView = aVar.createView(divCustom, div2View, oj3Var, divStatePath)) == null) ? new View(div2View.getContext()) : viewCreateView;
    }

    @Override
    public final boolean isCustomTypeSupported(String str) {
        y45.j(str, "type");
        for (com.yandex.div.core.a aVar : this.a) {
            if (aVar.isCustomTypeSupported(str)) {
                return true;
            }
        }
        return false;
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
