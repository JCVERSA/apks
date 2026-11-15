package b9;

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

public class o {

    private final Context f15646a;

    private final v8.d f15647b;

    private final c9.d f15648c;

    private final u f15649d;

    private final Executor f15650e;

    private final d9.a f15651f;

    private final e9.a f15652g;

    private final e9.a f15653h;

    private final c9.c f15654i;

    public o(Context context, v8.d dVar, c9.d dVar2, u uVar, Executor executor, d9.a aVar, e9.a aVar2, e9.a aVar3, c9.c cVar) {
        this.f15646a = context;
        this.f15647b = dVar;
        this.f15648c = dVar2;
        this.f15649d = uVar;
        this.f15650e = executor;
        this.f15651f = aVar;
        this.f15652g = aVar2;
        this.f15653h = aVar3;
        this.f15654i = cVar;
    }

    public Boolean l(com.google.android.datatransport.runtime.o oVar) {
        return Boolean.valueOf(this.f15648c.P(oVar));
    }

    public Iterable m(com.google.android.datatransport.runtime.o oVar) {
        return this.f15648c.Z(oVar);
    }

    public Object n(Iterable iterable, com.google.android.datatransport.runtime.o oVar, long j10) {
        this.f15648c.Q(iterable);
        this.f15648c.G(oVar, this.f15652g.getTime() + j10);
        return null;
    }

    public Object o(Iterable iterable) {
        this.f15648c.C(iterable);
        return null;
    }

    public Object p() {
        this.f15654i.d();
        return null;
    }

    public Object q(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            this.f15654i.j(((Integer) entry.getValue()).intValue(), LogEventDropped.Reason.INVALID_PAYLOD, (String) entry.getKey());
        }
        return null;
    }

    public Object r(com.google.android.datatransport.runtime.o oVar, long j10) {
        this.f15648c.G(oVar, this.f15652g.getTime() + j10);
        return null;
    }

    public Object s(com.google.android.datatransport.runtime.o oVar, int i10) {
        this.f15649d.a(oVar, i10 + 1);
        return null;
    }

    public void t(final com.google.android.datatransport.runtime.o oVar, final int i10, Runnable runnable) {
        try {
            try {
                d9.a aVar = this.f15651f;
                final c9.d dVar = this.f15648c;
                Objects.requireNonNull(dVar);
                aVar.b(new d9.a.InterfaceC0702a() {
                    @Override
                    public final Object execute() {
                        return Integer.valueOf(dVar.B());
                    }
                });
                if (k()) {
                    u(oVar, i10);
                } else {
                    this.f15651f.b(new d9.a.InterfaceC0702a() {
                        @Override
                        public final Object execute() {
                            return this.f15627a.s(oVar, i10);
                        }
                    });
                }
            } catch (SynchronizationException unused) {
                this.f15649d.a(oVar, i10 + 1);
            }
        } finally {
            runnable.run();
        }
    }

    public com.google.android.datatransport.runtime.i j(v8.k kVar) {
        d9.a aVar = this.f15651f;
        final c9.c cVar = this.f15654i;
        Objects.requireNonNull(cVar);
        return kVar.a(com.google.android.datatransport.runtime.i.a().i(this.f15652g.getTime()).o(this.f15653h.getTime()).n("GDT_CLIENT_METRICS").h(new com.google.android.datatransport.runtime.h(t8.c.b("proto"), ((x8.a) aVar.b(new d9.a.InterfaceC0702a() {
            @Override
            public final Object execute() {
                return cVar.h();
            }
        })).f())).d());
    }

    boolean k() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f15646a.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public BackendResponse u(final com.google.android.datatransport.runtime.o oVar, int i10) {
        BackendResponse backendResponseB;
        v8.k kVarA = this.f15647b.a(oVar.b());
        long jMax = 0;
        BackendResponse backendResponseE = BackendResponse.e(0L);
        while (true) {
            final long j10 = jMax;
            while (true) {
                if (!((Boolean) this.f15651f.b(new d9.a.InterfaceC0702a() {
                    @Override
                    public final Object execute() {
                        return this.f15630a.l(oVar);
                    }
                })).booleanValue()) {
                    this.f15651f.b(new d9.a.InterfaceC0702a() {
                        @Override
                        public final Object execute() {
                            return this.f15643a.r(oVar, j10);
                        }
                    });
                    return backendResponseE;
                }
                final Iterable iterable = (Iterable) this.f15651f.b(new d9.a.InterfaceC0702a() {
                    @Override
                    public final Object execute() {
                        return this.f15632a.m(oVar);
                    }
                });
                if (!iterable.iterator().hasNext()) {
                    return backendResponseE;
                }
                if (kVarA == null) {
                    y8.a.b("Uploader", "Unknown backend for %s, deleting event batch for it...", oVar);
                    backendResponseB = BackendResponse.a();
                } else {
                    ArrayList arrayList = new ArrayList();
                    Iterator it = iterable.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((c9.k) it.next()).b());
                    }
                    if (oVar.e()) {
                        arrayList.add(j(kVarA));
                    }
                    backendResponseB = kVarA.b(v8.e.a().b(arrayList).c(oVar.c()).a());
                }
                backendResponseE = backendResponseB;
                if (backendResponseE.c() == BackendResponse.Status.TRANSIENT_ERROR) {
                    this.f15651f.b(new d9.a.InterfaceC0702a() {
                        @Override
                        public final Object execute() {
                            return this.f15634a.n(iterable, oVar, j10);
                        }
                    });
                    this.f15649d.b(oVar, i10 + 1, true);
                    return backendResponseE;
                }
                this.f15651f.b(new d9.a.InterfaceC0702a() {
                    @Override
                    public final Object execute() {
                        return this.f15638a.o(iterable);
                    }
                });
                if (backendResponseE.c() == BackendResponse.Status.OK) {
                    break;
                }
                if (backendResponseE.c() == BackendResponse.Status.INVALID_PAYLOAD) {
                    final HashMap map = new HashMap();
                    Iterator it2 = iterable.iterator();
                    while (it2.hasNext()) {
                        String strN = ((c9.k) it2.next()).b().n();
                        if (map.containsKey(strN)) {
                            map.put(strN, Integer.valueOf(((Integer) map.get(strN)).intValue() + 1));
                        } else {
                            map.put(strN, 1);
                        }
                    }
                    this.f15651f.b(new d9.a.InterfaceC0702a() {
                        @Override
                        public final Object execute() {
                            return this.f15641a.q(map);
                        }
                    });
                }
            }
            jMax = Math.max(j10, backendResponseE.b());
            if (oVar.e()) {
                this.f15651f.b(new d9.a.InterfaceC0702a() {
                    @Override
                    public final Object execute() {
                        return this.f15640a.p();
                    }
                });
            }
        }
    }

    public void v(final com.google.android.datatransport.runtime.o oVar, final int i10, final Runnable runnable) {
        this.f15650e.execute(new Runnable() {
            @Override
            public final void run() {
                this.f15621a.t(oVar, i10, runnable);
            }
        });
    }
}
