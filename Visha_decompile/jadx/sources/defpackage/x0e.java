package defpackage;

import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

public final class x0e extends s2e {
    public final Context b;
    public final zi4 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x0e(zi4 zi4Var, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.c = zi4Var;
        this.b = context.getApplicationContext();
    }

    @Override
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            Log.w("GoogleApiAvailability", "Don't know how to handle this message: " + i);
            return;
        }
        zi4 zi4Var = this.c;
        int iH = zi4Var.h(this.b);
        if (zi4Var.k(iH)) {
            this.c.q(this.b, iH);
        }
    }
}
