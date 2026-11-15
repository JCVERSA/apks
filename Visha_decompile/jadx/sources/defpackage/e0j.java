package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public final class e0j extends BroadcastReceiver {
    public final olg a;

    public e0j(l0j l0jVar, olg olgVar, i0j i0jVar) {
        this.a = olgVar;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
            this.a.f(new Runnable(this) {
                @Override
                public final void run() {
                }
            });
        }
    }
}
