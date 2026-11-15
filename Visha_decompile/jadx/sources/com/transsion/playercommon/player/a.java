package com.transsion.playercommon.player;

import android.util.Log;
import com.transsion.hubsdk.api.app.TranActivityManager;
import com.transsion.hubsdk.api.lighting.TranLightingManager;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public class a {
    public static volatile a e = null;
    public static boolean f = true;
    public boolean a;
    public CopyOnWriteArrayList b = new CopyOnWriteArrayList();
    public TranActivityManager c;
    public TranLightingManager d;

    public interface InterfaceC0244a {
        void b(boolean z);
    }

    public static a a() {
        if (e == null) {
            synchronized (a.class) {
                try {
                    if (e == null) {
                        e = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public boolean b() {
        return this.a;
    }

    public void c(InterfaceC0244a interfaceC0244a) {
        if (interfaceC0244a == null) {
            return;
        }
        for (int i = 0; i < this.b.size(); i++) {
            if (((WeakReference) this.b.get(i)).get() == interfaceC0244a) {
                return;
            }
        }
        this.b.add(new WeakReference(interfaceC0244a));
        interfaceC0244a.b(this.a);
    }

    public void d(boolean z) {
        if (f) {
            if (this.d == null) {
                this.d = new TranLightingManager();
            }
            try {
                if (this.d.getLightingConfig() != null) {
                    this.d.setLedMusicPlay(!z);
                    return;
                }
                if (this.c == null) {
                    this.c = new TranActivityManager();
                }
                this.c.setLedMusicPlay(!z);
            } catch (Throwable th) {
                f = false;
                this.c = null;
                this.d = null;
                Log.e("GlobalPlayManager", "setLedMusicPlay " + th);
            }
        }
    }

    public void e(boolean z) {
        this.a = z;
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            InterfaceC0244a interfaceC0244a = (InterfaceC0244a) ((WeakReference) it.next()).get();
            if (interfaceC0244a != null) {
                interfaceC0244a.b(z);
            }
        }
    }

    public void f(InterfaceC0244a interfaceC0244a) {
        if (interfaceC0244a == null) {
            return;
        }
        for (int size = this.b.size() - 1; size >= 0; size--) {
            if (((WeakReference) this.b.get(size)).get() == interfaceC0244a) {
                this.b.remove(size);
            }
        }
    }
}
