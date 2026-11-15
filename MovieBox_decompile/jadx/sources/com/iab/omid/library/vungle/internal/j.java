package com.iab.omid.library.vungle.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.lang.ref.WeakReference;
import java.util.Iterator;

public class j {

    private static j f32994d = new j();

    private WeakReference f32995a;

    private boolean f32996b = false;

    private boolean f32997c = false;

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
                z10 = jVar.f32997c;
                z11 = true;
            } else {
                if (!intent.getAction().equals("android.intent.action.SCREEN_ON")) {
                    return;
                }
                jVar = j.this;
                z10 = jVar.f32997c;
                z11 = false;
            }
            jVar.c(z11, z10);
            j.this.f32996b = z11;
        }
    }

    public static j f() {
        return f32994d;
    }

    public void a() {
        Context context = (Context) this.f32995a.get();
        if (context == null) {
            return;
        }
        boolean zIsDeviceLocked = ((KeyguardManager) context.getSystemService("keyguard")).isDeviceLocked();
        c(this.f32996b, zIsDeviceLocked);
        this.f32997c = zIsDeviceLocked;
    }

    public void b(Context context) {
        if (context == null) {
            return;
        }
        this.f32995a = new WeakReference(context);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        context.registerReceiver(new a(), intentFilter);
    }

    public void c(boolean z10, boolean z11) {
        if ((z11 || z10) == (this.f32997c || this.f32996b)) {
            return;
        }
        Iterator it = c.e().c().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.vungle.adsession.h) it.next()).k().n(z11 || z10);
        }
    }
}
