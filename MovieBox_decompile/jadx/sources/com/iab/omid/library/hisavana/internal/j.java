package com.iab.omid.library.hisavana.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.lang.ref.WeakReference;
import java.util.Iterator;

public class j {

    private static j f32764d = new j();

    private WeakReference f32765a;

    private boolean f32766b = false;

    private boolean f32767c = false;

    class a extends BroadcastReceiver {
        a() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            j jVar;
            boolean z10;
            boolean z11;
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                jVar = j.this;
                z10 = jVar.f32767c;
                z11 = true;
            } else {
                if (!intent.getAction().equals("android.intent.action.SCREEN_ON")) {
                    return;
                }
                jVar = j.this;
                z10 = jVar.f32767c;
                z11 = false;
            }
            jVar.c(z11, z10);
            j.this.f32766b = z11;
        }
    }

    public static j f() {
        return f32764d;
    }

    public void a() {
        KeyguardManager keyguardManager;
        Context context = (Context) this.f32765a.get();
        if (context == null || (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) == null) {
            return;
        }
        boolean zIsDeviceLocked = keyguardManager.isDeviceLocked();
        c(this.f32766b, zIsDeviceLocked);
        this.f32767c = zIsDeviceLocked;
    }

    public void b(Context context) {
        if (context == null) {
            return;
        }
        this.f32765a = new WeakReference(context);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        context.registerReceiver(new a(), intentFilter);
    }

    public void c(boolean z10, boolean z11) {
        if ((z11 || z10) == (this.f32767c || this.f32766b)) {
            return;
        }
        Iterator it = c.e().c().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.hisavana.adsession.h) it.next()).l().n(z11 || z10);
        }
    }
}
