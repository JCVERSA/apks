package androidx.media3.exoplayer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Looper;

final class e {

    private final Context f11303a;

    private final a f11304b;

    private final androidx.media3.common.util.p f11305c;

    private boolean f11306d;

    final class a extends BroadcastReceiver {

        private final b f11307a;

        private final androidx.media3.common.util.p f11308b;

        public a(androidx.media3.common.util.p pVar, b bVar) {
            this.f11308b = pVar;
            this.f11307a = bVar;
        }

        public void b() {
            if (e.this.f11306d) {
                this.f11307a.m();
            }
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.f11308b.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f11037a.b();
                    }
                });
            }
        }
    }

    public interface b {
        void m();
    }

    public e(Context context, Looper looper, Looper looper2, b bVar, androidx.media3.common.util.i iVar) {
        this.f11303a = context.getApplicationContext();
        this.f11305c = iVar.createHandler(looper, null);
        this.f11304b = new a(iVar.createHandler(looper2, null), bVar);
    }

    public void d() {
        this.f11303a.registerReceiver(this.f11304b, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
    }

    public void e() {
        this.f11303a.unregisterReceiver(this.f11304b);
    }

    public void f(boolean z10) {
        if (z10 == this.f11306d) {
            return;
        }
        if (z10) {
            this.f11305c.post(new Runnable() {
                @Override
                public final void run() {
                    this.f10947a.d();
                }
            });
            this.f11306d = true;
        } else {
            this.f11305c.post(new Runnable() {
                @Override
                public final void run() {
                    this.f11024a.e();
                }
            });
            this.f11306d = false;
        }
    }
}
