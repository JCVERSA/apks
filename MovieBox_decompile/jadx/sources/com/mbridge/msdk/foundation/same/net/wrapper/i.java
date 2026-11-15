package com.mbridge.msdk.foundation.same.net.wrapper;

import android.os.Handler;
import android.os.Looper;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.tracker.network.b0;
import com.mbridge.msdk.tracker.network.j;
import com.mbridge.msdk.tracker.network.q;
import com.mbridge.msdk.tracker.network.v;

public class i<T> implements j<T> {

    private final com.mbridge.msdk.foundation.same.net.b<T> f34677a;

    private final Handler f34678b = new Handler(Looper.getMainLooper());

    class a implements Runnable {

        final v f34679a;

        final q f34680b;

        a(v vVar, q qVar) {
            this.f34679a = vVar;
            this.f34680b = qVar;
        }

        @Override
        public void run() {
            try {
                if (i.this.f34677a != null) {
                    i.this.f34677a.onSuccess(i.this.a(this.f34679a, this.f34680b));
                }
            } catch (Exception e10) {
                o0.b("MBridgeRequestListenerWrapper", "onResponseSuccess error", e10);
            }
        }
    }

    class b implements Runnable {

        final v f34682a;

        final q f34683b;

        b(v vVar, q qVar) {
            this.f34682a = vVar;
            this.f34683b = qVar;
        }

        @Override
        public void run() {
            try {
                if (i.this.f34677a != null) {
                    i.this.f34677a.onError(i.this.a(this.f34682a.f37861c, this.f34683b));
                }
            } catch (Exception e10) {
                o0.b("MBridgeRequestListenerWrapper", "onResponseError error", e10);
            }
        }
    }

    public i(com.mbridge.msdk.foundation.same.net.b<T> bVar) {
        this.f34677a = bVar;
    }

    @Override
    public void b(com.mbridge.msdk.tracker.network.h<T> hVar, v<T> vVar, q qVar) {
        o0.a("MBridgeRequestListenerWrapper", "onResponseError: " + vVar.f37861c.a() + " " + vVar.f37861c.getMessage());
        this.f34678b.post(new b(vVar, qVar));
    }

    public com.mbridge.msdk.foundation.same.net.e a(v<T> vVar, q qVar) {
        if (vVar == null) {
            return null;
        }
        return com.mbridge.msdk.foundation.same.net.e.a(vVar.f37859a, new com.mbridge.msdk.foundation.same.net.toolbox.a(qVar.f37783a, qVar.f37784b, qVar.f37786d));
    }

    @Override
    public void a(com.mbridge.msdk.tracker.network.h<T> hVar, v<T> vVar, q qVar) {
        o0.a("MBridgeRequestListenerWrapper", "onResponseSuccess: " + vVar.f37859a);
        this.f34678b.post(new a(vVar, qVar));
    }

    public com.mbridge.msdk.foundation.same.net.exception.a a(b0 b0Var, q qVar) {
        com.mbridge.msdk.foundation.same.net.toolbox.a aVar;
        if (b0Var == null) {
            return null;
        }
        if (qVar != null) {
            aVar = new com.mbridge.msdk.foundation.same.net.toolbox.a(qVar.f37783a, qVar.f37784b, qVar.f37786d);
        } else {
            aVar = new com.mbridge.msdk.foundation.same.net.toolbox.a(0, null, null);
        }
        if (b0Var.a() == 0) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(2, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 1) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(6, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 2) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(8, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 4) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(880041, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 5) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(8, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 6) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(15, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 7) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(7, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 8) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(10, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 9) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(4, aVar, b0Var.getMessage());
        }
        return new com.mbridge.msdk.foundation.same.net.exception.a(2, aVar, b0Var.getMessage());
    }
}
