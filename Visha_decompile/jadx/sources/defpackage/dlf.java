package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.internal.util.zzci;

public final class dlf extends BroadcastReceiver {
    public final zzci a;

    public dlf(zzci zzciVar) {
        this.a = zzciVar;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        this.a.b(context, intent);
    }
}
