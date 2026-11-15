package defpackage;

import android.database.ContentObserver;
import android.os.Handler;

public final class lwi extends ContentObserver {
    public final gxi a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lwi(gxi gxiVar, Handler handler) {
        super(null);
        this.a = gxiVar;
    }

    @Override
    public final void onChange(boolean z) {
        this.a.e();
    }
}
