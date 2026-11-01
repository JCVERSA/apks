package x0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public final class c extends BroadcastReceiver {

    public final d.b f2250a;

    public c(ru.zdevs.zarchiver.a aVar) {
        this.f2250a = aVar;
    }

    @Override
    public final synchronized void onReceive(Context context, Intent intent) {
        this.f2250a.c(null, !"android.intent.action.MEDIA_MOUNTED".equals(intent.getAction()));
    }
}
