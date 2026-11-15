package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

public class pzh extends Handler {
    public pzh(Looper looper) {
        super(looper);
        Looper.getMainLooper();
    }

    public void a(Message message) {
        super.dispatchMessage(message);
    }

    @Override
    public final void dispatchMessage(Message message) {
        a(message);
    }
}
