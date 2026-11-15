package com.cloud.hisavana.sdk.common.tranmeasure;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.cloud.hisavana.sdk.b4;
import java.lang.ref.WeakReference;

public class f {

    private BroadcastReceiver f21542a;

    private boolean f21543b;

    private boolean f21544c;

    private a f21545d;

    private Handler f21546e;

    interface a {
        void a(boolean z10);
    }

    static class b extends BroadcastReceiver {

        private final WeakReference f21547a;

        b(f fVar) {
            this.f21547a = new WeakReference(fVar);
        }

        public void b(String str, Context context) {
            f fVar = (f) this.f21547a.get();
            if (fVar == null) {
                return;
            }
            if ("android.intent.action.SCREEN_OFF".equals(str)) {
                b4.b().i("ScreenStateManager", "SCREEN_OFF");
                fVar.e(true);
                return;
            }
            if ("android.intent.action.USER_PRESENT".equals(str)) {
                b4.b().i("ScreenStateManager", "USER_PRESENT");
                fVar.e(false);
            } else if ("android.intent.action.SCREEN_ON".equals(str)) {
                b4.b().i("ScreenStateManager", "SCREEN_ON");
                KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
                if (keyguardManager == null || keyguardManager.inKeyguardRestrictedInputMode()) {
                    return;
                }
                fVar.e(false);
            }
        }

        @Override
        public void onReceive(final Context context, Intent intent) {
            f fVar = (f) this.f21547a.get();
            if (fVar == null || intent == null || context == null || fVar.f21546e == null) {
                return;
            }
            final String action = intent.getAction();
            fVar.f21546e.post(new Runnable() {
                @Override
                public final void run() {
                    this.f21548a.b(action, context);
                }
            });
        }
    }

    public f() {
        if (Looper.myLooper() != null) {
            this.f21546e = new Handler(Looper.myLooper());
        }
    }

    public void e(boolean z10) {
        a aVar;
        if (this.f21543b != z10) {
            this.f21543b = z10;
            if (!this.f21544c || (aVar = this.f21545d) == null) {
                return;
            }
            aVar.a(f());
        }
    }

    private boolean f() {
        return !this.f21543b;
    }

    private void g() {
        this.f21542a = new b(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                com.cloud.sdk.commonutil.util.e.a().registerReceiver(this.f21542a, intentFilter, 2);
            } else {
                com.cloud.sdk.commonutil.util.e.a().registerReceiver(this.f21542a, intentFilter);
            }
        } catch (Throwable unused) {
        }
    }

    protected void b() {
        if (this.f21542a != null) {
            try {
                com.cloud.sdk.commonutil.util.e.a().unregisterReceiver(this.f21542a);
            } catch (Throwable unused) {
            }
            this.f21542a = null;
        }
        this.f21544c = false;
        this.f21543b = false;
        this.f21545d = null;
    }

    protected void c(a aVar) {
        this.f21545d = aVar;
    }

    protected void h() {
        g();
        this.f21544c = true;
    }
}
