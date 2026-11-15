package com.google.android.gms.common.api.internal;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.collection.ArraySet;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.TelemetryData;
import defpackage.e0e;
import defpackage.g1e;
import defpackage.ia2;
import defpackage.m0e;
import defpackage.n0e;
import defpackage.o0e;
import defpackage.p0e;
import defpackage.pea;
import defpackage.pzd;
import defpackage.q1e;
import defpackage.qea;
import defpackage.qx9;
import defpackage.s2e;
import defpackage.ti4;
import defpackage.ubc;
import defpackage.uv8;
import defpackage.xd;
import defpackage.xda;
import defpackage.yda;
import defpackage.z1e;
import defpackage.zda;
import defpackage.zi4;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

public class c implements Handler.Callback {
    public static final Status q = new Status(4, "Sign-out occurred while this API call was in progress.");
    public static final Status r = new Status(4, "The user must be signed in to make this API call.");
    public static final Object s = new Object();
    public static c t;
    public TelemetryData d;
    public qea e;
    public final Context f;
    public final zi4 g;
    public final z1e h;
    public final Handler o;
    public volatile boolean p;
    public long b = 10000;
    public boolean c = false;
    public final AtomicInteger i = new AtomicInteger(1);
    public final AtomicInteger j = new AtomicInteger(0);
    public final Map k = new ConcurrentHashMap(5, 0.75f, 1);
    public pzd l = null;
    public final Set m = new ArraySet();
    public final Set n = new ArraySet();

    public c(Context context, Looper looper, zi4 zi4Var) {
        this.p = true;
        this.f = context;
        s2e s2eVar = new s2e(looper, this);
        this.o = s2eVar;
        this.g = zi4Var;
        this.h = new z1e(zi4Var);
        if (ia2.a(context)) {
            this.p = false;
        }
        s2eVar.sendMessage(s2eVar.obtainMessage(6));
    }

