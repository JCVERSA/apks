package com.transsion.magicshow.application;

import android.os.Process;
import android.util.Log;
import com.transsion.magicmovie.application.VideoApplication;
import com.transsion.playercommon.core.MainApp;
import defpackage.fhb;
import defpackage.ge;
import defpackage.ghb;
import defpackage.gj4;
import defpackage.n54;
import defpackage.nw9;

public class VideoPlayerApplication extends VideoApplication {
    @Override
    public void onCreate() {
        if (Process.isIsolated()) {
            Log.e("VideoPlayerApplication", "Error init isIsolated");
            super.onCreate();
            return;
        }
        MainApp.l(false);
        ge.i("gp");
        ge.j(83033);
        n54.b(new gj4());
        super.onCreate();
        new nw9().b(false).c(false).d(ge.e()).a(this);
        ghb.b(fhb.a());
        if (ge.d()) {
            ghb.a().a(this, "f0801c09498ef8fea272df9ac88acd53", false);
        }
    }
}
