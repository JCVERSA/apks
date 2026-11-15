package com.iab.omid.library.mmadbridge.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.lang.ref.WeakReference;
import java.util.Iterator;

public class j {

    private static j f32883d = new j();

    private WeakReference f32884a;

    private boolean f32885b = false;

    private boolean f32886c = false;

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
                z10 = jVar.f32886c;
                z11 = true;
            } else {
                if (!intent.getAction().equals("android.intent.action.SCREEN_ON")) {
                    return;
                }
                jVar = j.this;
                z10 = jVar.f32886c;
                z11 = false;
            }
            jVar.c(z11, z10);
            j.this.f32885b = z11;
        }
    }

    public static j f() {
        return f32883d;
    }

    public void a() {
        Context context = (Context) this.f32884a.get();
        if (context == null) {
            return;
        }
        boolean zIsDeviceLocked = ((KeyguardManager) context.getSystemService("keyguard")).isDeviceLocked();
        c(this.f32885b, zIsDeviceLocked);
        this.f32886c = zIsDeviceLocked;
    }

    public void b(Context context) {
        if (context == null) {
            return;
        }
        this.f32884a = new WeakReference(context);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        context.registerReceiver(new a(), intentFilter);
    }

    public void c(boolean z10, boolean z11) {
        if ((z11 || z10) == (this.f32886c || this.f32885b)) {
            return;
        }
        Iterator it = c.e().c().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.mmadbridge.adsession.h) it.next()).t().q(z11 || z10);
        }
    }
}
