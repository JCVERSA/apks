package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.widget.Button;
import defpackage.y45;

public final class jp1 {
    private final lp1 a;

    public jp1() {
        this(new lp1());
    }

    public final hp1 a(Context context) {
        y45.j(context, "context");
        Button buttonA = this.a.a(context);
        buttonA.setTag(uh2.a("replay_button"));
        buttonA.setVisibility(8);
        hp1 hp1Var = new hp1(context, buttonA);
        hp1Var.addView(buttonA);
        return hp1Var;
    }

    public jp1(lp1 lp1Var) {
        y45.j(lp1Var, "replayButtonCreator");
        this.a = lp1Var;
    }
}
