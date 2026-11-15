package com.yandex.mobile.ads.impl;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.view.View;
import android.widget.ProgressBar;
import androidx.annotation.ColorInt;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.DivPreloader;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.DivCustom;
import defpackage.oj3;
import defpackage.y45;
import kotlin.Result;
import org.json.JSONObject;

public abstract class b20 implements com.yandex.div.core.a {
    @ColorInt
    private static Integer a(DivCustom divCustom, String str) {
        Object objM279constructorimpl;
        JSONObject jSONObject = divCustom.i;
        String strOptString = jSONObject != null ? jSONObject.optString(str) : null;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(Integer.valueOf(Color.parseColor(strOptString)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        return (Integer) (Result.m285isFailureimpl(objM279constructorimpl) ? null : objM279constructorimpl);
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
        y45.j(divCustom, TtmlNode.TAG_DIV);
        y45.j(div2View, "divView");
        y45.j(oj3Var, "expressionResolver");
        y45.j(divStatePath, "path");
        ProgressBar progressBar = new ProgressBar(div2View.getContext(), null, R.attr.progressBarStyleHorizontal);
        Integer numA = a(divCustom, "progress_color");
        if (numA != null) {
            progressBar.setProgressTintList(ColorStateList.valueOf(numA.intValue()));
        }
        Integer numA2 = a(divCustom, "background_color");
        if (numA2 != null) {
            progressBar.setProgressBackgroundTintList(ColorStateList.valueOf(numA2.intValue()));
        }
        return progressBar;
    }

    @Override
    public abstract boolean isCustomTypeSupported(String str);

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
