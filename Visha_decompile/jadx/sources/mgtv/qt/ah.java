package mgtv.qt;

import android.app.Application;
import defpackage.hld;
import defpackage.s4d;

final class ah implements Runnable {
    private Application a;
    private s4d b;

    public ah(Application application, s4d s4dVar) {
        this.a = application;
        this.b = s4dVar;
    }

    @Override
    public final void run() {
        c.h(hld.J(this.a));
        hld.i(this.a);
    }
}
