package defpackage;

import android.app.KeyguardManager;
import android.content.Context;
import android.content.IntentFilter;
import java.lang.ref.WeakReference;
import java.util.Iterator;

public final class lvh {
    public static final lvh d = new lvh();
    public WeakReference a;
    public boolean b = false;
    public boolean c = false;

    public static lvh a() {
        return d;
    }

    public final void c() {
        KeyguardManager keyguardManager;
        Context context = (Context) this.a.get();
        if (context == null || (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) == null) {
            return;
        }
        boolean zIsDeviceLocked = keyguardManager.isDeviceLocked();
        d(this.b, zIsDeviceLocked);
        this.c = zIsDeviceLocked;
    }

    public final void d(boolean z, boolean z2) {
        if ((z2 || z) == (this.c || this.b)) {
            return;
        }
        Iterator it = cvh.a().c().iterator();
        while (it.hasNext()) {
            ((suh) it.next()).g().m(z2 || z);
        }
    }

    public final void e(Context context) {
        if (context == null) {
            return;
        }
        this.a = new WeakReference(context);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        context.registerReceiver(new kvh(this), intentFilter);
    }
}
