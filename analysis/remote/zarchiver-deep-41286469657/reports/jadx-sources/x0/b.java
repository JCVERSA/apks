package x0;

import android.database.ContentObserver;
import android.os.Handler;

public final class b extends ContentObserver {

    public final d.b f2249a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Handler handler, ru.zdevs.zarchiver.a aVar) {
        super(handler);
        this.f2249a = aVar;
    }

    @Override
    public final void onChange(boolean z2) {
        this.f2249a.c(null, false);
    }
}
