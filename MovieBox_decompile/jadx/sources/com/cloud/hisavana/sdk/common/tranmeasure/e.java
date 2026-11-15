package com.cloud.hisavana.sdk.common.tranmeasure;

import android.view.View;
import com.cloud.hisavana.sdk.b4;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.util.concurrent.CopyOnWriteArrayList;

public class e {

    private final CopyOnWriteArrayList f21535a = new CopyOnWriteArrayList();

    private final int f21536b = 10;

    class a implements Runnable {

        final Object f21537a;

        final View f21538b;

        final d.b f21539c;

        a(Object obj, View view, d.b bVar) {
            this.f21537a = obj;
            this.f21538b = view;
            this.f21539c = bVar;
        }

        @Override
        public void run() {
            e.c().b(this.f21537a).b(this.f21538b, this.f21539c);
        }
    }

    private static class b {

        private static final e f21541a = new e();
    }

    public d b(Object obj) {
        for (d dVar : this.f21535a) {
            if (dVar != null && dVar.d(obj)) {
                b4.b().d("ssp_measure", "MeasureSessionManager have existed session");
                return dVar;
            }
        }
        b4.b().d("ssp_measure", "MeasureSession create new session");
        return new d(obj);
    }

    public static e c() {
        return b.f21541a;
    }

    private boolean h() {
        return this.f21535a.size() > 0;
    }

    protected void d(d dVar) {
        b4.b().d("ssp_measure", "registerSession(注册一个 需要监控的 Session)");
        if (dVar == null || this.f21535a.contains(dVar)) {
            return;
        }
        this.f21535a.add(dVar);
        if (this.f21535a.size() > 10) {
            this.f21535a.remove(0);
        }
        if (h()) {
            Monitor.getInstance().start();
        }
    }

    public void e(Object obj, View view, d.b bVar) {
        if (obj == null || view == null || bVar == null) {
            b4.b().e("ssp_measure", "registerView: key or adView or listener is null");
        } else {
            HSScopeHelper.f22503a.e(new a(obj, view, bVar));
        }
    }

    protected void f(d dVar) {
        b4.b().d("ssp_measure", "unregisterSession(注销监控)");
        if (dVar != null) {
            this.f21535a.remove(dVar);
        }
        if (h()) {
            return;
        }
        Monitor.getInstance().end();
    }

    public void g(Object obj) {
        if (obj == null) {
            return;
        }
        for (d dVar : this.f21535a) {
            if (dVar != null && dVar.d(obj)) {
                b4.b().d("ssp_measure", "got existed session");
                dVar.a();
                return;
            }
        }
    }

    protected void i() {
        for (d dVar : this.f21535a) {
            if (dVar != null) {
                dVar.j();
            }
        }
    }
}
