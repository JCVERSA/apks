package defpackage;

import android.database.ContentObserver;
import android.os.Handler;

public final class qsi extends ContentObserver {
    public qsi(Handler handler) {
        super(null);
    }

    @Override
    public final void onChange(boolean z) {
        iti.e.set(true);
    }
}
