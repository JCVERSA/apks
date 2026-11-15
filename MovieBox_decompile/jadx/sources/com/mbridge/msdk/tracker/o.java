package com.mbridge.msdk.tracker;

import android.util.Log;
import com.mbridge.msdk.tracker.network.b0;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

class o {

    private r f37863a;

    private final int f37864b;

    private final p f37865c;

    private final w f37866d;

    private final int f37867e;

    private com.mbridge.msdk.tracker.network.u f37868f;

    private final Executor f37869g;

    class a implements ThreadFactory {
        a() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "MBridgeReportResponseThread");
        }
    }

    private static final class b implements com.mbridge.msdk.tracker.network.v.a {

        private final r f37871a;

        private final t f37872b;

        public b(r rVar, t tVar) {
            this.f37871a = rVar;
            this.f37872b = tVar;
        }

        @Override
        public void a(b0 b0Var) {
            int iA;
            int iB;
            String message;
            if (y.a(this.f37871a)) {
                if (b0Var != null) {
                    try {
                        iA = b0Var.a();
                        iB = b0Var.b();
                        message = b0Var.getMessage();
                    } catch (Exception e10) {
                        if (com.mbridge.msdk.tracker.a.f37664a) {
                            Log.e("TrackManager", "onErrorResponse error", e10);
                            return;
                        }
                        return;
                    }
                } else {
                    iB = 0;
                    message = "";
                    iA = 0;
                }
                this.f37871a.a(this.f37872b, 0, String.format("volleyError:%s,responseCode:%s,errorMessage:%s", Integer.valueOf(iA), Integer.valueOf(iB), message));
            }
        }
    }

    private static final class c implements com.mbridge.msdk.tracker.network.v.b {

        private final r f37873a;

        private final t f37874b;

        public c(r rVar, t tVar) {
            this.f37873a = rVar;
            this.f37874b = tVar;
        }

        @Override
        public void a(Object obj) {
            if (y.a(this.f37873a)) {
                try {
                    this.f37873a.a(this.f37874b);
                } catch (Exception e10) {
                    if (com.mbridge.msdk.tracker.a.f37664a) {
                        Log.e("TrackManager", "onResponse error", e10);
                    }
                }
            }
        }
    }

    public o(int i10, p pVar, w wVar, int i11) {
        this.f37864b = i10;
        this.f37865c = pVar;
        this.f37866d = wVar;
        this.f37867e = i11;
        this.f37869g = new ThreadPoolExecutor(i10, i10, 20L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new a(), new ThreadPoolExecutor.DiscardPolicy());
    }

    public void a(r rVar) {
        this.f37863a = rVar;
    }

    public void b(t tVar, Map<String, String> map, boolean z10) {
        if (y.b(map)) {
            r rVar = this.f37863a;
            if (rVar != null) {
                try {
                    rVar.a(tVar, 0, "params is null");
                    return;
                } catch (Exception e10) {
                    if (com.mbridge.msdk.tracker.a.f37664a) {
                        Log.e("TrackManager", "send error", e10);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        try {
            a();
            this.f37868f.a(a(tVar, map, z10));
        } catch (Exception e11) {
            if (com.mbridge.msdk.tracker.a.f37664a) {
                Log.e("TrackManager", "send error", e11);
            }
            if (y.a(this.f37863a)) {
                this.f37863a.a(tVar, 0, e11.getMessage());
            }
        }
    }

    private v<Object> a(t tVar, Map<String, String> map, boolean z10) {
        v<Object> vVar = this.f37867e == 1 ? new v<>(this.f37865c.c(), 1, this.f37865c.a()) : new v<>(this.f37865c.c(), 1);
        vVar.a(map);
        vVar.a(false);
        vVar.c(true);
        vVar.b(true);
        vVar.a(this.f37866d);
        vVar.a(z10 ? com.mbridge.msdk.tracker.network.t.a.HIGH : com.mbridge.msdk.tracker.network.t.a.NORMAL);
        vVar.a((com.mbridge.msdk.tracker.network.v.b<Object>) new c(this.f37863a, tVar));
        vVar.a((com.mbridge.msdk.tracker.network.v.a) new b(this.f37863a, tVar));
        return vVar;
    }

    private void a() {
        if (y.a(this.f37868f)) {
            return;
        }
        com.mbridge.msdk.tracker.network.u uVarA = com.mbridge.msdk.tracker.network.toolbox.o.a(new com.mbridge.msdk.tracker.network.toolbox.b(this.f37865c.b()), new com.mbridge.msdk.tracker.network.f(this.f37869g), this.f37864b, null);
        this.f37868f = uVarA;
        uVarA.b();
    }
}
