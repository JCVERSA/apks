package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

public final class ekj extends Handler {
    public final gkj a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ekj(gkj gkjVar, Looper looper) {
        super(looper);
        this.a = gkjVar;
    }

    @Override
    public final void handleMessage(Message message) {
        gkj.d(this.a, message);
    }
}
