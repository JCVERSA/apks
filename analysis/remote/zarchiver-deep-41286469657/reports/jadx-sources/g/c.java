package g;

import android.os.Handler;
import android.os.Message;
import android.view.View;

public final class c implements Handler.Callback {

    public final d f804a;

    public c(d dVar) {
        this.f804a = dVar;
    }

    @Override
    public final boolean handleMessage(Message message) {
        d dVar;
        View.OnLongClickListener onLongClickListener;
        if (message.what == 1 && (onLongClickListener = (dVar = this.f804a).f824g0) != null) {
            dVar.K = 0;
            d.b(dVar, onLongClickListener);
            dVar.performLongClick();
            d.c(dVar);
        }
        return true;
    }
}
