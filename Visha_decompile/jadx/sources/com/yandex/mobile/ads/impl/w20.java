package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.view2.Div2View;
import defpackage.oj3;
import defpackage.y45;

public final class w20 implements defpackage.wi2 {
    private final v20 a;
    private final y20 b;

    public static final class a implements View.OnClickListener {
        private final v20 a;
        private final x20 b;

        public a(v20 v20Var, x20 x20Var) {
            y45.j(v20Var, "clickHandler");
            y45.j(x20Var, "clickData");
            this.a = v20Var;
            this.b = x20Var;
        }

        @Override
        public final void onClick(View view) {
            if (view != null) {
                this.a.a(this.b.a(), view);
            }
        }
    }

    public w20(v20 v20Var) {
        this(v20Var, new y20(0));
    }

    @Override
    public void beforeBindView(Div2View div2View, oj3 oj3Var, View view, defpackage.og2 og2Var) {
        super.beforeBindView(div2View, oj3Var, view, og2Var);
    }

    @Override
    public final void bindView(Div2View div2View, oj3 oj3Var, View view, defpackage.og2 og2Var) {
        y45.j(div2View, "divView");
        y45.j(oj3Var, "expressionResolver");
        y45.j(view, "view");
        y45.j(og2Var, TtmlNode.TAG_DIV);
        Context context = view.getContext();
        x20 x20VarA = this.b.a(og2Var);
        if (x20VarA != null) {
            a aVar = new a(this.a, x20VarA);
            y45.g(context);
            to toVar = new to(context, aVar);
            view.setOnTouchListener(toVar);
            view.setOnClickListener(toVar);
        }
    }

    @Override
    public final boolean matches(defpackage.og2 og2Var) {
        y45.j(og2Var, TtmlNode.TAG_DIV);
        return this.b.a(og2Var) != null;
    }

    @Override
    public void preprocess(defpackage.og2 og2Var, oj3 oj3Var) {
        super.preprocess(og2Var, oj3Var);
    }

    @Override
    public final void unbindView(Div2View div2View, oj3 oj3Var, View view, defpackage.og2 og2Var) {
        y45.j(div2View, "divView");
        y45.j(oj3Var, "expressionResolver");
        y45.j(view, "view");
        y45.j(og2Var, TtmlNode.TAG_DIV);
        view.setOnTouchListener(null);
        view.setOnClickListener(null);
    }

    public w20(v20 v20Var, y20 y20Var) {
        y45.j(v20Var, "clickHandler");
        y45.j(y20Var, "clickExtensionParser");
        this.a = v20Var;
        this.b = y20Var;
    }
}
