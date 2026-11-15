package com.yandex.mobile.ads.impl;

import android.R;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ProgressBar;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.DivPreloader;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.DivCustom;
import defpackage.oj3;
import defpackage.y45;
import org.json.JSONException;
import org.json.JSONObject;

public final class c20 implements com.yandex.div.core.a {
    @Override
    public final void bindView(View view, DivCustom divCustom, Div2View div2View, oj3 oj3Var, DivStatePath divStatePath) {
        y45.j(view, "view");
        y45.j(divCustom, TtmlNode.TAG_DIV);
        y45.j(div2View, "divView");
        y45.j(oj3Var, "expressionResolver");
        y45.j(divStatePath, "path");
    }

    @Override
    public final View createView(DivCustom divCustom, Div2View div2View, oj3 oj3Var, DivStatePath divStatePath) throws JSONException {
        int color;
        y45.j(divCustom, TtmlNode.TAG_DIV);
        y45.j(div2View, "divView");
        y45.j(oj3Var, "expressionResolver");
        y45.j(divStatePath, "path");
        String string = null;
        ProgressBar progressBar = new ProgressBar(div2View.getContext(), null, R.attr.progressBarStyleHorizontal);
        JSONObject jSONObject = divCustom.i;
        if (jSONObject == null || !jSONObject.has("progress_color")) {
            string = "#000000";
        } else {
            JSONObject jSONObject2 = divCustom.i;
            if (jSONObject2 != null) {
                string = jSONObject2.getString("progress_color");
            }
        }
        try {
            color = Color.parseColor(string);
        } catch (Throwable unused) {
            color = -16777216;
        }
        Drawable drawable = progressBar.getContext().getDrawable(com.yandex.mobile.ads.R.drawable.monetization_ads_internal_circular_close_progress);
        if (drawable != null) {
            drawable.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        }
        progressBar.setProgressDrawable(drawable);
        return progressBar;
    }

    @Override
    public final boolean isCustomTypeSupported(String str) {
        y45.j(str, "type");
        return y45.e(str, "close_progress_view");
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
