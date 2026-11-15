package com.yandex.mobile.ads.impl;

import android.widget.CheckBox;
import android.widget.ProgressBar;
import android.widget.TextView;
import defpackage.y45;

public final class xh1 {
    private final rg2 a;
    private final nc2 b;
    private final ac1 c;
    private final of2 d;
    private final a e;

    public final class a implements tc2 {
        private tc2 a;

        public a() {
        }

        @Override
        public final void a() {
            tc2 tc2Var = this.a;
            if (tc2Var != null) {
                tc2Var.a();
            }
        }

        @Override
        public final void b() {
            yb1 yb1VarB = xh1.this.a.b();
            if (yb1VarB != null) {
                qa1 qa1VarA = yb1VarB.a();
                ac1 ac1Var = xh1.this.c;
                aw0 aw0VarA = qa1VarA.a();
                ac1Var.getClass();
                if (aw0VarA != null) {
                    CheckBox muteControl = aw0VarA.getMuteControl();
                    if (muteControl != null) {
                        muteControl.setOnClickListener(null);
                        muteControl.setVisibility(8);
                    }
                    ProgressBar videoProgress = aw0VarA.getVideoProgress();
                    if (videoProgress != null) {
                        videoProgress.setProgress(0);
                        videoProgress.setVisibility(8);
                    }
                    TextView countDownProgress = aw0VarA.getCountDownProgress();
                    if (countDownProgress != null) {
                        countDownProgress.setText("");
                        countDownProgress.setVisibility(8);
                    }
                }
            }
            tc2 tc2Var = this.a;
            if (tc2Var != null) {
                tc2Var.b();
            }
        }

        @Override
        public final void c() {
            yb1 yb1VarB = xh1.this.a.b();
            if (yb1VarB != null) {
                xh1.this.d.a(yb1VarB);
            }
            tc2 tc2Var = this.a;
            if (tc2Var != null) {
                tc2Var.c();
            }
        }

        public final void a(tc2 tc2Var) {
            this.a = tc2Var;
        }
    }

    public xh1(rg2 rg2Var, nc2 nc2Var, ac1 ac1Var, nl1 nl1Var) {
        y45.j(rg2Var, "videoViewAdapter");
        y45.j(nc2Var, "playbackController");
        y45.j(ac1Var, "controlsConfigurator");
        y45.j(nl1Var, "progressBarConfigurator");
        this.a = rg2Var;
        this.b = nc2Var;
        this.c = ac1Var;
        this.d = new of2(ac1Var, nl1Var);
        this.e = new a();
    }

    public final void a(tc2 tc2Var) {
        this.e.a(tc2Var);
    }

    public final void a() {
        this.b.a(this.e);
        this.b.play();
    }

    public final void a(yb1 yb1Var) {
        y45.j(yb1Var, "videoView");
        this.b.stop();
        qa1 qa1VarA = yb1Var.a();
        ac1 ac1Var = this.c;
        aw0 aw0VarA = qa1VarA.a();
        ac1Var.getClass();
        if (aw0VarA != null) {
            CheckBox muteControl = aw0VarA.getMuteControl();
            if (muteControl != null) {
                muteControl.setOnClickListener(null);
                muteControl.setVisibility(8);
            }
            ProgressBar videoProgress = aw0VarA.getVideoProgress();
            if (videoProgress != null) {
                videoProgress.setProgress(0);
                videoProgress.setVisibility(8);
            }
            TextView countDownProgress = aw0VarA.getCountDownProgress();
            if (countDownProgress != null) {
                countDownProgress.setText("");
                countDownProgress.setVisibility(8);
            }
        }
    }
}
