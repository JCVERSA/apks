package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import defpackage.v2h;

public final class y0h extends BroadcastReceiver {
    public final v2h a;

    public y0h(v2h v2hVar, w1h w1hVar) {
        this.a = v2hVar;
    }

    @Override
    public final void onReceive(final Context context, Intent intent) {
        this.a.a.execute(new Runnable() {
            @Override
            public final void run() {
                v2h.d(this.zza.a, context);
            }
        });
    }
}
