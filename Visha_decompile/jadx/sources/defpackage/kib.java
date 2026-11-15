package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

public class kib {
    public final Context a;
    public final b50 b;
    public final ge3 c;
    public final fpc d;
    public final Executor e;
    public final e8a f;
    public final hy0 g;
    public final hy0 h;
    public final xx0 i;

    public kib(Context context, b50 b50Var, ge3 ge3Var, fpc fpcVar, Executor executor, e8a e8aVar, hy0 hy0Var, hy0 hy0Var2, xx0 xx0Var) {
        this.a = context;
        this.b = b50Var;
        this.c = ge3Var;
        this.d = fpcVar;
        this.e = executor;
        this.f = e8aVar;
        this.g = hy0Var;
        this.h = hy0Var2;
        this.i = xx0Var;
    }

    public xd3 j(z8b z8bVar) {
        e8a e8aVar = this.f;
        final xx0 xx0Var = this.i;
        Objects.requireNonNull(xx0Var);
        return z8bVar.b(xd3.a().i(this.g.a()).k(this.h.a()).j("GDT_CLIENT_METRICS").h(new ba3(ka3.b("proto"), ((zx0) e8aVar.a(new e8a.a() {
            @Override
            public final Object execute() {
                return xx0Var.d();
            }
        })).f())).d());
    }

    public boolean k() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.a.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public final Boolean l(a9b a9bVar) {
        return Boolean.valueOf(this.c.B(a9bVar));
    }

    public final Iterable m(a9b a9bVar) {
        return this.c.w(a9bVar);
    }

    public final Object n(Iterable iterable, a9b a9bVar, long j) {
        this.c.C(iterable);
        this.c.t(a9bVar, this.g.a() + j);
        return null;
    }

    public final Object o(Iterable iterable) {
        this.c.v(iterable);
        return null;
    }

    public final Object p() {
        this.i.b();
        return null;
    }

    public final Object q(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            this.i.e(((Integer) entry.getValue()).intValue(), LogEventDropped.Reason.INVALID_PAYLOD, (String) entry.getKey());
        }
        return null;
    }

    public final Object r(a9b a9bVar, long j) {
        this.c.t(a9bVar, this.g.a() + j);
        return null;
    }

    public final Object s(a9b a9bVar, int i) {
        this.d.a(a9bVar, i + 1);
        return null;
    }

    public final void t(final a9b a9bVar, final int i, Runnable runnable) {
        try {
            try {
                e8a e8aVar = this.f;
                final ge3 ge3Var = this.c;
                Objects.requireNonNull(ge3Var);
                e8aVar.a(new e8a.a() {
                    @Override
                    public final Object execute() {
                        return Integer.valueOf(ge3Var.q());
                    }
                });
                if (k()) {
                    u(a9bVar, i);
                } else {
                    this.f.a(new e8a.a() {
                        @Override
                        public final Object execute() {
                            return this.a.s(a9bVar, i);
                        }
                    });
                }
            } catch (SynchronizationException unused) {
                this.d.a(a9bVar, i + 1);
            }
        } finally {
            runnable.run();
        }
    }

    public BackendResponse u(final a9b a9bVar, int i) {
        BackendResponse backendResponseA;
        z8b z8bVar = this.b.get(a9bVar.b());
        long jMax = 0;
        BackendResponse backendResponseE = BackendResponse.e(0L);
        while (true) {
            final long j = jMax;
            while (true) {
                if (!((Boolean) this.f.a(new e8a.a() {
                    @Override
                    public final Object execute() {
                        return this.a.l(a9bVar);
                    }
                })).booleanValue()) {
                    this.f.a(new e8a.a() {
                        @Override
                        public final Object execute() {
                            return this.a.r(a9bVar, j);
                        }
                    });
                    return backendResponseE;
                }
                final Iterable iterable = (Iterable) this.f.a(new e8a.a() {
                    @Override
                    public final Object execute() {
                        return this.a.m(a9bVar);
                    }
                });
                if (!iterable.iterator().hasNext()) {
                    return backendResponseE;
                }
                if (z8bVar == null) {
                    vq5.a("Uploader", "Unknown backend for %s, deleting event batch for it...", a9bVar);
                    backendResponseA = BackendResponse.a();
                } else {
                    ArrayList arrayList = new ArrayList();
                    Iterator it = iterable.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((v08) it.next()).b());
                    }
                    if (a9bVar.e()) {
                        arrayList.add(j(z8bVar));
                    }
                    backendResponseA = z8bVar.a(c50.a().b(arrayList).c(a9bVar.c()).a());
                }
                backendResponseE = backendResponseA;
                if (backendResponseE.c() == BackendResponse.Status.TRANSIENT_ERROR) {
                    this.f.a(new e8a.a() {
                        @Override
                        public final Object execute() {
                            return this.a.n(iterable, a9bVar, j);
                        }
                    });
                    this.d.b(a9bVar, i + 1, true);
                    return backendResponseE;
                }
                this.f.a(new e8a.a() {
                    @Override
                    public final Object execute() {
                        return this.a.o(iterable);
                    }
                });
                if (backendResponseE.c() == BackendResponse.Status.OK) {
                    break;
                }
                if (backendResponseE.c() == BackendResponse.Status.INVALID_PAYLOAD) {
                    final HashMap map = new HashMap();
                    Iterator it2 = iterable.iterator();
                    while (it2.hasNext()) {
                        String strJ = ((v08) it2.next()).b().j();
                        if (map.containsKey(strJ)) {
                            map.put(strJ, Integer.valueOf(((Integer) map.get(strJ)).intValue() + 1));
                        } else {
                            map.put(strJ, 1);
                        }
                    }
                    this.f.a(new e8a.a() {
                        @Override
                        public final Object execute() {
                            return this.a.q(map);
                        }
                    });
                }
            }
            jMax = Math.max(j, backendResponseE.b());
            if (a9bVar.e()) {
                this.f.a(new e8a.a() {
                    @Override
                    public final Object execute() {
                        return this.a.p();
                    }
                });
            }
        }
    }

    public void v(final a9b a9bVar, final int i, final Runnable runnable) {
        this.e.execute(new Runnable() {
            @Override
            public final void run() {
                this.b.t(a9bVar, i, runnable);
            }
        });
    }
}
