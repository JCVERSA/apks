package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public final class mgj extends BroadcastReceiver {
    public final qgj a;

    public mgj(qgj qgjVar, ogj ogjVar) {
        this.a = qgjVar;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        if (isInitialStickyBroadcast()) {
            return;
        }
        qgj qgjVar = this.a;
        qgjVar.j(ggj.d(context, intent, qgjVar.h, qgjVar.g));
    }
}
