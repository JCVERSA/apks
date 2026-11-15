package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.internal.util.zzr;
import com.google.android.gms.ads.internal.util.zzs;
import java.util.Objects;

public final class ghj extends BroadcastReceiver {
    public final zzs a;

    public ghj(zzs zzsVar, zzr zzrVar) {
        this.a = zzsVar;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        if (Objects.equals(intent.getAction(), "android.intent.action.USER_PRESENT")) {
            this.a.e = true;
        } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            this.a.e = false;
        }
    }
}
