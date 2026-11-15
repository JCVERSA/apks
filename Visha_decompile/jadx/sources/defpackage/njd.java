package defpackage;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.lang.ref.WeakReference;
import java.util.Iterator;

public class njd {
    public static njd d = new njd();
    public WeakReference a;
    public boolean b = false;
    public boolean c = false;

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            njd njdVar;
            boolean z;
            boolean z2;
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                njdVar = njd.this;
                z = njdVar.c;
                z2 = true;
            } else {
                if (!intent.getAction().equals("android.intent.action.SCREEN_ON")) {
                    return;
                }
                njdVar = njd.this;
                z = njdVar.c;
                z2 = false;
            }
            njdVar.c(z2, z);
            njd.this.b = z2;
        }
    }

    public static njd f() {
        return d;
    }

    public void a() {
        KeyguardManager keyguardManager;
        Context context = (Context) this.a.get();
        if (context == null || (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) == null) {
            return;
        }
        boolean zIsDeviceLocked = keyguardManager.isDeviceLocked();
        c(this.b, zIsDeviceLocked);
        this.c = zIsDeviceLocked;
    }

    public void b(Context context) {
        if (context == null) {
            return;
        }
        this.a = new WeakReference(context);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        context.registerReceiver(new a(), intentFilter);
    }

    public void c(boolean z, boolean z2) {
        if ((z2 || z) == (this.c || this.b)) {
            return;
        }
        Iterator it = i8d.e().c().iterator();
        while (it.hasNext()) {
            ((e3d) it.next()).l().n(z2 || z);
        }
    }
}
