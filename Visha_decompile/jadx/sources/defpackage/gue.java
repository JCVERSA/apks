package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public final class gue extends BroadcastReceiver {
    public final jue a;

    public gue(jue jueVar) {
        this.a = jueVar;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        this.a.j(3);
    }
}
