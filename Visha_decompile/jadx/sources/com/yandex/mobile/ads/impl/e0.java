package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.widget.CheckBox;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.LayoutRes;
import defpackage.y45;

public final class e0 {
    private final jp1 a;
    private final zv0 b;
    private final d0 c;

    public e0() {
        this(new jp1(), new zv0(), new d0());
    }

    public final qa1 a(Context context, xe2 xe2Var, aw0 aw0Var, @LayoutRes int i) {
        y45.j(context, "context");
        y45.j(xe2Var, "videoOptions");
        y45.j(aw0Var, "customControls");
        qa1 qa1Var = new qa1(context, this.a.a(context), this.b.a(context, i, aw0Var));
        this.c.getClass();
        y45.j(qa1Var, "actionViewsContainer");
        y45.j(xe2Var, "videoOptions");
        aw0 aw0VarA = qa1Var.a();
        qa1Var.b().setVisibility(8);
        CheckBox muteControl = aw0VarA != null ? aw0VarA.getMuteControl() : null;
        if (muteControl != null) {
            muteControl.setVisibility(8);
        }
        ProgressBar videoProgress = aw0VarA != null ? aw0VarA.getVideoProgress() : null;
        if (videoProgress != null) {
            videoProgress.setVisibility(8);
        }
        TextView countDownProgress = aw0VarA != null ? aw0VarA.getCountDownProgress() : null;
        if (countDownProgress != null) {
            countDownProgress.setVisibility(8);
        }
        CheckBox muteControl2 = aw0VarA != null ? aw0VarA.getMuteControl() : null;
        if (muteControl2 != null) {
            muteControl2.setChecked(xe2Var.e());
        }
        return qa1Var;
    }

    public e0(jp1 jp1Var, zv0 zv0Var, d0 d0Var) {
        y45.j(jp1Var, "replayActionViewCreator");
        y45.j(zv0Var, "controlsContainerCreator");
        y45.j(d0Var, "mediaControlsContainerConfigurator");
        this.a = jp1Var;
        this.b = zv0Var;
        this.c = d0Var;
    }
}
