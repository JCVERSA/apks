package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.ads.f0;

public final class lse extends BroadcastReceiver {
    public final f0 a;

    public lse(f0 f0Var) {
        this.a = f0Var;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        this.a.f();
    }
}
