package com.cloud.hisavana.sdk.common.tranmeasure;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import defpackage.ikd;
import defpackage.ul4;
import java.lang.ref.WeakReference;

public class f {
    public BroadcastReceiver a;
    public boolean b;
    public boolean c;
    public a d;
    public Handler e;

    public interface a {
        void a(boolean z);
    }

    public static class b extends BroadcastReceiver {
        public final WeakReference a;

        public b(f fVar) {
            this.a = new WeakReference(fVar);
        }

        public final void b(String str, Context context) {
            f fVar = (f) this.a.get();
            if (fVar == null) {
                return;
            }
            if ("android.intent.action.SCREEN_OFF".equals(str)) {
                ikd.b().i("ScreenStateManager", "SCREEN_OFF");
                fVar.e(true);
                return;
            }
            if ("android.intent.action.USER_PRESENT".equals(str)) {
                ikd.b().i("ScreenStateManager", "USER_PRESENT");
                fVar.e(false);
            } else if ("android.intent.action.SCREEN_ON".equals(str)) {
                ikd.b().i("ScreenStateManager", "SCREEN_ON");
                KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
                if (keyguardManager == null || keyguardManager.inKeyguardRestrictedInputMode()) {
                    return;
                }
                fVar.e(false);
            }
        }

        @Override
        public void onReceive(final Context context, Intent intent) {
            f fVar = (f) this.a.get();
            if (fVar == null || intent == null || context == null || fVar.e == null) {
                return;
            }
            final String action = intent.getAction();
            fVar.e.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.b(action, context);
                }
            });
        }
    }

    public f() {
        if (Looper.myLooper() != null) {
            this.e = new Handler(Looper.myLooper());
        }
    }

    public void b() {
        if (this.a != null) {
            try {
                ul4.a().unregisterReceiver(this.a);
            } catch (Throwable unused) {
            }
            this.a = null;
        }
        this.c = false;
        this.b = false;
        this.d = null;
    }

    public void c(a aVar) {
        this.d = aVar;
    }

    public final void e(boolean z) {
        a aVar;
        if (this.b != z) {
            this.b = z;
            if (!this.c || (aVar = this.d) == null) {
                return;
            }
            aVar.a(f());
        }
    }

    public final boolean f() {
        return !this.b;
    }

    public final void g() {
        this.a = new b(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                ul4.a().registerReceiver(this.a, intentFilter, 2);
            } else {
                ul4.a().registerReceiver(this.a, intentFilter);
            }
        } catch (Throwable unused) {
        }
    }

    public void h() {
        g();
        this.c = true;
    }
}
