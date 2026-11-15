package com.mgmi.ads.api.e;

import defpackage.j4d;
import java.lang.ref.WeakReference;

public class k {
    private static k a;
    private WeakReference<com.mgmi.ads.api.f.a> b;

    public static k a() {
        if (a == null) {
            synchronized (k.class) {
                try {
                    if (a == null) {
                        a = new k();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public void a(final com.mgmi.ads.api.h hVar) {
        if (com.mgmi.ads.api.h.IS_SHOW_SCHEME.equals(hVar)) {
            com.mgmi.f.e.a().e = true;
        } else if (com.mgmi.ads.api.h.IS_DISMISS_SCHEME.equals(hVar)) {
            com.mgmi.f.e.a().e = false;
        }
        WeakReference<com.mgmi.ads.api.f.a> weakReference = this.b;
        if (weakReference != null) {
            try {
                if (weakReference.get() != null) {
                    j4d.b(new Runnable() {
                        @Override
                        public void run() {
                            try {
                                if (k.this.b == null || k.this.b.get() == null) {
                                    return;
                                }
                                ((com.mgmi.ads.api.f.a) k.this.b.get()).a(hVar);
                            } catch (Throwable unused) {
                            }
                        }
                    });
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
