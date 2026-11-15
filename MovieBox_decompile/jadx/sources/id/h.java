package id;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;

public final class h {

    private final Context f62066a;

    private Runnable f62070e;

    private boolean f62071f;

    private boolean f62068c = false;

    private final BroadcastReceiver f62067b = new b();

    private Handler f62069d = new Handler();

    final class b extends BroadcastReceiver {
        private b() {
        }

        public void b(boolean z10) {
            h.this.f(z10);
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                final boolean z10 = intent.getIntExtra("plugged", -1) <= 0;
                h.this.f62069d.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f62073a.b(z10);
                    }
                });
            }
        }
    }

    public h(Context context, Runnable runnable) {
        this.f62066a = context;
        this.f62070e = runnable;
    }

    private void e() {
        this.f62069d.removeCallbacksAndMessages(null);
    }

    public void f(boolean z10) {
        this.f62071f = z10;
        if (this.f62068c) {
            c();
        }
    }

    private void g() {
        if (this.f62068c) {
            return;
        }
        this.f62066a.registerReceiver(this.f62067b, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        this.f62068c = true;
    }

    private void i() {
        if (this.f62068c) {
            this.f62066a.unregisterReceiver(this.f62067b);
            this.f62068c = false;
        }
    }

    public void c() {
        e();
        if (this.f62071f) {
            this.f62069d.postDelayed(this.f62070e, 300000L);
        }
    }

    public void d() {
        e();
        i();
    }

    public void h() {
        g();
        c();
    }
}
