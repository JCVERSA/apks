package com.yandex.div.core;

import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.DivCustom;
import defpackage.oj3;
import defpackage.y45;

public interface a {
    public static final b b = b.a;
    public static final a c = new C0279a();

    public static final class C0279a implements a {
        @Override
        public void bindView(View view, DivCustom divCustom, Div2View div2View, oj3 oj3Var, DivStatePath divStatePath) {
            y45.j(view, "view");
            y45.j(divCustom, TtmlNode.TAG_DIV);
            y45.j(div2View, "divView");
            y45.j(oj3Var, "expressionResolver");
            y45.j(divStatePath, "path");
        }

        @Override
        public View createView(DivCustom divCustom, Div2View div2View, oj3 oj3Var, DivStatePath divStatePath) {
            y45.j(divCustom, TtmlNode.TAG_DIV);
            y45.j(div2View, "divView");
            y45.j(oj3Var, "expressionResolver");
            y45.j(divStatePath, "path");
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean isCustomTypeSupported(String str) {
            y45.j(str, "type");
            return false;
        }

        @Override
        public DivPreloader.d preload(DivCustom divCustom, DivPreloader.a aVar) {
            y45.j(divCustom, TtmlNode.TAG_DIV);
            y45.j(aVar, "callBack");
            return DivPreloader.d.a.c();
        }

        @Override
        public void release(View view, DivCustom divCustom) {
            y45.j(view, "view");
            y45.j(divCustom, TtmlNode.TAG_DIV);
        }
    }

    public static final class b {
        public static final b a = new b();
    }

    void bindView(View view, DivCustom divCustom, Div2View div2View, oj3 oj3Var, DivStatePath divStatePath);

    View createView(DivCustom divCustom, Div2View div2View, oj3 oj3Var, DivStatePath divStatePath);

    boolean isCustomTypeSupported(String str);

    default DivPreloader.d preload(DivCustom divCustom, DivPreloader.a aVar) {
        y45.j(divCustom, TtmlNode.TAG_DIV);
        y45.j(aVar, "callBack");
        return DivPreloader.d.a.c();
    }

    void release(View view, DivCustom divCustom);
}
