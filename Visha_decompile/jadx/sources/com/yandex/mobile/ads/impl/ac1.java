package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.yandex.mobile.ads.impl.ac1;
import defpackage.y45;

public final class ac1 {
    private final xe2 a;
    private final wa1 b;
    private final double c;

    public ac1(sa1 sa1Var, xe2 xe2Var) {
        this(sa1Var, xe2Var, new wa1(sa1Var));
    }

    public final void a(aw0 aw0Var) {
        if (aw0Var != null) {
            final CheckBox muteControl = aw0Var.getMuteControl();
            if (muteControl != null) {
                muteControl.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        ac1.a(this.b, muteControl, view);
                    }
                });
                muteControl.setVisibility(this.a.d() ? 0 : 8);
            }
            ProgressBar videoProgress = aw0Var.getVideoProgress();
            if (videoProgress != null) {
                videoProgress.setVisibility(this.a.b() ? 8 : 0);
            }
            TextView countDownProgress = aw0Var.getCountDownProgress();
            if (countDownProgress != null) {
                countDownProgress.setText("");
                countDownProgress.setVisibility(0);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0034  */
    public ac1(sa1 sa1Var, xe2 xe2Var, wa1 wa1Var) {
        double dDoubleValue;
        y45.j(sa1Var, "nativeVideoAdPlayer");
        y45.j(xe2Var, "videoOptions");
        y45.j(wa1Var, "playerVolumeManager");
        this.a = xe2Var;
        this.b = wa1Var;
        Double dA = xe2Var.a();
        if (dA == null) {
            dDoubleValue = 1.0d;
        } else {
            dA = (dA.doubleValue() > 0.0d ? 1 : (dA.doubleValue() == 0.0d ? 0 : -1)) == 0 ? null : dA;
            if (dA != null) {
                dDoubleValue = dA.doubleValue();
            } else {
                dDoubleValue = 1.0d;
            }
        }
        this.c = dDoubleValue;
    }

    public static final void a(ac1 ac1Var, CheckBox checkBox, View view) {
        y45.j(ac1Var, "this$0");
        ac1Var.b.a(Double.valueOf(!checkBox.isChecked() ? ac1Var.c : 0.0d));
    }
}
