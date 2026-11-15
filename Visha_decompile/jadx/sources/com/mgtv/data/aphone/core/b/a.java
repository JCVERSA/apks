package com.mgtv.data.aphone.core.b;

import android.app.Activity;
import java.lang.ref.SoftReference;

public class a {
    private SoftReference<Activity> a;
    private b b;
    private InterfaceC0176a c;

    public interface InterfaceC0176a {
        void a();
    }

    public interface b {
        void a();
    }

    public void a(Activity activity) {
        this.a = new SoftReference<>(activity);
    }

    public void b() {
        InterfaceC0176a interfaceC0176a = this.c;
        if (interfaceC0176a != null) {
            interfaceC0176a.a();
        }
    }

    public void a() {
        b bVar = this.b;
        if (bVar != null) {
            bVar.a();
        }
    }
}