    public static void a() {
        synchronized (s) {
            try {
                c cVar = t;
                if (cVar != null) {
                    cVar.j.incrementAndGet();
                    Handler handler = cVar.o;
                    handler.sendMessageAtFrontOfQueue(handler.obtainMessage(10));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Status g(xd xdVar, ConnectionResult connectionResult) {
        return new Status(connectionResult, "API: " + xdVar.b() + " is not available on this device. Connection failed with: " + String.valueOf(connectionResult));
    }

    public static c u(Context context) {
        c cVar;
        synchronized (s) {
            try {
                if (t == null) {
                    t = new c(context.getApplicationContext(), ti4.b().getLooper(), zi4.o());
                }
                cVar = t;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVar;
    }

    public final void C(com.google.android.gms.common.api.b bVar, int i, b bVar2) {
        this.o.sendMessage(this.o.obtainMessage(4, new o0e(new g1e(i, bVar2), this.j.get(), bVar)));
    }

    public final void D(com.google.android.gms.common.api.b bVar, int i, yda ydaVar, zda zdaVar, qx9 qx9Var) {
        k(zdaVar, ydaVar.d(), bVar);
        this.o.sendMessage(this.o.obtainMessage(4, new o0e(new q1e(i, ydaVar, zdaVar, qx9Var), this.j.get(), bVar)));
    }

    public final void E(MethodInvocation methodInvocation, int i, long j, int i2) {
        this.o.sendMessage(this.o.obtainMessage(18, new n0e(methodInvocation, i, j, i2)));
    }

    public final void F(ConnectionResult connectionResult, int i) {
        if (f(connectionResult, i)) {
            return;
        }
        Handler handler = this.o;
        handler.sendMessage(handler.obtainMessage(5, i, 0, connectionResult));
    }

    public final void G() {
        Handler handler = this.o;
        handler.sendMessage(handler.obtainMessage(3));
    }

    public final void H(com.google.android.gms.common.api.b bVar) {
        Handler handler = this.o;
        handler.sendMessage(handler.obtainMessage(7, bVar));
    }

    public final void b(pzd pzdVar) {
        synchronized (s) {
            try {
                if (this.l != pzdVar) {
                    this.l = pzdVar;
                    this.m.clear();
                }
                this.m.addAll(pzdVar.t());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(pzd pzdVar) {
        synchronized (s) {
            try {
                if (this.l == pzdVar) {
                    this.l = null;
                    this.m.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean e() {
        if (this.c) {
            return false;
        }
        RootTelemetryConfiguration rootTelemetryConfigurationA = uv8.b().a();
        if (rootTelemetryConfigurationA != null && !rootTelemetryConfigurationA.getMethodInvocationTelemetryEnabled()) {
            return false;
        }
        int iA = this.h.a(this.f, 203400000);
        return iA == -1 || iA == 0;
    }

    public final boolean f(ConnectionResult connectionResult, int i) {
        return this.g.y(this.f, connectionResult, i);
    }

    public final m h(com.google.android.gms.common.api.b bVar) {
        Map map = this.k;
        xd xdVarC = bVar.c();
        m mVar = (m) map.get(xdVarC);
        if (mVar == null) {
            mVar = new m(this, bVar);
            this.k.put(xdVarC, mVar);
        }
        if (mVar.a()) {
            this.n.add(xdVarC);
        }
        mVar.B();
        return mVar;
    }

    /* JADX WARN: Code duplicated, block: B:61:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:63:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:64:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:65:0x01ff  */
    /* JADX WARN: Instruction removed from duplicated block: B:63:0x01c1, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:65:0x01ff, please report this as an issue */
    @Override
    public final boolean handleMessage(Message message) {
        int i = message.what;
        m mVar = null;
        switch (i) {
            case 1:
                this.b = true == ((Boolean) message.obj).booleanValue() ? 10000L : 300000L;
                this.o.removeMessages(12);
                for (xd xdVar : this.k.keySet()) {
                    Handler handler = this.o;
                    handler.sendMessageDelayed(handler.obtainMessage(12, xdVar), this.b);
                }
                return true;
            case 2:
                ubc.a(message.obj);
                throw null;
            case 3:
                for (m mVar2 : this.k.values()) {
                    mVar2.A();
                    mVar2.B();
                }
                return true;
            case 4:
            case 8:
            case 13:
                o0e o0eVar = (o0e) message.obj;
                m mVarH = (m) this.k.get(o0eVar.c.c());
                if (mVarH == null) {
                    mVarH = h(o0eVar.c);
                }
                if (!mVarH.a() || this.j.get() == o0eVar.b) {
                    mVarH.C(o0eVar.a);
                } else {
                    o0eVar.a.a(q);
                    mVarH.H();
                }
                return true;
            case 5:
                int i2 = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                for (m mVar3 : this.k.values()) {
                    if (mVar3.p() == i2) {
                        mVar = mVar3;
                        if (mVar != null) {
                            Log.wtf("GoogleApiManager", "Could not find API instance " + i2 + " while trying to fail enqueued calls.", new Exception());
                        } else if (connectionResult.getErrorCode() == 13) {
                            mVar.e(new Status(17, "Error resolution was canceled by the user, original error message: " + this.g.f(connectionResult.getErrorCode()) + ": " + connectionResult.getErrorMessage()));
                        } else {
                            mVar.e(g(mVar.d, connectionResult));
                        }
                        return true;
                    }
                }
                if (mVar != null) {
                    Log.wtf("GoogleApiManager", "Could not find API instance " + i2 + " while trying to fail enqueued calls.", new Exception());
                } else if (connectionResult.getErrorCode() == 13) {
                    mVar.e(new Status(17, "Error resolution was canceled by the user, original error message: " + this.g.f(connectionResult.getErrorCode()) + ": " + connectionResult.getErrorMessage()));
                } else {
                    mVar.e(g(mVar.d, connectionResult));
                }
                return true;
            case 6:
                if (this.f.getApplicationContext() instanceof Application) {
                    a.c((Application) this.f.getApplicationContext());
                    a.b().a(new k(this));
                    if (!a.b().e(true)) {
                        this.b = 300000L;
                    }
                }
                return true;
            case 7:
                h((com.google.android.gms.common.api.b) message.obj);
                return true;
            case 9:
                if (this.k.containsKey(message.obj)) {
                    ((m) this.k.get(message.obj)).G();
                }
                return true;
            case 10:
                Iterator it = this.n.iterator();
                while (it.hasNext()) {
                    m mVar4 = (m) this.k.remove((xd) it.next());
                    if (mVar4 != null) {
                        mVar4.H();
                    }
                }
                this.n.clear();
                return true;
            case 11:
                if (this.k.containsKey(message.obj)) {
                    ((m) this.k.get(message.obj)).I();
                }
                return true;
            case 12:
                if (this.k.containsKey(message.obj)) {
                    ((m) this.k.get(message.obj)).b();
                }
                return true;
            case 14:
                ubc.a(message.obj);
                throw null;
            case 15:
                e0e e0eVar = (e0e) message.obj;
                if (this.k.containsKey(e0eVar.a)) {
                    m.y((m) this.k.get(e0eVar.a), e0eVar);
                }
                return true;
            case 16:
                e0e e0eVar2 = (e0e) message.obj;
                if (this.k.containsKey(e0eVar2.a)) {
                    m.z((m) this.k.get(e0eVar2.a), e0eVar2);
                }
                return true;
            case 17:
                j();
                return true;
            case 18:
                n0e n0eVar = (n0e) message.obj;
                if (n0eVar.c == 0) {
                    i().b(new TelemetryData(n0eVar.b, Arrays.asList(n0eVar.a)));
                } else {
                    TelemetryData telemetryData = this.d;
                    if (telemetryData != null) {
                        List listZab = telemetryData.zab();
                        if (telemetryData.zaa() != n0eVar.b || (listZab != null && listZab.size() >= n0eVar.d)) {
                            this.o.removeMessages(17);
                            j();
                        } else {
                            this.d.zac(n0eVar.a);
                        }
                    }
                    if (this.d == null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(n0eVar.a);
                        this.d = new TelemetryData(n0eVar.b, arrayList);
                        Handler handler2 = this.o;
                        handler2.sendMessageDelayed(handler2.obtainMessage(17), n0eVar.c);
                    }
                }
                return true;
            case 19:
                this.c = false;
                return true;
            default:
                Log.w("GoogleApiManager", "Unknown message id: " + i);
                return false;
        }
    }

    public final qea i() {
        if (this.e == null) {
            this.e = pea.a(this.f);
        }
        return this.e;
    }

    public final void j() {
        TelemetryData telemetryData = this.d;
        if (telemetryData != null) {
            if (telemetryData.zaa() > 0 || e()) {
                i().b(telemetryData);
            }
            this.d = null;
        }
    }

    public final void k(zda zdaVar, int i, com.google.android.gms.common.api.b bVar) {
        m0e m0eVarA;
        if (i == 0 || (m0eVarA = m0e.a(this, i, bVar.c())) == null) {
            return;
        }
        xda xdaVarA = zdaVar.a();
        final Handler handler = this.o;
        handler.getClass();
        xdaVarA.c(new Executor() {
            @Override
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        }, m0eVarA);
    }

    public final int l() {
        return this.i.getAndIncrement();
    }

    public final m t(xd xdVar) {
        return (m) this.k.get(xdVar);
    }

    public final xda w(com.google.android.gms.common.api.b bVar, f fVar, h hVar, Runnable runnable) {
        zda zdaVar = new zda();
        k(zdaVar, fVar.e(), bVar);
        this.o.sendMessage(this.o.obtainMessage(8, new o0e(new q(new p0e(fVar, hVar, runnable), zdaVar), this.j.get(), bVar)));
        return zdaVar.a();
    }

    public final xda x(com.google.android.gms.common.api.b bVar, d.a aVar, int i) {
        zda zdaVar = new zda();
        k(zdaVar, i, bVar);
        this.o.sendMessage(this.o.obtainMessage(13, new o0e(new r(aVar, zdaVar), this.j.get(), bVar)));
        return zdaVar.a();
    }
}
