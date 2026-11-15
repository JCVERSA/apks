package defpackage;

import android.os.Looper;
import android.os.Message;

public final class aae extends llh {
    public final iw8 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aae(iw8 iw8Var, Looper looper) {
        super(looper);
        this.b = iw8Var;
    }

    @Override
    public final void handleMessage(Message message) {
        iw8.g(this.b, message);
    }
}
