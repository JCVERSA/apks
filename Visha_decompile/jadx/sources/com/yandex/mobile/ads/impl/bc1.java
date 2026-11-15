package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.TextureView;
import androidx.annotation.LayoutRes;
import defpackage.y45;

public final class bc1 {
    private final e0 a;
    private final bf2 b;

    public bc1() {
        this(new e0(), new bf2());
    }

    public final yb1 a(Context context, xe2 xe2Var, aw0 aw0Var, lb2 lb2Var, @LayoutRes int i) {
        y45.j(context, "context");
        y45.j(xe2Var, "videoOptions");
        y45.j(aw0Var, "customControls");
        TextureView textureView = new TextureView(context);
        textureView.setVisibility(8);
        qa1 qa1VarA = this.a.a(context, xe2Var, aw0Var, i);
        qa1VarA.setVisibility(8);
        af2 af2VarA = this.b.a(context, lb2Var);
        af2VarA.setVisibility(8);
        yb1 yb1Var = new yb1(context, af2VarA, textureView, qa1VarA);
        yb1Var.addView(af2VarA);
        yb1Var.addView(textureView);
        yb1Var.addView(qa1VarA);
        yb1Var.setTag(uh2.a("native_video_view"));
        return yb1Var;
    }

    public bc1(e0 e0Var, bf2 bf2Var) {
        y45.j(e0Var, "actionViewsContainerCreator");
        y45.j(bf2Var, "placeholderViewCreator");
        this.a = e0Var;
        this.b = bf2Var;
    }
}
