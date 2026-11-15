package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.DivPreloader;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.DivCustom;
import defpackage.oj3;
import defpackage.y45;
import org.json.JSONObject;

public final class a20 implements com.yandex.div.core.a {
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
        id1.a aVar = id1.c;
        y45.g(context);
        o82 o82VarC = aVar.a(context).c();
        JSONObject jSONObject = divCustom.i;
        Object obj = jSONObject != null ? jSONObject.get("on_image_url") : null;
        String str = obj instanceof String ? (String) obj : null;
        JSONObject jSONObject2 = divCustom.i;
        Object obj2 = jSONObject2 != null ? jSONObject2.get("off_image_url") : null;
        String str2 = obj2 instanceof String ? (String) obj2 : null;
        r52 r52Var = new r52(context);
        if (str != null) {
            r52Var.setCheckedIcon(new BitmapDrawable(context.getResources(), o82VarC.a(str)));
        }
        if (str2 != null) {
            r52Var.setUncheckedIcon(new BitmapDrawable(context.getResources(), o82VarC.a(str2)));
        }
        return r52Var;
    }

    @Override
    public final boolean isCustomTypeSupported(String str) {
        y45.j(str, "type");
        return y45.e("mute_button", str);
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
