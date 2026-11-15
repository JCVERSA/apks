package com.cloud.hisavana.sdk.common.tranmeasure;

import android.view.View;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import defpackage.ikd;
import defpackage.ja1;
import java.util.concurrent.CopyOnWriteArrayList;

public class e {
    public final CopyOnWriteArrayList a = new CopyOnWriteArrayList();
    public final int b = 10;

    public class a implements Runnable {
        final Object a;
        final View b;
        final d.b c;

        public a(Object obj, View view, d.b bVar) {
            this.a = obj;
            this.b = view;
            this.c = bVar;
        }

        @Override
        public void run() {
            e.c().b(this.a).b(this.b, this.c);
        }
    }

    public static class b {
        public static final e a = new e();
    }

    public static e c() {
        return b.a;
    }

    public final d b(Object obj) {
        for (d dVar : this.a) {
            if (dVar != null && dVar.d(obj)) {
                ikd.b().d(ja1.MEASURE_TAG, "MeasureSessionManager have existed session");
                return dVar;
            }
        }
        ikd.b().d(ja1.MEASURE_TAG, "MeasureSession create new session");
        return new d(obj);
    }

    public void d(d dVar) {
        ikd.b().d(ja1.MEASURE_TAG, "registerSession(注册一个 需要监控的 Session)");
        if (dVar == null || this.a.contains(dVar)) {
            return;
        }
        this.a.add(dVar);
        if (this.a.size() > 10) {
            this.a.remove(0);
        }
        if (h()) {
            Monitor.getInstance().start();
        }
    }

    public void e(Object obj, View view, d.b bVar) {
        if (obj == null || view == null || bVar == null) {
            ikd.b().e(ja1.MEASURE_TAG, "registerView: key or adView or listener is null");
        } else {
            HSScopeHelper.a.j(new a(obj, view, bVar));
        }
    }

    public void f(d dVar) {
        ikd.b().d(ja1.MEASURE_TAG, "unregisterSession(注销监控)");
        if (dVar != null) {
            this.a.remove(dVar);
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
        for (d dVar : this.a) {
            if (dVar != null && dVar.d(obj)) {
                ikd.b().d(ja1.MEASURE_TAG, "got existed session");
                dVar.a();
                return;
            }
        }
    }

    public final boolean h() {
        return this.a.size() > 0;
    }

    public void i() {
        for (d dVar : this.a) {
            if (dVar != null) {
                dVar.j();
            }
        }
    }
}
