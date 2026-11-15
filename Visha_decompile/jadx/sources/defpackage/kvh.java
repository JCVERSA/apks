package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public final class kvh extends BroadcastReceiver {
    public final lvh a;

    public kvh(lvh lvhVar) {
        this.a = lvhVar;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
            lvh lvhVar = this.a;
            lvhVar.d(true, lvhVar.c);
            lvhVar.b = true;
        } else if (intent.getAction().equals("android.intent.action.SCREEN_ON")) {
            lvh lvhVar2 = this.a;
            lvhVar2.d(false, lvhVar2.c);
            lvhVar2.b = false;
        }
    }
}
