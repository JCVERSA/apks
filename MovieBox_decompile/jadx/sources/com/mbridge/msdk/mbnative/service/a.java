package com.mbridge.msdk.mbnative.service;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbnative.controller.NativeController;
import com.mbridge.msdk.mbnative.controller.d;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.NativeListener;
import java.util.List;
import java.util.Map;

public class a {

    private NativeController f35574a;

    private Handler f35575b = new Handler(Looper.getMainLooper());

    private com.mbridge.msdk.mbnative.listener.a f35576c;

    private NativeListener.NativeTrackingListener f35577d;

    class RunnableC0486a implements Runnable {
        RunnableC0486a() {
        }

        @Override
        public void run() {
            a.this.f();
        }
    }

    public a() {
    }

    public void f() {
        this.f35576c.onAdLoadError("current request is loading");
        this.f35576c.b();
    }

    public static void preload(Map<String, Object> map, int i10) {
        o0.c("NativeProvider", "native provider preload");
        new d().a(map, i10);
    }

    public void b(View view, Campaign campaign) {
        o0.c("NativeProvider", "native provider unregisterView");
        NativeController nativeController = this.f35574a;
        if (nativeController == null) {
            return;
        }
        nativeController.b(campaign, view);
    }

    public String c() {
        NativeController nativeController = this.f35574a;
        return nativeController != null ? nativeController.g() : "";
    }

    public void d() {
        a(0, "");
    }

    public void e() {
        a(1, "");
    }

    public void g() {
        try {
            this.f35574a.i();
        } catch (Exception unused) {
            o0.b("NativeProvider", "release failed");
        }
    }

    public void a(com.mbridge.msdk.mbnative.listener.a aVar) {
        this.f35576c = aVar;
    }

    public a(com.mbridge.msdk.mbnative.listener.a aVar, NativeListener.NativeTrackingListener nativeTrackingListener) {
        this.f35576c = aVar;
        this.f35577d = nativeTrackingListener;
    }

    public void a(NativeListener.NativeTrackingListener nativeTrackingListener) {
        this.f35577d = nativeTrackingListener;
    }

    public void a(Context context, Resources resources, Map<String, Object> map) {
        this.f35574a = new NativeController(this.f35576c, this.f35577d, map, context);
    }

    public void b(View view, List<View> list, Campaign campaign) {
        o0.c("NativeProvider", "native provider unregisterView");
        NativeController nativeController = this.f35574a;
        if (nativeController == null) {
            return;
        }
        nativeController.b(campaign, view, list);
    }

    public void a(String str) {
        a(0, str);
    }

    public void a() {
        try {
            this.f35574a.d();
        } catch (Exception unused) {
            o0.b("NativeProvider", "clear cache failed");
        }
    }

    public String b() {
        NativeController nativeController = this.f35574a;
        if (nativeController != null) {
            return nativeController.e();
        }
        return "";
    }

    public void a(View view, List<View> list, Campaign campaign) {
        NativeController nativeController = this.f35574a;
        if (nativeController == null) {
            return;
        }
        nativeController.a(campaign, view, list);
    }

    public void a(View view, Campaign campaign) {
        o0.c("NativeProvider", "native provider registerView");
        NativeController nativeController = this.f35574a;
        if (nativeController == null) {
            return;
        }
        nativeController.a(campaign, view);
    }

    private void a(int i10, String str) {
        if (this.f35574a != null) {
            com.mbridge.msdk.mbnative.listener.a aVar = this.f35576c;
            if (aVar != null && aVar.a()) {
                if (t0.h()) {
                    f();
                    return;
                } else {
                    this.f35575b.post(new RunnableC0486a());
                    return;
                }
            }
            com.mbridge.msdk.mbnative.listener.a aVar2 = this.f35576c;
            if (aVar2 != null) {
                aVar2.b();
            }
            this.f35574a.a(i10, str);
        }
    }
}
