package com.transsion.playercommon.player;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.view.KeyEvent;
import com.transsion.playercommon.R;
import com.transsion.playercommon.receiver.HeadsetsControllerReceiver;
import defpackage.il6;
import defpackage.sq3;

public class PlayerService extends Service implements b.a, HeadsetsControllerReceiver.a, sq3.a, a.InterfaceC0244a, il6.c {
    public static int c;
    public static int d;
    public static int e;
    public Context b;

    public void a(int i, KeyEvent keyEvent) {
    }

    public void b(boolean z) {
    }

    public void i(int i, KeyEvent keyEvent) {
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        c = getResources().getDimensionPixelOffset(R.dimen.notification_image_radius);
        d = getResources().getDimensionPixelOffset(R.dimen.notification_cover_width);
        e = getResources().getDimensionPixelOffset(R.dimen.notification_cover_height);
        a.a().c(this);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        a.a().f(this);
    }

    public void onPlayerStateUpdate(int i) {
    }

    public void t(boolean z) {
    }
}
