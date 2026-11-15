package com.journeyapps.barcodescanner.camera;

import android.hardware.Camera;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;

public final class a {

    private static final String f33126i = "a";

    private static final Collection f33127j;

    private boolean f33128a;

    private boolean f33129b;

    private final boolean f33130c;

    private final Camera f33131d;

    private Handler f33132e;

    private int f33133f = 1;

    private final Handler.Callback f33134g;

    private final Camera.AutoFocusCallback f33135h;

    class C0440a implements Handler.Callback {
        C0440a() {
        }

        @Override
        public boolean handleMessage(Message message) {
            if (message.what != a.this.f33133f) {
                return false;
            }
            a.this.h();
            return true;
        }
    }

    class b implements Camera.AutoFocusCallback {
        b() {
        }

        public void b() {
            a.this.f33129b = false;
            a.this.f();
        }

        @Override
        public void onAutoFocus(boolean z10, Camera camera) {
            a.this.f33132e.post(new Runnable() {
                @Override
                public final void run() {
                    this.f33138a.b();
                }
            });
        }
    }

    static {
        ArrayList arrayList = new ArrayList(2);
        f33127j = arrayList;
        arrayList.add("auto");
        arrayList.add("macro");
    }

    public a(Camera camera, CameraSettings cameraSettings) {
        C0440a c0440a = new C0440a();
        this.f33134g = c0440a;
        this.f33135h = new b();
        this.f33132e = new Handler(c0440a);
        this.f33131d = camera;
        String focusMode = camera.getParameters().getFocusMode();
        boolean z10 = cameraSettings.c() && f33127j.contains(focusMode);
        this.f33130c = z10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Current focus mode '");
        sb2.append(focusMode);
        sb2.append("'; use auto focus? ");
        sb2.append(z10);
        i();
    }

    public synchronized void f() {
        if (!this.f33128a && !this.f33132e.hasMessages(this.f33133f)) {
            Handler handler = this.f33132e;
            handler.sendMessageDelayed(handler.obtainMessage(this.f33133f), 2000L);
        }
    }

    private void g() {
        this.f33132e.removeMessages(this.f33133f);
    }

    public void h() {
        if (!this.f33130c || this.f33128a || this.f33129b) {
            return;
        }
        try {
            this.f33131d.autoFocus(this.f33135h);
            this.f33129b = true;
        } catch (RuntimeException e10) {
            Log.w(f33126i, "Unexpected exception while focusing", e10);
            f();
        }
    }

    public void i() {
        this.f33128a = false;
        h();
    }

    public void j() {
        this.f33128a = true;
        this.f33129b = false;
        g();
        if (this.f33130c) {
            try {
                this.f33131d.cancelAutoFocus();
            } catch (RuntimeException e10) {
                Log.w(f33126i, "Unexpected exception while cancelling focusing", e10);
            }
        }
    }
}
