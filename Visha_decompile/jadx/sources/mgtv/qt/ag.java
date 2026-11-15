package mgtv.qt;

import android.app.Application;
import defpackage.v4d;

final class ag implements Runnable {
    private Application a;

    public ag(Application application) {
        this.a = application;
    }

    @Override
    public final void run() {
        try {
            System.currentTimeMillis();
            c.e(this.a);
            v4d.a(this.a);
            c.j(this.a);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
