package androidx.browser.trusted;

import android.os.IBinder;

public class c {

    private final d.a f1897a;

    private c(d.a aVar) {
        this.f1897a = aVar;
    }

    static c a(IBinder iBinder) {
        d.a aVarX0 = iBinder == null ? null : d.a.AbstractBinderC0696a.X0(iBinder);
        if (aVarX0 == null) {
            return null;
        }
        return new c(aVarX0);
    }
}
