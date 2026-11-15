package com.yandex.mobile.ads.impl;

import android.widget.CheckBox;
import android.widget.ProgressBar;
import android.widget.TextView;
import defpackage.y45;

public final class pj2 implements aw0 {
    private final q71 a;

    public pj2(q71 q71Var) {
        y45.j(q71Var, "weakViewProvider");
        this.a = q71Var;
    }

    @Override
    public final TextView getCountDownProgress() {
        return null;
    }

    @Override
    public final CheckBox getMuteControl() {
        return this.a.c();
    }

    @Override
    public final ProgressBar getVideoProgress() {
        return this.a.e();
    }
}
